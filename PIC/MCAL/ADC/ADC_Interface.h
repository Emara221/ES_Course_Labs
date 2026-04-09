#ifndef ADC_INTERFACE_H
#define ADC_INTERFACE_H

#include "../../SERVICES/std_types.h"

void ADC_Init(void);
uint16 ADC_Read(uint8 channel);

#endif