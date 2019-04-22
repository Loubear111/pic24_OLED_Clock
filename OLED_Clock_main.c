#include <p24Fxxxx.h>
#include <xc.h>
#include <stdlib.h>

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

#define DACMASK 0x1FFF
#define DACBITS 0x1000

#define LCD_CS_SET      PORTBbits.RB2 = 1
#define LCD_DC_SET      PORTBbits.RB6 = 1

#define LCD_CS_RESET    PORTBbits.RB2 = 0
#define LCD_DC_RESET    PORTBbits.RB6 = 0

#define LED_SET PORTBbits.RB2 = 1;

volatile unsigned short int sample = DACBITS;

//Generic delay function
void delay(unsigned int ms)
{
    while(ms > 0)
    {
        asm("repeat #15993");
        asm("nop");
        ms--;
    }
}

void __attribute__((__interrupt__,__auto_psv__)) _T2Interrupt(void)
{
    sample &= DACMASK;
    sample |= DACBITS;

    IFS0bits.T2IF = 0;
    SPI1BUF = sample;   // Kickstart the SPI transaction. Do not worry about
                        // LDAC' now. We will get the SPI interrupt once
                        // the last bit is8out. We will generate a pulse 
                        // on the LDAC' line then.
    
    sample += 41;       // the next "step" value.
}

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
    
    /* SPI1 Bit Setup */
    //TRISBbits.TRISB9 = 0; // SDO
    //TRISBbits.TRISB8 = 0; // SCK
    //TRISBbits.TRISB7 = 0; // CS
    //TRISBbits.TRISB6 = 0; // D/C
    //TRISBbits.TRISB4 = 0; // RESET

    // Peripheral Pin Select 
    __builtin_write_OSCCONL(OSCCON & 0xbf); // unlock PPS
    RPOR4bits.RP9R = 7;   //RB9->SPI1:SDO1; See Table 10-3 on P109 of the datasheet
    RPOR4bits.RP8R = 8;   //RB8->SPI1:SCK1OUT;
    RPINR20bits.SCK1R = 8;//RB8->SPI1:SCK1OUT;
    //RPINR21bits.SS1R = 7;
    __builtin_write_OSCCONL(OSCCON | 0x40); // lock   PPS
    
    SPI1CON1 = 0;
    SPI1CON1bits.MSTEN = 1;  // master mode
    SPI1CON1bits.MODE16 = 0; // sixteen bits
    SPI1CON1bits.CKE = 1;
    SPI1CON1bits.CKP = 0;
    SPI1CON1bits.SPRE = 0b101; // secondary prescaler = 2
    SPI1CON1bits.PPRE = 0b11;  // primary prescaler = 1;
    // SPI1CON1bits.PPRE = 0b01;  // primary prescaler = 16;
    SPI1CON2 = 0;
    SPI1STAT = 0;
    SPI1STATbits.SISEL = 0b101; // IF set when last bit is shifted out
                                // That means the SPI xfer is complete.
    SPI1STATbits.SPIEN = 1;
    
    _SPI1IF = 0;
    _SPI1IE = 1;
}

void lcd_cmd(unsigned short int packet)
{
    LCD_CS_RESET;
    LCD_DC_RESET;
    
    SPI1BUF = packet;
    delay(100);
}

void lcd_data(unsigned short int packet)
{
    LCD_CS_RESET;
    LCD_DC_SET;
    
    SPI1BUF = packet;
    //delay(100);
}

//Will clear display with either 0's or 1's (black or white)
void lcd_clear(int c)
{
    int i;
    unsigned short int pixel;
    
    if(c == 0)
    {
        pixel = 0x00;
    }
    else
    {
        pixel = 0xFF;
    }
    
    for(i = 0; i < 1024; i++)
    {
        lcd_data(pixel);
    }
}

int main(int argc, char *argv[])
{
    setup();
    
    PORTBbits.RB4 = 0;
    delay(10);
    PORTBbits.RB4 = 1;
    delay(10);
    PORTBbits.RB4 = 0;
    delay(10);
    PORTBbits.RB4 = 1;
    delay(10);
    //lcd_cmd(0xA5); //Display On
    //lcd_cmd(0xA7); //Invert Display cuz
    
    lcd_cmd(0xAE); //Display off
    lcd_cmd(0xD5); //set display clock div
    lcd_cmd(0x80); //set clock display as 0x80
    lcd_cmd(0xA8); //set multiplex
    lcd_cmd(0x3F); //63 in hex
    lcd_cmd(0xD3); //display offset
    lcd_cmd(0x00); //zero offset, plz
    
    lcd_cmd(0x40); //set start line
    lcd_cmd(0x00); //start line to 0
    lcd_cmd(0x8D); //charge pump
    lcd_cmd(0x14); //< Gen. display voltage from 3.3V (I believe 0x10 will generate from 5V)
    
    lcd_cmd(0x20); //memory mode
    lcd_cmd(0x00); //0
    lcd_cmd(0xA0 | 0x1); //segremap
    lcd_cmd(0xC8); //COMSCANDEC
    
    lcd_cmd(0xDA); //SETCOMPINS
    lcd_cmd(0x12); 
    lcd_cmd(0x81); //SETCONTRAST
    lcd_cmd(0xCF); //0xCF for 3.3v
    
    lcd_cmd(0xD9); //SETPRECHARGE
    lcd_cmd(0xF1); //for 3.3v
    
    lcd_cmd(0xDB); //SETVCOMDETECT
    lcd_cmd(0x40); //set to 0x40
    lcd_cmd(0xA4); //DISPLAYON_RESUME
    lcd_cmd(0xA6); //NORMALDISPLAY
    lcd_cmd(0x2E); //Deactivate Scroll
    
    //lcd_cmd(0xA7); //Invert Display cuz
    lcd_cmd(0xAF); //display on
    
    //lcd_data(0xFF);
    
    lcd_clear(1);
    
    while (1)
    {
       //PORTBbits.RB2 = 1;
       LED_SET;
       lcd_clear(0);
       delay(2000);
       PORTBbits.RB2 = 0;
       lcd_clear(1);
       delay(2000);
    }

    return 0; // never reached (we hope)
}

