/**
 * @file Bowler_HAL_Linux.c
 *
 * Created on: May 27, 2010
 * @author hephaestus
 */
#include "Bowler/Bowler.h"
#include <time.h>

static float start;

boolean GetBowlerPacket_arch(BowlerPacket * Packet){
	return false; 
}
/**
 * get the time in ms
 */
float getMs(void){
	return (time(NULL) * 1000)-start;
}
/**
 * send this char to the print terminal
 */

void putCharDebug(char c){
	putchar(c);
}
/**
 * Start the scheduler
 */
void startScheduler(void){
	start = time(NULL) * 1000;
}

void Linux_Bowler_HAL_Init(void){

}
void EnableDebugTerminal(void){
	puts("Native EnableDebugTerminal"); /* prints test */
}


