#include "../MCAL/GPIO/gpio_interface.h"

void GPIO_Test(void) {
    unsigned long delay;

    GPIO_SetPortDirection(_PORTB, OUTPUT);

    while(1) {
        GPIO_SetPortValue(_PORTB, 0xFF);
        for(delay = 0; delay < 20000; delay++);

        GPIO_SetPortValue(_PORTB, 0x00);
        for(delay = 0; delay < 20000; delay++);
    }
}