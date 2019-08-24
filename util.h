/* 
 * File:   util.h
 * Author: louis
 *
 * Created on April 25, 2019, 12:34 PM
 */

#include <xc.h>

#ifndef UTIL_H
#define	UTIL_H

#define LED_RESET         PORTBbits.RB2 = 1;
#define LED_SET       PORTBbits.RB2 = 0;

#ifdef	__cplusplus
extern "C" {
#endif

void delay(unsigned int ms);


#ifdef	__cplusplus
}
#endif

#endif	/* UTIL_H */

//
