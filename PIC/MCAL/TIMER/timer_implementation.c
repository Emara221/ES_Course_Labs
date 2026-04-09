#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "timer_interface.h"
#include "timer_private.h"
static void (*timer_callback)(void) = 0;
void TIMER0_ISR_Handler(void)
{
    if(timer_callback != 0)
    {
        timer_callback();
    }
}
void TIMER0_Init(void)
{
    CLR_BIT(OPTION_REG_REG, T0CS);
    CLR_BIT(OPTION_REG_REG, PSA);
    SET_BIT(OPTION_REG_REG, PS2);
    SET_BIT(OPTION_REG_REG, PS1);
    SET_BIT(OPTION_REG_REG, PS0);
    SET_BIT(INTCON_REG, T0IE);
    SET_BIT(INTCON_REG, GIE);
}
void TIMER0_SetPreload(u8 preload)
{
    TMR0_REG = preload;
}
void TIMER0_SetCallback(void (*ptr)(void))
{
    timer_callback = ptr;
}
