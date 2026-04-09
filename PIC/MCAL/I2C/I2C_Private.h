#ifndef I2C_PRIVATE_H
#define I2C_PRIVATE_H

#include "../../SERVICES/std_types.h"


#define SSPBUF_REG   *((volatile u8*) 0x13)  
#define SSPCON_REG   *((volatile u8*) 0x14)  
#define SSPCON2_REG  *((volatile u8*) 0x91)  
#define SSPADD_REG   *((volatile u8*) 0x93)  
#define SSPSTAT_REG  *((volatile u8*) 0x94)  


#define R_W_BIT      2   


#define SEN_BIT      0   
#define PEN_BIT      2   


#define SSPCON2_IDLE_MASK   0x1F

#endif