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
	struct timespec t_current;
	clock_gettime(CLOCK_MONOTONIC, &t_current);

	return (t_current.tv_sec*1000 + t_current.tv_nsec/ 1.0e6);
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


