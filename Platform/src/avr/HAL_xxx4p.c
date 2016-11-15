/*

 * Copyright 2009 Neuron Robotics, LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 *
 */
#include "Bowler/Bowler.h"
#include "arch/AVR/BowlerConfig.h"
//#include "reg_structs.h"
//#include <util/delay.h>
//#include <avr/io.h>
//#include <avr/interrupt.h>
//#include <string.h>
//#include <avr/pgmspace.h>
//#include "Bowler/Debug.h"
//#  include <avr/iom644p.h>

boolean okToPrint(Print_Level l);

#define comBuffSize (FullPacketDataSize+4+_BowlerHeaderSize)

static uint8_t privateRXCom[comBuffSize];
static BYTE_FIFO_STORAGE store;
static uint64_t TimerOFcount=0;
static uint32_t TimerOFcountUpper=0;
//static uint32_t currentTimer=0;
static uint8_t err;
static uint8_t tmp;

boolean GetBowlerPacket_arch(BowlerPacket * Packet){
	return GetBowlerPacket(Packet,&store);
}

/**
 * send the array out the connection
 */
uint16_t putStream(uint8_t *packet,uint16_t size){
	uint16_t i;
	for (i=0;i<size;i++){
		WriteAVRUART0(packet[i]);
	}
	return i;
}
/**
 * get the time in ms
 */
float getMs(void){
	float upper = (((float)TimerOFcountUpper)*((float)4294967294ul))/18.0;
	float ret;
	do{
		ret = ((((float)GetTimeTicks())/18.0)+upper)/128;
		if(isnan(ret)){
			println_E("Timer NaN, recalculating..");
		}
	}while(isnan(ret));

	return ret;
}
/**
 * send this char to the print terminal
 */
void putCharDebug(char c){
	WriteAVRUART1(c);

	//return true; 
}
/**
 * Start the scheduler
 */
void startScheduler(void){
	TimerOFcount=0;
	TCCR1Abits._WGM =0x00;// Normal , 0xffff top, 0x0000 bottom
	TCCR1Bbits._CS = 2;//  value CLslk I/O/8 (From prescaler)
	TIMSK1bits._TOIE1=1;
}


void serial_init(unsigned int bittimer);


/**
 * Private helpers
 */
uint64_t GetTimeTicks(void){
	return (uint64_t) ((TimerOFcount)+TCNT1);
}

void updateTimer(uint64_t value){
	TimerOFcount+=value;
}

ISR(TIMER1_OVF_vect){//timer 1 overflow interrupt

	//TCCR1Bbits._CS=0;// stop the clock
	//FlagBusy_IO=1;
	updateTimer(0xffff);
	TCNT1 = 0; // re-load the state value
	//EndCritical();
	//TCCR1Bbits._CS = 2;//  value CLslk I/O/8 (From prescaler)
	//FlagBusy_IO=0;
}


// Communication HAL

/**
 * Public functions, must be filled
 */
void AVR_Bowler_HAL_Init(void){
	StartCritical();
	//serial_init( (( F_CPU /INTERNAL_BAUD / 16 ) - 1));
	serial_init( INTERNAL_BAUD_AVR );
#if defined(DEBUG)
	EnableDebugTerminal();
#endif
	//print("com:");
	InitByteFifo(&store,privateRXCom,comBuffSize);
	InitFlagPins();
}
void WriteAVRUART0(uint8_t val){
	UCSR0Bbits._TXEN0 = 1;
	while(FlagAsync  == 0 ); // Wait for controller to be ready
	while ((UCSR0A & (1<<UDRE0)) == 0 );
	UDR0 = val;
	_delay_us(UARTDELAY);
}

void WriteAVRUART1(uint8_t val){
	UCSR1Bbits._TXEN1 = 1;
	while (UCSR1Abits._UDRE1 == 0  );
	UDR1 = val;
	_delay_us(UARTDELAY);
}


#define timerSpacer 5

void fixTimers(int currentTimerLocal){
	/*
	 * When an interrupt occurs, the Global Interrupt Enable I-bit is cleared and all interrupts are dis-
	 * abled. The user software can write logic one to the I-bit to enable nested interrupts.
	 */
	EndCritical();
	int after = TCNT1;
	//

	if((currentTimerLocal <= OCR1B && after >= OCR1B)){
		// OCR1B detect
		OCR1B = after+timerSpacer;
		//println_E("B");p_int_E(after -currentTimerLocal-(2*timerSpacer) );
		return;
	}
	if((currentTimerLocal <= OCR1A && after >= OCR1A)){
		// OCR1A detect
		 OCR1A = after+timerSpacer;

		//println_E("A");p_int_E(after -currentTimerLocal-(2*timerSpacer) );
		return;
	}
}


/**
 * Private helpers
 */

#define UART_ON (  _BV(RXEN0) | _BV(TXEN0)  )
ISR(USART0_RX_vect){
	//currentTimer = TCNT1;
	UCSR0Bbits._RXCIE0=0;
	//fixTimers(currentTimer);
	sei();

	//int flag = FlagBusy_IO;
	//FlagBusy_IO=1;
	tmp = UDR0;


	FifoAddByte(&store, tmp, &err);
	UCSR0Bbits._RXCIE0=1;
	//UCSR0B =( _BV(RXCIE0) | UART_ON  ) ;
	//FlagBusy_IO=flag;
	//FlagBusy_IO=0;
}



void serial_init(unsigned int bittimer)
{
	/* Set the baud rate */
	UBRR0H = (unsigned char) (bittimer >> 8);
	UBRR0L = (unsigned char) bittimer;
	//UBRR0H = 0;
	//UBRR0L = 64;

	/* set the framing to 8E1 */
	UCSR0C = (_BV(UCSZ00)|_BV(UCSZ01)| _BV(UPM01));
//	/* set the framing to 8N1 */
//	UCSR0C = (_BV(UCSZ00)|_BV(UCSZ01));

    /* rx interrupts enabled, rx and tx enabled, 8-bit data */
    UCSR0B =( _BV(RXCIE0) | _BV(RXEN0) | _BV(TXEN0)  ) ;
    UCSR0A = 0x00;

    //EnableDebugTerminal();
}

void EnableDebugTerminal(void){

	unsigned int bittimer;
	bittimer=(( F_CPU / 115200  / 16 ) - 1);
	/* Set the baud rate */
	UBRR1H = (unsigned char) (bittimer >> 8);
	UBRR1L = (unsigned char) bittimer;

	/* set the framing to 8N1 */
	UCSR1C = ((1<< UCSZ10)|(1<< UCSZ11));
	/* tx enabled, 8-bit data */
	UCSR1B =( _BV(TXEN1));
	UCSR1A = 0x00;
}

void showString (PGM_P s,Print_Level l,char newLine) {
	if(!okToprint(l)){
		return;
	}
	if(newLine){
		putCharDebug('\n');
		putCharDebug('\r');
	}
	setColor(l);
	char c;
	while ((c = pgm_read_byte(s++)) != 0)
		putCharDebug(c);
}
