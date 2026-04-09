#line 1 "D:/University/Spring_26/Embedded/Timer/MCAL/SPI/SPI.c"
#line 1 "d:/university/spring_26/embedded/timer/mcal/spi/../../services/std_types.h"




typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef u8 uint8;
typedef u16 uint16;
typedef u32 uint32;



typedef unsigned char bool_t;
#line 1 "d:/university/spring_26/embedded/timer/mcal/spi/../../services/bit_math.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/spi/spi_private.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/spi/../../services/std_types.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/spi/spi_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/spi/../../services/std_types.h"
#line 6 "d:/university/spring_26/embedded/timer/mcal/spi/spi_interface.h"
void SPI_InitMaster(void);
unsigned char SPI_Transceive(unsigned char tx_byte);
#line 6 "D:/University/Spring_26/Embedded/Timer/MCAL/SPI/SPI.c"
void SPI_InitMaster(void) {

  *((volatile unsigned char*) 0x14)  = 0x20;


  *((volatile unsigned char*) 0x94)  = 0x00;
}

unsigned char SPI_Transceive(unsigned char tx_byte) {

  *((volatile unsigned char*) 0x13)  = tx_byte;


 while( (( *((volatile unsigned char*) 0x94)  >> 0 ) & 1)  == 0);


 return  *((volatile unsigned char*) 0x13) ;
}
