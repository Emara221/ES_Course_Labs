#include "../SERVICES/std_types.h"
#include "../MCAL/PWM/PWM_Interface.h"
#include "../MCAL/GPIO/gpio_interface.h"

void PWM_Test(void) {
    uint8 duty = 0;
    uint32 delay;

    GPIO_SetPinDirection(PORTC, PIN2, OUTPUT);

    PWM_Init();

    while(1) {
        for(duty = 0; duty <= 100; duty += 10) {
            PWM_SetDutyCycle(duty);
            for(delay = 0; delay < 10000; delay++); // Simple delay
        }
        
        for(duty = 100; duty > 0; duty -= 10) {
            PWM_SetDutyCycle(duty);
            for(delay = 0; delay < 10000; delay++); // Simple delay
        }
    }
}
