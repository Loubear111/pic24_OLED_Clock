#include <xc.h>
#include <math.h>
#include <stdio.h>
#include <string.h>
#include "lcd.h"
#include "util.h"

const unsigned char zero [] = {
0x3C, 0x66, 0x42, 0xC3, 0xC3, 0xC3, 0xC3, 0xC3, 0xC3, 0x42, 0x66, 0x3C, 
};

const unsigned char one [] = {
0x0C, 0x3C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x0C, 0x3F, 
};

const unsigned char two [] = {
0x1E, 0x27, 0x43, 0x03, 0x03, 0x02, 0x06, 0x04, 0x08, 0x10, 0x3F, 0x7F, 
};

const unsigned char three [] = {
0x1E, 0x67, 0x43, 0x03, 0x06, 0x0E, 0x07, 0x03, 0x03, 0x03, 0x66, 0x7C, 
};

const unsigned char four [] = {
0x06, 0x06, 0x0E, 0x16, 0x26, 0x26, 0x46, 0x86, 0xFF, 0x06, 0x06, 0x06, 
};

const unsigned char five [] = {
0x1E, 0x1E, 0x20, 0x38, 0x7C, 0x0E, 0x06, 0x02, 0x02, 0x02, 0x44, 0x78, 
};

const unsigned char six [] = {
0x07, 0x1C, 0x30, 0x60, 0x5C, 0xE6, 0xC3, 0xC3, 0xC3, 0xC3, 0x66, 0x3C, 
};

const unsigned char seven [] = {
0x7F, 0x7F, 0x81, 0x02, 0x02, 0x02, 0x04, 0x04, 0x08, 0x08, 0x08, 0x10, 
};

const unsigned char eight [] = {
0x3C, 0x62, 0xC3, 0xC3, 0x66, 0x38, 0x3C, 0x46, 0xC3, 0xC3, 0x62, 0x3C, 
};

const unsigned char nine [] = {
0x3C, 0x66, 0xC3, 0xC3, 0xC3, 0xC3, 0x63, 0x3E, 0x06, 0x0C, 0x18, 0xE0, 
};

const unsigned char space [] = {
0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 
};

const unsigned char colon [] = {
0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 0x00, 0x00, 0x18, 0x18, 0x00, 0x00, 
};

const unsigned char unknown [] = {
0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 0xFF, 
};

unsigned char frame_buffer [1024];

/* PRIVATE FUNCTION PROTOTYPES */

void lcd_data(unsigned short int packet);
void lcd_cmd(unsigned short int packet);
void lcd_writeChar(char c, int x, int y);

/* PUBLIC FUNCTIONS */

void lcd_setup(void)
{
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
    
    PORTBbits.RB4 = 0;
    delay(10);
    PORTBbits.RB4 = 1;
    delay(10);
    PORTBbits.RB4 = 0;
    delay(10);
    PORTBbits.RB4 = 1;
    delay(10);
    
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
    lcd_cmd(0x00); //page addressing mode
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
    
    //Initialize the frame buffer
    int i;
    for(i = 0; i < 1024; i++)
    {
        frame_buffer[i] = 0x00;
    }
}

//Easy to use function to write a pixel to the display using x and y coords!
void lcd_write_pixel(int x, int y, int colour)
{
    int i = 0;
    int page = floor((float)y / 8);
    
    i = (page * 128);
    i = i + x;
    
    int bit_mask = 0b00000001;
    bit_mask = bit_mask << (y % 8);
    
    if(colour == 1)
    {
        //Our color we want is white(ON) so OR a one into place
        frame_buffer[i] = (frame_buffer[i] | bit_mask);
    }
    else
    {
        //Here we shift over the bit we want to test to see if it is zero or one
        //since the color we want is black(OFF) we can do nothing if its zero
        int bit_mask_test = 0b00000001;
        unsigned char test_num = frame_buffer[i] >> (y%8);
        bit_mask_test = bit_mask_test << (y%8);
        test_num = frame_buffer[i] & bit_mask_test;
        
        if(test_num != 0)
        {
            frame_buffer[i] = (frame_buffer[i] ^ bit_mask);
        }
        
        /*
        if(test_num % 2 == 1)
        {
            //ODD so bit we care about is one, use XOR to make it zero!
            frame_buffer[i] = (frame_buffer[i] ^ bit_mask);
        }
        else
        {
            //EVEN so bit we care about is already zero, don't do anything
        }*/
    }
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
        frame_buffer[i] = pixel;
    }
}

//Updates display with frame_buffer data
void lcd_update(void)
{
    int i;
    for(i = 0; i < 1024; i++)
    {
        lcd_data(frame_buffer[i]);
    }
}

/* PRIVATE FUNCTIONS */
void lcd_cmd(unsigned short int packet)
{
    //CS to 0 DC to 0 for command packet
    LCD_CS_RESET;
    LCD_DC_RESET;
    
    SPI1BUF = packet;
    delay(100);
}

void lcd_data(unsigned short int packet)
{
    //CS to 0 DC to 1 for data ram packet
    LCD_CS_RESET;
    LCD_DC_SET;
    
    SPI1BUF = packet;
    //delay(100);
}

void lcd_write_char(char c, int xi, int yi)
{
    int i = 0;
    int x;
    int y;
    int pixel = 0;
    int mask = 0b10000000;
    unsigned const char *carr;
    
    //here we assign the carr array which will be used to print out the given
    //character in the for loop below.
    if(c == '1')
    {
        carr = one;
    }
    else if(c == '2')
    {
        carr = two;
    }
    else if(c == '3')
    {
        carr = three;
    }
    else if(c == '4')
    {
        carr = four;
    }
    else if(c == '5')
    {
        carr = five;
    }
    else if(c == '6')
    {
        carr = six;
    }
    else if(c == '7')
    {
        carr = seven;
    }
    else if(c == '8')
    {
        carr = eight;
    }
    else if(c == '9')
    {
        carr = nine;
    }
    else if(c == '0')
    {
        carr = zero;
    }
    else if(c == ' ')
    {
        carr = space;
    }
    else if(c == ':')
    {
        carr = colon;
    }
    else
    {
        carr = unknown;
    }
    
    //This loop breaks up the character into its respective pixels (bits) and
    //prints them out
    for(y = yi; y < (yi + LCD_FONT_HEIGHT); y++)
    {
        for(x = xi; x < (xi + LCD_FONT_WIDTH); x++)
        {
           unsigned char c = *(carr+i);
           
           //Here we do some masking to get the bit we actually want to print
           pixel = c & mask;
           if(pixel > 0)
           {
               pixel = 1;
           }
           lcd_write_pixel(x, y, pixel);
           
           mask = mask >> 1;
           if(mask == 0)
           {
               mask = 0b10000000;
               i++;
           }
        }
    }
}

void lcd_write_string(char *s, int x, int y)
{
    int length = strlen(s);
    int i;
        
    for(i = 0; i < length; i++)
    {
        lcd_write_char(*(s+i), x, y);
        
        //Do our incrementing of x and y such that the string will "wrap"
        //when it reaches the end of the screen
        x += LCD_FONT_WIDTH + LCD_FONT_PADDINGX;
        
        if(x + LCD_FONT_WIDTH + LCD_FONT_PADDINGX > LCD_WIDTH)
        {
            x = 0;
            y += LCD_FONT_HEIGHT + LCD_FONT_PADDINGY;
        }
        if(y + LCD_FONT_HEIGHT + LCD_FONT_PADDINGY > LCD_HEIGHT)
        {
            y = 0;
            x = 0;
        }
    }
}
