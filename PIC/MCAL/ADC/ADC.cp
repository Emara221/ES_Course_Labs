#line 1 "D:/University/Spring_26/Embedded/Timer/MCAL/ADC/ADC.c"
#line 1 "d:/university/spring_26/embedded/timer/mcal/adc/../../services/std_types.h"




typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef u8 uint8;
typedef u16 uint16;
typedef u32 uint32;



typedef unsigned char bool_t;
#line 1 "d:/university/spring_26/embedded/timer/mcal/adc/../../services/bit_math.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/adc/adc_private.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/adc/../../services/std_types.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/adc/adc_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/adc/../../services/std_types.h"
#line 6 "d:/university/spring_26/embedded/timer/mcal/adc/adc_interface.h"
void ADC_Init(void);
uint16 ADC_Read(uint8 channel);
#line 6 "D:/University/Spring_26/Embedded/Timer/MCAL/ADC/ADC.c"
void ADC_Init(void) {

  *((volatile unsigned char*) 0x1F)  = 0x81;
  *((volatile unsigned char*) 0x9F)  = 0x80;
}

uint16 ADC_Read(uint8 channel) {
 uint16 result = 0;
 uint16 delay;


  *((volatile unsigned char*) 0x1F)  &= 0xC5;
  *((volatile unsigned char*) 0x1F)  |= (channel << 3);


 for(delay = 0; delay < 100; delay++);


  ( *((volatile unsigned char*) 0x1F)  |= (1 << 2 )) ;


 while( (( *((volatile unsigned char*) 0x1F)  >> 2 ) & 1) );


 result = ((uint16) *((volatile unsigned char*) 0x1E)  << 8) |  *((volatile unsigned char*) 0x9E) ;

 return result;
}
