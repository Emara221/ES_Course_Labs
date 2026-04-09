#line 1 "D:/University/Spring_26/Embedded/Timer/HAL/LED/LED_implementation.c"
#line 1 "d:/university/spring_26/embedded/timer/hal/led/../../services/std_types.h"




typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef u8 uint8;
typedef u16 uint16;
typedef u32 uint32;



typedef unsigned char bool_t;
#line 1 "d:/university/spring_26/embedded/timer/hal/led/led_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/hal/led/../../services/std_types.h"
#line 1 "d:/university/spring_26/embedded/timer/hal/led/../../mcal/gpio/gpio_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/hal/led/../../mcal/gpio/../../services/std_types.h"
#line 29 "d:/university/spring_26/embedded/timer/hal/led/../../mcal/gpio/gpio_interface.h"
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
#line 7 "d:/university/spring_26/embedded/timer/hal/led/led_interface.h"
void LED_Init(u8 port, u8 pin);
void LED_ON(u8 port, u8 pin);
void LED_OFF(u8 port, u8 pin);
void LED_Toggle(u8 port, u8 pin);
#line 4 "D:/University/Spring_26/Embedded/Timer/HAL/LED/LED_implementation.c"
void LED_Init(u8 port, u8 pin) {
 set_pin_direction(port, pin,  0 );
}

void LED_ON(u8 port, u8 pin) {
 set_pin_value(port, pin,  1 );
}

void LED_OFF(u8 port, u8 pin) {
 set_pin_value(port, pin,  0 );
}
void LED_Toggle(u8 port, u8 pin) {
 toggle_pin(port, pin);
}
