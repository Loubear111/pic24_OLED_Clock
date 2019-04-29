#include "xc.h"
#include "util.h"
#include "lcd.h"


/*
 * This is the variables I use to monitor state and edit mode. These should be passed into the display so that the display can handle all the rtc stuff.
 */
volatile int state = 0; //face will go from 0,1,2 with 0 = clock, 1 = alarm, 2 = stopwatch
volatile int edit = 0; //the edit will be set to off and will trigger


/*
 * 
 * 
 * this function when given a button (int button) will test to see
 * if that button is being clicked. If the first or second button 
 * are clicked it will update their respective variables. The FIRST 
 * one being which face you are looking at and the SECOND one being
 * edit or normal mode. The THIRD and FOURTH button are responsible for 
 * functions within the clock face and the alarm face or during the edit face
 * and hence will not always need to be checked.These functions will need to be
 * added later. PLEASE UPDATE THIS PARAGRAPH WHEN THAT IS COMPLETED. 
 * 
 * 
 */

int checkButton(int button)
{
     
    if(button == 1)
    {
        if(!PORTBbits.RB15)
        {
            
            return !PORTBbits.RB15;
        } 
        return 0; 
    }
    else if(button == 2)
    {
        if(!PORTBbits.RB14)
        {
            
            return !PORTBbits.RB14;
        }   
        return 0; 
    }
    else if(button == 3)
    {
        if(!PORTBbits.RB13)
        {
           
            return !PORTBbits.RB13;
        }
        return 0; 
        
    }
    else if(button == 4)
    {
        if(!PORTBbits.RB12)
        {
            
            return !PORTBbits.RB12;
        }
        return 0; 
    }
    else
    {
        return 0; 
    }
    
    
    
    
}

int watch_getState(void)
{
    return state;
}

int watch_getEditState(void)
{
    return edit;
}


/*
 * this function automatically calls all the interactive button functions in order to update which state we are in.
 * The button 3 and 4 do not update the state and hence exist here but do not perform any tasks. We could potentially
 * remove them at a later date. 
 * 
 */
void watch_updateState(void)
{
         if(checkButton(1))
        {
            state+=1; 
            edit = 0; 
            state = state%3;
//            if(state>2)
//            {
//                state = 0; 
//            }
             delay(200);
        }
        if(checkButton(2))
        {
            edit = !edit; 
            delay(200);
        }
        if(checkButton(3))
        {
 
            delay(200);
        }
        if(checkButton(4))
        {
 
          delay(200); 
        }
    
    
}

void watch_update(void)
{
    if(watch_getState() == 0)
    {
        if(!watch_getEditState())
        {
            //TODO: Replace lcd_write_string() with RTC_WriteTime
            //lcd_printString("FaceN", 6);
            lcd_write_string("1:1",0,0);
        }
        else
        {
            //lcd_printString("FaceE", 6);
            lcd_write_string("1:2",0,0);
        }
    }
    else if(watch_getState() == 1)
    {
        if(!watch_getEditState())
        {
            //lcd_printString("AlarN", 6);
            lcd_write_string("2:1",0,0);
        }
        else
        {
            //lcd_printString("AlarE", 6);
            lcd_write_string("2:2",0,0);
        }
    }
    else if(watch_getState() == 2)
    {
        if(!watch_getEditState())
         {
            //lcd_printString("STOPN", 6);
            lcd_write_string("3:1",0,0);
         }
         else
         {
            //lcd_printString("STOPE", 6);
            lcd_write_string("3:2",0,0);
         }
    }
}

/*
 * The below functtion sets up the interactive buttons and allows for those button to be usable. Must be set before the infinite loop 
 */
void init_interactivebuttons(void)
{
    //this is where we will set the input and output configuration 
    //this should be setting portb ports 0-3 to input where we can read what is being pressed
    TRISB |= 0b1111000000000000;        //setting up RB15-RB14 to input ports 
             //5432109876543210
     
    //these ports will read high when there is not click but read low when a click occurs because they will short        
    //this is where we will set the pull up resistor
    //setting a pullup module on device pins 23-26  or RP(12-15) or RB(12-15)
    CNPU1bits.CN11PUE = 1;      //RB15
    CNPU1bits.CN12PUE = 1;      //RB14
    CNPU1bits.CN13PUE = 1;      //RB13
    CNPU1bits.CN14PUE = 1;      //RB12
    
}

