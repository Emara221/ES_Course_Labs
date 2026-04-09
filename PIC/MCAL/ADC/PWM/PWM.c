#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "PWM_Private.h"
#include "PWM_Interface.h"

void PWM_Init(void) {
    
    PR2_REG = 0xFF; 
    
    
    CCP1CON_REG = 0x0C; 
    
    
    T2CON_REG = 0x04; 
}

void PWM_SetDutyCycle(uint8 duty_percent) {
    uint16 duty_val;
    
    
    if(duty_percent > 100) duty_percent = 100;
    
    
    duty_val = ((uint16)duty_percent * 1023) / 100;
    
    
    CCPR1L_REG = (uint8)(duty_val >> 2);
    
    
    CCP1CON_REG &= 0xCF; // Clear bits 4 and 5
    CCP1CON_REG |= ((duty_val & 0x03) << 4);
}