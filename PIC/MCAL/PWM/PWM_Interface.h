#ifndef PWM_INTERFACE_H
#define PWM_INTERFACE_H

#include "../../SERVICES/std_types.h"

void PWM_Init(void);
void PWM_SetDutyCycle(u8 duty_percent);

#endif