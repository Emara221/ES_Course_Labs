#ifndef PWM_PRIVATE_H
#define PWM_PRIVATE_H

#include "../../SERVICES/std_types.h"


#define T2CON_REG    *((volatile u8*) 0x12)  
#define CCPR1L_REG   *((volatile u8*) 0x15)  
#define CCP1CON_REG  *((volatile u8*) 0x17)  
#define PR2_REG      *((volatile u8*) 0x92)  

#endif