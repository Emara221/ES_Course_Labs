#ifndef SPI_INTERFACE_H
#define SPI_INTERFACE_H

#include "../../SERVICES/std_types.h"

void SPI_InitMaster(void);
unsigned char SPI_Transceive(unsigned char tx_byte);

#endif