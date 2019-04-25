/* 
 * File:   lcd.h
 * Author: louis
 *
 * Created on April 24, 2019, 10:55 AM
 */

#ifndef LCD_H
#define	LCD_H

#define LCD_CS_SET      PORTBbits.RB2 = 1
#define LCD_DC_SET      PORTBbits.RB6 = 1

#define LCD_CS_RESET    PORTBbits.RB2 = 0
#define LCD_DC_RESET    PORTBbits.RB6 = 0

#define LCD_FONT_HEIGHT     12
#define LCD_FONT_PADDINGX   1
#define LCD_FONT_PADDINGY   1
#define LCD_FONT_WIDTH      8
#define LCD_WIDTH           128
#define LCD_HEIGHT          64

#ifdef	__cplusplus
extern "C" {
#endif

void delay(unsigned int ms);
void lcd_cmd(unsigned short int packet);
void lcd_write_pixel(int x, int y, int colour);
void lcd_writeChar(char c, int x, int y);
void lcd_write_string(char *s, int x, int y);
void lcd_setup(void);
void lcd_write_one(void);
void lcd_update(void);

#ifdef	__cplusplus
}
#endif

#endif	/* LCD_H */

