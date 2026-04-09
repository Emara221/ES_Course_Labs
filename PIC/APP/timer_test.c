#include "../SERVICES/std_types.h"
#include "../MCAL/TIMER/timer_interface.h"
#include "../MCAL/GPIO/gpio_interface.h"

static void Timer0_Callback(void) {
    GPIO_TogglePin(PORTD, 0);
}

void Timer0_Test(void) {
    GPIO_SetPinDirection(PORTD, 0, OUTPUT);
    TIMER0_SetCallback(Timer0_Callback);
    TIMER0_SetPreload(0);
    TIMER0_Init();

    while(1) {
        
    }
}
