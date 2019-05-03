#include <xc.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include "lcd.h"
#include "util.h"

struct DateTime
{
    unsigned char seconds;
    unsigned char minutes;
    unsigned char hours;
    unsigned char weekday; 
    unsigned char day;
    unsigned char month;
    unsigned char year;
}dt;

void rtc_setTime(unsigned char hour, unsigned char min, unsigned char sec)
{
    asm volatile( 
    " disi #5\n"            /* disable interrupts for 5 cycles */ 
    " mov  #0x55, w0\n"     /* write first step of unlock sequence */ 
    " mov  w0,_NVMKEY\n" 
    " mov  #0xAA, w1\n"     /* write second step of unlock sequence */ 
    " mov  w1,_NVMKEY\n" 
    " bset _RCFGCAL, #13\n" /* set the RTCWREN bit to unlock writes to the RTCC */ 
    : /* no outputs */ 
    : /* no inputs */ 
    : "w0", "w1" /* clobbers these working registers */ 
    ); 
    
    RCFGCALbits.RTCEN = 0; //disable
    RCFGCALbits.RTCPTR = 3; //set rtc pointer to three so we can set all the values
    
    unsigned char hourBCD;
    hourBCD = (char)floor(hour / 10) << 4; //setting the "tens" digit for hour in BCD
    hourBCD = hourBCD + (hour % 10); //setting the "ones" digit for hour in BCD
            
    unsigned char minBCD;
    minBCD = (char)floor(min / 10) << 4; //setting the "tens" digit for minute in BCD
    minBCD = minBCD + (min % 10); //setting the "ones" digit for minute in BCD
    
    unsigned char secBCD;
    secBCD = (char)floor(sec / 10) << 4; //setting the "tens" digit for second in BCD
    secBCD = secBCD + (sec % 10); //setting the "ones" digit for second in BCD
    
    //RTCPTR = 3
    RTCVAL = 0b10011100; //Year set, 9.8 aka 98
    //RTCPTR = 2
    RTCVAL = (0b10000 << 8) + 0b100011; //month 10, day 23
    //RTCPTR = 1
    RTCVAL = (0b001 << 8) + hourBCD; //day 1, hour 13
    //RTCPTR = 0
    RTCVAL = (minBCD << 8) + secBCD; //minute 31, seconds 11
    //RTCVAL = 0x1006; //minute 10, second 6        
    
    RCFGCALbits.RTCEN = 1; //enable
    
    RCFGCALbits.RTCWREN = 0;
}

void rtc_setSecond(unsigned char sec)
{
    dt.seconds = sec;
    rtc_setTime(dt.hours, dt.minutes, sec);
}

void rtc_setMinute(unsigned char min)
{
    dt.minutes = min;
    rtc_setTime(dt.hours, min, dt.seconds);
}

void rtc_setHour(unsigned char hour)
{
    dt.hours = hour;
    rtc_setTime(hour, dt.minutes, dt.seconds);
}

void rtc_updateTime(void)
{
    // Wait for RTCSYNC bit to become 0
    while(RCFGCALbits.RTCSYNC==1);
    
    unsigned int monthdate;
    unsigned int dayhour;
    unsigned int min_sec;
    unsigned int year;
    unsigned char month;
    unsigned char day;
    unsigned char weekday;
    unsigned char hour;
    unsigned char minute;
    unsigned char second;
    
    // Read RTCC timekeeping register (set for hours)
    RCFGCALbits.RTCPTR=0b11;
    year = RTCVAL;
    monthdate = RTCVAL;
    dayhour = RTCVAL;
    min_sec = RTCVAL;
    
    //Each conversion include a diagram of the register its being taken from
    //Refer to pages 182 and 183 of the PIC24F family datasheet for official
    //register assignments
    
    // T = second tens bit, O = second ones bit
    // bit 7654 3210
    //     -TTT OOOO
    second = (((min_sec & 0b1111111) >> 4) * 10) + (min_sec & 0b0001111);
    
    // T = minute tens bit, O = minute ones bit
    // bit 15 14 13 12 11  10  9  8
    //     -   T  T  T  O   O  O  O
    minute = (((min_sec >> 12) & 0b1111) * 10) + ((min_sec >> 8) & 0b0001111);
    
    // T = hour tens bit, O = hour ones bit
    // bit 7654 3210
    //     --TT OOOO
    hour = (((dayhour >> 4) & 0b11) * 10) + (dayhour & 0b1111);
    
    dt.seconds = second;
    dt.minutes = minute;
    dt.hours = hour;
    
    //TODO: weekday, day, month, and year
}

void rtc_setup(void)
{ 
    asm volatile( 
    " disi #5\n"            /* disable interrupts for 5 cycles */ 
    " mov  #0x55, w0\n"     /* write first step of unlock sequence */ 
    " mov  w0,_NVMKEY\n" 
    " mov  #0xAA, w1\n"     /* write second step of unlock sequence */ 
    " mov  w1,_NVMKEY\n" 
    " bset _RCFGCAL, #13\n" /* set the RTCWREN bit to unlock writes to the RTCC */ 
    : /* no outputs */ 
    : /* no inputs */ 
    : "w0", "w1" /* clobbers these working registers */ 
    ); 
    
    //Initialize our struct values all to 0
    dt.day = 0;
    dt.hours = 0;
    dt.minutes = 0;
    dt.month = 0;
    dt.seconds = 0;
    dt.weekday = 0;
    dt.year = 0;
    
    RCFGCALbits.RTCEN = 1;
    RCFGCALbits.RTCOE = 0;
    _RTSECSEL = 1;
    __builtin_write_OSCCONL(OSCCON | 0x02); //enable secondary clock source (32.768 kHz crystal)
    TRISBbits.TRISB4 = 1; //make RB4 input for crystal oscillator output
    RCFGCALbits.RTCWREN = 0; //lock registers back up
}

void rtc_update(void)
{
    rtc_updateTime();
}

unsigned char rtc_getSecond(void)
{
    return dt.seconds;
}

unsigned char rtc_getMinute(void)
{
    return dt.minutes;
}

unsigned char rtc_getHour(void)
{
    return dt.hours;
}

