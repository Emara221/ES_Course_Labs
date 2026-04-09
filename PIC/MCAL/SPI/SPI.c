#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "SPI_Private.h"
#include "SPI_Interface.h"

void SPI_InitMaster(void) {
    
    SSPCON_REG = 0x20; 
    
    
    SSPSTAT_REG = 0x00; 
}

unsigned char SPI_Transceive(unsigned char tx_byte) {
    
    SSPBUF_REG = tx_byte;
    
    
    while(GET_BIT(SSPSTAT_REG, BF) == 0);
    
    
    return SSPBUF_REG;
}