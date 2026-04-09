#ifndef ADC_PRIVATE_H
#define ADC_PRIVATE_H

#include "../../SERVICES/std_types.h"


#define ADCON0_REG  *((volatile unsigned char*) 0x1F)
#define ADCON1_REG  *((volatile unsigned char*) 0x9F)
#define ADRESH_REG  *((volatile unsigned char*) 0x1E)
#define ADRESL_REG  *((volatile unsigned char*) 0x9E)


#define ADON        0
#define GO_DONE     2

#endif