#include "util.h"

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

//
