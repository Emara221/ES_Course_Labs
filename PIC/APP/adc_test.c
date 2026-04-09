#include "../SERVICES/std_types.h"
#include "../MCAL/ADC/ADC_Interface.h"
#include "../MCAL/GPIO/gpio_interface.h"

void ADC_Test(void) {
    uint16 digital_value = 0;

    GPIO_SetPortDirection(PORTB, 0x00);
    GPIO_SetPortDirection(PORTD, 0x00);

    ADC_Init();

    while(1) {
        digital_value = ADC_Read(0);

        GPIO_SetPortValue(PORTB, (uint8)digital_value);
        GPIO_SetPortValue(PORTD, (uint8)(digital_value >> 8));
    }
}