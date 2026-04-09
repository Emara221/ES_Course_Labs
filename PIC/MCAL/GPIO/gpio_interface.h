#ifndef _GPIO_INTERFACE_H
#define _GPIO_INTERFACE_H

#include "../../SERVICES/std_types.h"



#define INPUT  1
#define OUTPUT 0                      
#define HIGH   1                      
#define LOW    0                      


#define _PORTA 0
#define _PORTB 1
#define _PORTC 2
#define _PORTD 3
#define _PORTE 4

#define PIN0 0
#define PIN1 1
#define PIN2 2
#define PIN3 3
#define PIN4 4
#define PIN5 5
#define PIN6 6
#define PIN7 7

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

#endif