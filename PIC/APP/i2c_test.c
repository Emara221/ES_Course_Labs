#include "../SERVICES/std_types.h"
#include "../MCAL/I2C/I2C_Interface.h"
#include "../MCAL/GPIO/gpio_interface.h"

void I2C_Test(void) {
    uint32 delay;

    GPIO_SetPinDirection(PORTC, PIN3, INPUT);
    GPIO_SetPinDirection(PORTC, PIN4, INPUT);

    I2C_InitMaster();

    while(1) {
        I2C_Start();
        I2C_Write(0xA0); // Example Slave Address (Write Mode)
        I2C_Write(0x00); // Internal Register Address
        I2C_Write(0x55); // Data payload to send
        I2C_Stop();
        
        for(delay = 0; delay < 100000; delay++);
    }
}