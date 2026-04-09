#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "ADC_Private.h"
#include "ADC_Interface.h"

void ADC_Init(void) {
    
    ADCON0_REG = 0x81; 
    ADCON1_REG = 0x80; 
}

uint16 ADC_Read(uint8 channel) {
    uint16 result = 0;
    uint16 delay;

    
    ADCON0_REG &= 0xC5; 
    ADCON0_REG |= (channel << 3);

    
    for(delay = 0; delay < 100; delay++);

    
    SET_BIT(ADCON0_REG, GO_DONE);

    
    while(GET_BIT(ADCON0_REG, GO_DONE));

    
    result = ((uint16)ADRESH_REG << 8) | ADRESL_REG;
    
    return result;
}