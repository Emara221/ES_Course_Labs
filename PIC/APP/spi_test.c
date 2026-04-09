#include "../SERVICES/std_types.h"
#include "../MCAL/SPI/SPI_Interface.h"
#include "../MCAL/GPIO/gpio_interface.h"

void SPI_Test(void) {
    uint8 received_val;
    uint32 delay;

    GPIO_SetPinDirection(PORTC, PIN3, OUTPUT);
    GPIO_SetPinDirection(PORTC, PIN4, INPUT);
    GPIO_SetPinDirection(PORTC, PIN5, OUTPUT);

    SPI_InitMaster();

    while(1) {
        received_val = SPI_Transceive(0xAA);
        
        for(delay = 0; delay < 50000; delay++);
    }
}