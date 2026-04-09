#line 1 "D:/University/Spring_26/Embedded/Timer/MCAL/TIMER/timer_implementation.c"
#line 1 "d:/university/spring_26/embedded/timer/mcal/timer/../../services/std_types.h"




typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef u8 uint8;
typedef u16 uint16;
typedef u32 uint32;



typedef unsigned char bool_t;
#line 1 "d:/university/spring_26/embedded/timer/mcal/timer/../../services/bit_math.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/timer/timer_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/timer/../../services/std_types.h"
#line 6 "d:/university/spring_26/embedded/timer/mcal/timer/timer_interface.h"
void TIMER0_Init(void);
void TIMER0_SetPreload(u8 preload);
void TIMER0_SetCallback(void (*ptr)(void));
void TIMER0_ISR_Handler(void);
#line 1 "d:/university/spring_26/embedded/timer/mcal/timer/timer_private.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/timer/../../services/std_types.h"
#line 5 "D:/University/Spring_26/Embedded/Timer/MCAL/TIMER/timer_implementation.c"
static void (*timer_callback)(void) = 0;
void TIMER0_ISR_Handler(void)
{
 if(timer_callback != 0)
 {
 timer_callback();
 }
}
void TIMER0_Init(void)
{
  ( *((volatile unsigned char*) 0x81)  &= ~(1 << 5 )) ;
  ( *((volatile unsigned char*) 0x81)  &= ~(1 << 3 )) ;
  ( *((volatile unsigned char*) 0x81)  |= (1 << 2 )) ;
  ( *((volatile unsigned char*) 0x81)  |= (1 << 1 )) ;
  ( *((volatile unsigned char*) 0x81)  |= (1 << 0 )) ;
  ( *((volatile unsigned char*) 0x0B)  |= (1 << 5 )) ;
  ( *((volatile unsigned char*) 0x0B)  |= (1 << 7 )) ;
}
void TIMER0_SetPreload(u8 preload)
{
  *((volatile unsigned char*) 0x01)  = preload;
}
void TIMER0_SetCallback(void (*ptr)(void))
{
 timer_callback = ptr;
}
