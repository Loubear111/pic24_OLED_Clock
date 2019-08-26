#include "xc.h"
#include "util.h"
#include "lcd.h"
#include "rtc.h"
#include <math.h>
#include <stdlib.h>
#include <stdio.h>
#include <string.h>

/*
 * This is the variables I use to monitor state and edit mode. These should be passed into the display so that the display can handle all the rtc stuff.
 */
volatile int state = 0; //face will go from 0,1,2 with 0 = clock, 1 = alarm, 2 = stopwatch
volatile int prevState = 0;
volatile int prevEditState = 0;
volatile int edit = 0; //the edit will be set to off and will trigger

// boolean determine if we've debounced (we only debounce one at a time)
// 1 = timeout complete
// 0 = timeout incomplete
volatile unsigned short buttonDebounceTimeout = 1;
volatile unsigned short buttonHoldTimeout = 1;

volatile int editSel = 0;
volatile int incB = 0;
volatile int alarmEnable = 0;
static unsigned char AHOUR = 0; 
static unsigned char AMINUTE = 0; 
//static volatile int ASECOND = 0;

volatile int t1Flag = 0;
int stopWatchToggle = 0;

void button_StartNonBlockingDelay(int ms);
void check_Alarm(void);
void Stopwatch_updateTime(void);
void Reset_Stopwatch(void);
void Start_Stop_Stopwatch(void);

volatile unsigned long int StopwatchOverflow = 0; 

void __attribute__((__interrupt__,__auto_psv__)) _T1Interrupt(void)
{
    t1Flag = 1;
    StopwatchOverflow++;
    IFS0bits.T1IF = 0;
}

void __attribute__((__interrupt__,__auto_psv__)) _T2Interrupt(void)
{
    buttonDebounceTimeout = 1;
    IFS0bits.T2IF = 0;
    T2CONbits.TON = 0;
    TMR2 = 0;
}
/*
 * 
 * 
 * this function when given a button (int button) will test to see
 * if that button is being clicked. If the first or second button 
 * are clicked it will update their respective variables. The FIRST 
 * one being which face you are looking at and the SECOND one being
 * edit or normal mode. The THIRD and FOURTH button are responsible for 
 * functions within the clock face and the alarm face or during the edit face
 * and hence will not always need to be checked.
 * 
 * 
 */
int checkButton(int button)
{
    static short buttonState[] = {0, 0, 0, 0};
    static short buttonIsClick = 0;
    static short buttonControlLock = 0;
    
    if(button == 1)
    {
        if(buttonControlLock == 1 || buttonControlLock == 0)
        {
            if(!PORTBbits.RB15)
            {
                // lock down button state machine to focus on this button
                buttonControlLock = 1;

                // button was just pressed, we need to wait for release now
                if(buttonState[0] == 0 && buttonDebounceTimeout)
                {
                    buttonState[0] = 1;
                    //button_StartNonBlockingDelay(50);
                    return 0;
                }    
                return 0;
            }
            else
            {
                if(buttonState[0] == 1 && buttonDebounceTimeout)
                {
                    button_StartNonBlockingDelay(20);
                    buttonIsClick = 1;
                    buttonState[0] = 0;
                    return 0;
                }

                if(buttonState[0] == 0 && buttonDebounceTimeout && buttonIsClick)
                {
                    buttonIsClick = 0;

                    // release state machine from this button
                    buttonControlLock = 0;

                    return 1;
                }
            }
            return 0; 
        }
        return 0;
    }
    else if(button == 2)
    {
        if(buttonControlLock == 2 || buttonControlLock == 0)
        {
            if(!PORTBbits.RB14)
            {
                // lock down button state machine to focus on this button
                buttonControlLock = 2;

                // button was just pressed, we need to wait for release now
                if(buttonState[1] == 0 && buttonDebounceTimeout)
                {
                    buttonState[1] = 1;
                    //button_StartNonBlockingDelay(50);
                    return 0;
                }    
                return 0;
            }
            else
            {
                if(buttonState[1] == 1 && buttonDebounceTimeout)
                {
                    button_StartNonBlockingDelay(20);
                    buttonIsClick = 1;
                    buttonState[1] = 0;
                    return 0;
                }

                if(buttonState[1] == 0 && buttonDebounceTimeout && buttonIsClick)
                {
                    buttonIsClick = 0;

                    // release state machine from this button
                    buttonControlLock = 0;

                    return 1;
                }
            }
            return 0; 
        }
        return 0;
    }
    else if(button == 3)
    {
        if(buttonControlLock == 3 || buttonControlLock == 0)
        {
            if(!PORTBbits.RB13)
            {
                // lock down button state machine to focus on this button
                buttonControlLock = 3;

                // button was just pressed, we need to wait for release now
                if(buttonState[2] == 0 && buttonDebounceTimeout)
                {
                    buttonState[2] = 1;
                    //button_StartNonBlockingDelay(50);
                    return 0;
                }    
                return 0;
            }
            else
            {
                if(buttonState[2] == 1 && buttonDebounceTimeout)
                {
                    button_StartNonBlockingDelay(20);
                    buttonIsClick = 1;
                    buttonState[2] = 0;
                    return 0;
                }

                if(buttonState[2] == 0 && buttonDebounceTimeout && buttonIsClick)
                {
                    buttonIsClick = 0;

                    // release state machine from this button
                    buttonControlLock = 0;

                    return 1;
                }
            }
            return 0; 
        }
        return 0;
    }
    else if(button == 4)
    {
        if(buttonControlLock == 4 || buttonControlLock == 0)
        {
            if(!PORTBbits.RB12)
            {
                // lock down button state machine to focus on this button
                buttonControlLock = 4;

                // button was just pressed, we need to wait for release now
                if(buttonState[3] == 0 && buttonDebounceTimeout)
                {
                    buttonState[3] = 1;
                    //button_StartNonBlockingDelay(50);
                    return 0;
                }    
                return 0;
            }
            else
            {
                if(buttonState[3] == 1 && buttonDebounceTimeout)
                {
                    button_StartNonBlockingDelay(20);
                    buttonIsClick = 1;
                    buttonState[3] = 0;
                    return 0;
                }

                if(buttonState[3] == 0 && buttonDebounceTimeout && buttonIsClick)
                {
                    buttonIsClick = 0;

                    // release state machine from this button
                    buttonControlLock = 0;

                    return 1;
                }
            }
            return 0; 
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
            editSel = 0;
            state = state%3;
        }
        if(checkButton(2))
        {
            editSel = 0;
            if(state == 1)
            {
                alarmEnable = !alarmEnable;
            }
            if(state == 2)
            {
                Start_Stop_Stopwatch();
            }
            
            if(state == 0)
            {
                edit = !edit; 
            }
        }
        if(checkButton(3))
        {
            incB = !incB;
            
            if(state == 0 && edit == 0)
            {
                static short ledToggle = 1;
                
                if(!ledToggle)
                {
                    LED_SET;
                    ledToggle = 1;
                }
                else
                {
                    LED_RESET;
                    ledToggle = 0;
                }
            }
        }
        if(checkButton(4) && state != 2)
        {
            editSel += 1;
            if(editSel > 2)
            {
                editSel = 0;
            }
         
            if(state == 0 && edit == 0)
            {
                static short easterEgg = 0;
                
                if(!easterEgg)
                {
                   lcd_cmd(0xA7); //Invert Display on cuz 
                   easterEgg = 1;
                }
                else
                {
                    lcd_cmd(0xA6); //Invert Display off cuz  
                    easterEgg = 0;
                }
            }
        }   
}

//Used to print the actual time when we're on the watch face
void watch_printTime()
{
    char buffer[20], sec[3], min[3], hr[3];
    unsigned char seconds = rtc_getSecond();
    unsigned char minutes = rtc_getMinute();
    unsigned char hours = rtc_getHour();
    
    //before we do anything, clear the whole screen so there's nothing
    //but the time
    lcd_clear(0);
    
    if(alarmEnable)
    {
        lcd_write_string("A", 118, 0);
    }
    
    //convert seconds to a string
    if(seconds < 10)
    {
        sprintf(sec, "0%d", seconds);
    }
    else
    {
        sprintf(sec, "%d", seconds);
    }
    
    //convert minutes to a string
    if(minutes < 10)
    {
        sprintf(min, "0%d", minutes);
    }
    else
    {
        sprintf(min, "%d", minutes);
    }
    
    //convert hours to a string
    if(hours < 10)
    {
        sprintf(hr, " %d", hours);
    }
    else
    {
        sprintf(hr, "%d", hours);
    }
    
    //Make sure our buffer is COMPLETELY empty
    memset(buffer,0,sizeof(buffer));
    
    //concatenate all the strings!
    strcat(buffer, hr);
    strcat(buffer, ":");
    strcat(buffer, min);
    strcat(buffer, ":");
    strcat(buffer, sec);
    
    //print them out at x = 16, y = 28 (this should be the center, I think?)
    lcd_write_string(buffer, 28, 28);
}

//Used to print the time when we are in edit mode or alarm setting mode
void watch_printSTime(unsigned char seconds, unsigned char minutes, unsigned char hours)
{
    //char buffer[10], sec[3], min[3], hr[3];
    char buffer[20];
    char sec[3];
    char min[3];
    char hr[3];
    
    //before we do anything, clear the whole screen so there's nothing
    //but the time
    lcd_clear(0);
    
    if(state == 0)
    {
        lcd_write_string("E",0,0); //Print an E so we know we're in edit mode
    }
    if(state == 1)
    {
        lcd_write_string("A",0,28);
    }
    
    if(alarmEnable)
    {
        lcd_write_string("A", 118, 0);
    }
    
    
    //convert seconds to a string
    if(seconds < 10)
    {
        sprintf(sec, "0%d", seconds);
    }
    else
    {
        sprintf(sec, "%d", seconds);
    }
    
    //convert minutes to a string
    if(minutes < 10)
    {
        sprintf(min, "0%d", minutes);
    }
    else
    {
        sprintf(min, "%d", minutes);
    }
    
    //convert hours to a string
    if(hours < 10)
    {
        sprintf(hr, "%d", hours);
    }
    else
    {
        sprintf(hr, "%d", hours);
    }
    
    //Make sure our buffer is COMPLETELY empty
    memset(buffer,0,sizeof(buffer));
    
    //concatenate all the strings!
    strcat(buffer, hr);
    strcat(buffer, ":");
    strcat(buffer, min);
    strcat(buffer, ":");
    strcat(buffer, sec);
    
    //print them out at x = 28, y = 28 (this should be the center, I think?)
    lcd_write_string(buffer, 28, 28);
}

/* 
 * Over-arching update function for the watch state-machine, it handles all the 
 * logic for the three different states (watch face, alarm, stopwatch)
 */
void watch_update(void)
{
    static unsigned char hour, minute, second;
    
    //Update all the states of the watch based on the button presses
    watch_updateState(); 
            
    //Check if the alarm should be going off
    check_Alarm();
    
    //If this is true then we were just in the edit state for the face and now
    //we aren't, we should send the values we set in edit mode to the RTC
    if(prevState == 0 && prevEditState == 1 && (state != 0 || edit == 0))
    {
        rtc_setHour(hour);
        rtc_setMinute(minute);
        rtc_setSecond(second);
    }
    
    if(prevState == 1 && state == 2)
    {
        Reset_Stopwatch();
    }
    
    /* WATCH FACE STATE */
    if(watch_getState() == 0)
    {
        if(!watch_getEditState())
        {
            watch_printTime();
            prevEditState = 0;
        }
        else
        {
            //lcd_printString("FaceE", 6);
            
            if(prevEditState == 0)
            {
                second = rtc_getSecond();
                minute = rtc_getMinute();
                hour = rtc_getHour();
            }
            
            watch_printSTime(second, minute, hour);
            //watch_printTime();
            
            if(incB)
            {
                if(editSel == 0)
                {
                    hour += 1;
                    hour = hour % 24;
                    incB = 0;
                }
                else if(editSel == 1)
                {
                    minute += 1;
                    minute = minute % 60;
                    incB = 0;
                }
                else if(editSel == 2)
                {
                    second += 1;
                    second = second % 60;
                    incB = 0;
                }
            }
            
            prevEditState = 1;
            prevState = 0;
        }
    }
    
    /* ALARM STATE */
    else if(watch_getState() == 1)
    {
        //In this state the edit button controls whether the alarm is enabled or not
        //so there is no "edit" mode for the alarm
        watch_printSTime(0, AMINUTE, AHOUR);
        if(incB)
        {
            if(editSel == 0)
            {
                AHOUR += 1;
                AHOUR = AHOUR % 24;
                incB = 0;
            }
            else if(editSel == 1)
            {
                AMINUTE += 1;
                AMINUTE = AMINUTE % 60;
                incB = 0;
            }
            else if(editSel == 2)
            {
                AHOUR += 1;
                AHOUR = AHOUR % 24;
                incB = 0;
                editSel = 0; 
            }
        }
        
        if(!watch_getEditState())
        {
            //watch_printSTime(0, AMINUTE, AHOUR);
            prevEditState = 0;
            //lcd_write_string("2:1",0,0);
        }
        else
        {   
            prevEditState = 1;
            prevState = 1;
            
            //lcd_printString("AlarE", 6);
            //lcd_write_string("2:2",0,0);
        }
    }
    
    /* STOPWATCH STATE */
    else if(watch_getState() == 2)
    {
        Stopwatch_updateTime();
        
        if(incB)
        {
            if(T1CONbits.TON)
            {
                Start_Stop_Stopwatch();
            }
            Reset_Stopwatch();
            incB = 0;
        }
        
    }
    
    else
    {
        //this should never happen
    }
}

/*
 * Function that will handle the triggering of the alarm
 */
void check_Alarm(void)
{
    //We've reached the time when we want the alarm to go off
    //If alarmEnable is on then we should blink an LED for four seconds
    if((AHOUR == rtc_getHour()) && (AMINUTE == rtc_getMinute()) && (rtc_getSecond() < 4) && alarmEnable)
    {
        //Use mod 2 to "blink" the LED for first four seconds once we have
        //reached the hour and minute of the alarm
        PORTBbits.RB2 = !(rtc_getSecond() % 2);
    }
    else
    {
        //PORTBbits.RB2 = 0;
    }
    
}

void button_StartNonBlockingDelay(int ms)
{
    PR2 = floor(ms / (.016));
    buttonDebounceTimeout = 0;
    T2CONbits.TON = 1;
}

/*
 * The below function sets up the interactive buttons and allows for those button to be usable. Must be set before the infinite loop 
 */
void init_interactivebuttons(void)
{
    //this is where we will set the input and output configuration 
    //this should be setting portb ports 0-3 to input where we can read what is being pressed
    TRISB |= 0b1111000000000000;        //setting up RB15-RB14 to input ports 
             //5432109876543210
     
    PR2=31250;                //flag will trigger every 500 ms
    T2CON = 0x0000;         //sets TMR2 to take an external clock
    TMR2 = 0;
    IEC0bits.T2IE = 1;
    T2CONbits.TCKPS = 0b11; //1:64 pre-scaler
    T2CONbits.TON = 0;
    _T2IF = 0;
    
    //these ports will read high when there is not click but read low when a click occurs because they will short        
    //this is where we will set the pull up resistor
    //setting a pullup module on device pins 23-26  or RP(12-15) or RB(12-15)
    CNPU1bits.CN11PUE = 1;      //RB15
    CNPU1bits.CN12PUE = 1;      //RB14
    CNPU1bits.CN13PUE = 1;      //RB13
    CNPU1bits.CN14PUE = 1;      //RB12
    
}

void init_Stopwatch(void)
{
    PR1=328;                //flag will trigger every 0.01 seconds
    T1CON = 0x0006;         //sets TMR1 to take an external clock
    TMR1 = 0;
    IEC0bits.T1IE = 1;
    IPC0bits.T1IP = 3;
    T1CONbits.TON = 0;
    _T1IF = 0;
}

void Reset_Stopwatch(void)
{
	StopwatchOverflow = 0;
    lcd_write_string("0:00:00", 28, 28);        
}

void Start_Stop_Stopwatch(void)
{
    TMR1 = 0;
    if(T1CONbits.TON)
    {
        T1CONbits.TON = 0;
    }
    else
    {
        T1CONbits.TON = 1;
    }
}

void Stopwatch_updateTime(void)
{
    lcd_clear(0);
    //if(t1Flag)
    //{
        t1Flag = 0;
        char NewTime[7];    //very janky way of updating the time
        char cDigit[4];
        
        //calculating minutes
        unsigned long int csecs = StopwatchOverflow; //this is in centi-seconds
        unsigned long int secs = csecs * 0.01f;
        unsigned long int min = floor(secs / 60);
        secs = floor(secs - (min * 60));
        csecs = (csecs - (secs * 100) - (6000*min));
        
        memset(NewTime,0,sizeof(NewTime));
        
        sprintf(cDigit, "%lu", min);
        strcat(NewTime, cDigit);
        strcat(NewTime, ":");
        
        if(secs < 10)
        {
           sprintf(cDigit, "0%lu", secs); 
        }
        else
        {
            sprintf(cDigit, "%lu", secs);
        }
        strcat(NewTime, cDigit);
        strcat(NewTime, ":");
        
        if(csecs < 10)
        {
           sprintf(cDigit, "0%lu", csecs); 
        }
        else
        {
            sprintf(cDigit, "%lu", csecs);
        }
        strcat(NewTime, cDigit);
        
        lcd_write_string(NewTime, 28, 28);
        
    //}
}

void watch_setup(void)
{
    init_Stopwatch();
    init_interactivebuttons();
}

//
