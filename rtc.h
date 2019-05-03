/* 
 * File:   rtc.h
 * Author: louis
 *
 * Created on May 1, 2019, 3:31 PM
 */

#ifndef RTC_H
#define	RTC_H

#ifdef	__cplusplus
extern "C" {
#endif

void rtc_setup(void);
void rtc_update(void);
unsigned char rtc_setSecond(unsigned char sec);
unsigned char rtc_setMinute(unsigned char min);
unsigned char rtc_setHour(unsigned char hour);
unsigned char rtc_getSecond(void);
unsigned char rtc_getMinute(void);
unsigned char rtc_getHour(void);


#ifdef	__cplusplus
}
#endif

#endif	/* RTC_H */

