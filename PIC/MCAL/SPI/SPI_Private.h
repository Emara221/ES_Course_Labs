#ifndef SPI_PRIVATE_H
#define SPI_PRIVATE_H

#include "../../SERVICES/std_types.h"


#define SSPSTAT_REG  *((volatile unsigned char*) 0x94)
#define SSPCON_REG   *((volatile unsigned char*) 0x14)
#define SSPBUF_REG   *((volatile unsigned char*) 0x13)
#define PIR1_REG     *((volatile unsigned char*) 0x0C)


#define SSPIF        3   
#define BF           0   

#endif