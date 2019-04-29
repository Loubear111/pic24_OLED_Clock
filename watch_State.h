/* 
 * File:   watch_State_header.h
 * Author: Bharath Muniraj
 *
 * Created on April 24, 2019, 9:35 PM
 */

#ifndef WATCH_STATE_H
#define	WATCH_STATE_H

#ifdef	__cplusplus
extern "C" {
#endif

    
void init_interactivebuttons(void);
int checkButton(int button); 
void wait(int ms); 
    
//extern int state;
//extern int edit; 
int watch_getState(void);
int watch_getEditState(void);
void watch_updateState(void); 
void watch_update(void);


#ifdef	__cplusplus
}
#endif

#endif	/* WATCH_STATE_HEADER_H */

