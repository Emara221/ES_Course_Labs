#line 1 "D:/University/Spring_26/Embedded/Timer/MCAL/I2C/I2C.c"
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/../../services/std_types.h"




typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef u8 uint8;
typedef u16 uint16;
typedef u32 uint32;



typedef unsigned char bool_t;
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/../../services/bit_math.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/../gpio/gpio_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/../gpio/../../services/std_types.h"
#line 29 "d:/university/spring_26/embedded/timer/mcal/i2c/../gpio/gpio_interface.h"
void GPIO_SetPinDirection(u8 port, u8 pin, u8 direction);
void GPIO_SetPinValue(u8 port, u8 pin, u8 value);
u8 GPIO_GetPinValue(u8 port, u8 pin);
void GPIO_TogglePin(u8 port, u8 pin);

void GPIO_SetPortDirection(u8 port, u8 direction);
void GPIO_SetPortValue(u8 port, u8 value);

void set_pin_direction(u8 port, u8 pin, u8 direction);
void set_pin_value(u8 port, u8 pin, u8 value);
u8 get_pin_value(u8 port, u8 pin);
void toggle_pin(u8 port, u8 pin);
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/i2c_private.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/../../services/std_types.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/i2c_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/i2c/../../services/std_types.h"
#line 6 "d:/university/spring_26/embedded/timer/mcal/i2c/i2c_interface.h"
void I2C_InitMaster(void);
void I2C_Wait(void);
void I2C_Start(void);
void I2C_Stop(void);
void I2C_Write(u8 tx_byte);
#line 8 "D:/University/Spring_26/Embedded/Timer/MCAL/I2C/I2C.c"
void I2C_Wait(void) {
 u8 stat_busy;
 u8 con2_busy;

 stat_busy =  (( *((volatile u8*) 0x94)  >> 2 ) & 1) ;
 con2_busy = ( *((volatile u8*) 0x91)  &  0x1F );

 while (stat_busy || con2_busy) {
 stat_busy =  (( *((volatile u8*) 0x94)  >> 2 ) & 1) ;
 con2_busy = ( *((volatile u8*) 0x91)  &  0x1F );
 }
}


void I2C_InitMaster(void) {

 GPIO_SetPinDirection( 2 ,  3 ,  1 );
 GPIO_SetPinDirection( 2 ,  4 ,  1 );


  *((volatile u8*) 0x93)  = 19;


  *((volatile u8*) 0x94)  = 0x00;


  *((volatile u8*) 0x14)  = 0x28;
}


void I2C_Start(void) {
  ( *((volatile u8*) 0x91)  |= (1 << 0 )) ;
 I2C_Wait();
}


void I2C_Stop(void) {
  ( *((volatile u8*) 0x91)  |= (1 << 2 )) ;
 I2C_Wait();
}


void I2C_Write(u8 tx_byte) {
  *((volatile u8*) 0x13)  = tx_byte;
 I2C_Wait();
}
