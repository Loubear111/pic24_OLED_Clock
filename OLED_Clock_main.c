#include <p24Fxxxx.h>
#include <xc.h>
#include <stdlib.h>
#include <math.h>
#include "lcd.h"
#include "util.h"
#include "watch_State.h"

// PIC24FJ64GA002 Configuration Bit Settings
// CW1: FLASH CONFIGURATION WORD 1 (see PIC24 Family Reference Manual 24.1)
#pragma config ICS = PGx1          // Comm Channel Select (Emulator EMUC1/EMUD1 pins are shared with PGC1/PGD1)
#pragma config FWDTEN = OFF        // Watchdog Timer Enable (Watchdog Timer is disabled)
#pragma config GWRP = OFF          // General Code Segment Write Protect (Writes to program memory are allowed)
#pragma config GCP = OFF           // General Code Segment Code Protect (Code protection is disabled)
#pragma config JTAGEN = OFF        // JTAG Port Enable (JTAG port is disabled)


// CW2: FLASH CONFIGURATION WORD 2 (see PIC24 Family Reference Manual 24.1)
#pragma config POSCMOD = NONE           // Primary Oscillator Select (Primary oscillator disabled. 
					// Primary Oscillator refers to an external osc connected to the OSC1 and OSC2 pins)
#pragma config I2C1SEL = PRI       // I2C1 Pin Location Select (Use default SCL1/SDA1 pins)
#pragma config IOL1WAY = OFF       // IOLOCK Protection (IOLOCK may be changed via unlocking seq)
#pragma config OSCIOFNC = ON       // OSC2/CLKO/RC15 functions as port I/O (RC15)
#pragma config FCKSM = CSECME      // Clock Switching and Monitor (Clock switching is enabled, 
                                       // Fail-Safe Clock Monitor is enabled)
#pragma config FNOSC = FRCPLL      // Oscillator Select (Fast RC Oscillator with PLL module (FRCPLL))

void __attribute__((__interrupt__,__auto_psv__)) _SPI1Interrupt(void)
{
    int temp;
    _SPI1IF = 0;
    temp = SPI1BUF; // just to clear the buffer and avoid setting off the 
                    // overflow bit
}

void setup(void)
{
    CLKDIVbits.RCDIV = 0;
    AD1PCFG = 0x9fff;  // For digital I/O.  If we want to use analog, we'll
                       // need to change this.
    TRISB = 0;    // make all PORTBbits outputs initially

    // add your configuration commands below
    //PORTB = 0xffff;
    PORTB = 0x0;
    TRISBbits.TRISB2 = 0; // Heartbeat LED
    
    //Setup Timer1 to delay (T1 USED IN watch_State)
    T2CON = 0;
    PR2 = 15999;
    TMR2 = 0;
    IFS0bits.T2IF = 0;
    T2CONbits.TON = 1;
    
//    NVMKEY = 0x55;
//    NVMKEY = 0xAA;
    RCFGCALbits.RTCWREN = 1; //start with registers unlocked
    RCFGCALbits.RTCOE = 1; 
//    __builtin_write_OSCCONL(OSCCON | 0x02); //enable secondary clock source
    RCFGCALbits.RTCWREN = 0; //lock registers back up
}

void getTime(void)
{
    // Wait for RTCSYNC bit to become ‘0’
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
    
    char buffer[2];
    second = ((min_sec >> 4) * 10) + (min_sec & 0b0001111);
    sprintf(buffer, "%d", second);
    lcd_write_string(buffer, 20, 20);
    
    asm("nop");
    asm("nop");
    asm("nop");
    asm("nop");
    asm("nop");
}

void setTime(unsigned char hour, unsigned char min, unsigned char sec)
{
    //NVMKEY = 0x55;
    //NVMKEY = 0xAA;
    RCFGCALbits.RTCWREN = 1;
    
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
    
    RTCVAL = 0b10011100; //Year set, 9.8 aka 98
    RTCVAL = (0b10000 << 8) + 0b100011; //month 10, day 23
    RTCVAL = (0b001 << 8) + hourBCD; //day 1, hour 13
    RTCVAL = (minBCD << 8) + secBCD; //minute 31, seconds 11
            
    RCFGCALbits.RTCEN = 1; //enable
    RCFGCALbits.RTCWREN = 0;
}

int main(int argc, char *argv[])
{
    setup();
    
    lcd_setup();
    init_interactivebuttons();
    
    //lcd_write_char('1', 0, 0);
    //lcd_write_string("0 1 2 3 4 5 6 7 8 9", 0, 0);
    
    lcd_clear(0);
    setTime(4, 4, 6);
    getTime();
    while (1)
    {
        lcd_update();
        watch_updateState();
        watch_update();
        getTime();
    }

    return 0; // never reached (we hope)
}

