#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "../GPIO/gpio_interface.h"   
#include "PWM_Private.h"
#include "PWM_Interface.h"


void PWM_Init(void) {
    
    PR2_REG = 0xFF;

    
    CCP1CON_REG = 0x0C;

    
    GPIO_SetPinDirection(_PORTC, PIN2, OUTPUT);

    
    T2CON_REG = 0x04;
}


void PWM_SetDutyCycle(u8 duty_percent) {
    u16 duty_val;
    u8  lsb_bits;

    
    if (duty_percent > 100) {
        duty_percent = 100;
    }

    
    duty_val = ((u16)duty_percent * 1023U) / 100U;

    
    CCPR1L_REG = (u8)(duty_val >> 2);

    
    lsb_bits    = (u8)((duty_val & 0x03U) << 4);
    CCP1CON_REG = (CCP1CON_REG & 0xCF) | lsb_bits;
}