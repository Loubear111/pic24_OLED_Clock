#include <p24Fxxxx.h>
#include <xc.h>
#include <stdlib.h>
#include <stdio.h>
#include <math.h>
#include "lcd.h"
#include "util.h"
#include "rtc.h"
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
//#pragma config FNOSC = FRCPLL      // Oscillator Select (Fast RC Oscillator with PLL module (FRCPLL))
#pragma config FNOSC = 0b001      // Oscillator Select (Fast RC Oscillator with PLL module (FRCPLL))
#pragma config SOSCSEL = 0b11

void __attribute__((__interrupt__,__auto_psv__)) _SPI1Interrupt(void)
{
    int temp;
    _SPI1IF = 0;
    temp = SPI1BUF; // just to clear the buffer and avoid setting off the 
                    // overflow bit
}

void setup(void)
{
    //__builtin_write_OSCCONL(OSCCON | 0x02); //enable secondary clock source
    CLKDIVbits.RCDIV = 0;
    AD1PCFG = 0x9fff;  // For digital I/O.  If we want to use analog, we'll
                       // need to change this.
    TRISB = 0;    // make all PORTBbits outputs initially
    //TRISBbits.TRISB4 = 1;

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
}

int main(int argc, char *argv[])
{
    setup();
    
    rtc_setup();
    lcd_setup();
    init_interactivebuttons();
    
    lcd_clear(0);
    //rtc_setTime(12, 25, 30); //set the time (hours, minutes, seconds)
    
    rtc_setHour(12);
    rtc_setMinute(25);
    rtc_setSecond(30);
    
    while (1)
    {
        rtc_update();
        lcd_update();
        watch_updateState(); 
        watch_update();
    }

    return 0; // never reached (we hope)
}

