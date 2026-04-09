#line 1 "D:/University/Spring_26/Embedded/Timer/MCAL/GPIO/gpio_implementation.c"
#line 1 "d:/university/spring_26/embedded/timer/mcal/gpio/../../services/std_types.h"




typedef unsigned char u8;
typedef signed short int s16;
typedef unsigned short int u16;
typedef unsigned long int u32;

typedef u8 uint8;
typedef u16 uint16;
typedef u32 uint32;



typedef unsigned char bool_t;
#line 1 "d:/university/spring_26/embedded/timer/mcal/gpio/../../services/bit_math.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/gpio/gpio_interface.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/gpio/../../services/std_types.h"
#line 29 "d:/university/spring_26/embedded/timer/mcal/gpio/gpio_interface.h"
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
#line 1 "d:/university/spring_26/embedded/timer/mcal/gpio/gpio_private.h"
#line 1 "d:/university/spring_26/embedded/timer/mcal/gpio/../../services/std_types.h"
#line 5 "D:/University/Spring_26/Embedded/Timer/MCAL/GPIO/gpio_implementation.c"
void GPIO_SetPinDirection(u8 port, u8 pin, u8 direction) {
 switch(port) {
 case  0 :
 if(direction ==  0 ) {  ( *((volatile unsigned char*) 0x85)  &= ~(1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x85)  |= (1 << pin)) ; }
 break;
 case  1 :
 if(direction ==  0 ) {  ( *((volatile unsigned char*) 0x86)  &= ~(1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x86)  |= (1 << pin)) ; }
 break;
 case  2 :
 if(direction ==  0 ) {  ( *((volatile unsigned char*) 0x87)  &= ~(1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x87)  |= (1 << pin)) ; }
 break;
 case  3 :
 if(direction ==  0 ) {  ( *((volatile unsigned char*) 0x88)  &= ~(1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x88)  |= (1 << pin)) ; }
 break;
 case  4 :
 if(direction ==  0 ) {  ( *((volatile unsigned char*) 0x89)  &= ~(1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x89)  |= (1 << pin)) ; }
 break;
 }
}
void GPIO_SetPinValue(u8 port, u8 pin, u8 value) {
 switch(port) {
 case  0 :
 if(value ==  1 ) {  ( *((volatile unsigned char*) 0x05)  |= (1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x05)  &= ~(1 << pin)) ; }
 break;
 case  1 :
 if(value ==  1 ) {  ( *((volatile unsigned char*) 0x06)  |= (1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x06)  &= ~(1 << pin)) ; }
 break;
 case  2 :
 if(value ==  1 ) {  ( *((volatile unsigned char*) 0x07)  |= (1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x07)  &= ~(1 << pin)) ; }
 break;
 case  3 :
 if(value ==  1 ) {  ( *((volatile unsigned char*) 0x08)  |= (1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x08)  &= ~(1 << pin)) ; }
 break;
 case  4 :
 if(value ==  1 ) {  ( *((volatile unsigned char*) 0x09)  |= (1 << pin)) ; }
 else {  ( *((volatile unsigned char*) 0x09)  &= ~(1 << pin)) ; }
 break;
 }
}
u8 GPIO_GetPinValue(u8 port, u8 pin) {
 u8 pin_value = 0;
 switch(port) {
 case  0 : pin_value =  (( *((volatile unsigned char*) 0x05)  >> pin) & 1) ; break;
 case  1 : pin_value =  (( *((volatile unsigned char*) 0x06)  >> pin) & 1) ; break;
 case  2 : pin_value =  (( *((volatile unsigned char*) 0x07)  >> pin) & 1) ; break;
 case  3 : pin_value =  (( *((volatile unsigned char*) 0x08)  >> pin) & 1) ; break;
 case  4 : pin_value =  (( *((volatile unsigned char*) 0x09)  >> pin) & 1) ; break;
 default: pin_value = 0; break;
 }
 return pin_value;
}
void GPIO_TogglePin(u8 port, u8 pin) {
 switch(port) {
 case  0 :  *((volatile unsigned char*) 0x05)  ^= (1 << pin); break;
 case  1 :  *((volatile unsigned char*) 0x06)  ^= (1 << pin); break;
 case  2 :  *((volatile unsigned char*) 0x07)  ^= (1 << pin); break;
 case  3 :  *((volatile unsigned char*) 0x08)  ^= (1 << pin); break;
 case  4 :  *((volatile unsigned char*) 0x09)  ^= (1 << pin); break;
 }
}
void GPIO_SetPortDirection(u8 port, u8 direction) {
 u8 value = (direction ==  0 ) ? 0x00 : 0xFF;
 switch(port) {
 case  0 :  *((volatile unsigned char*) 0x85)  = value; break;
 case  1 :  *((volatile unsigned char*) 0x86)  = value; break;
 case  2 :  *((volatile unsigned char*) 0x87)  = value; break;
 case  3 :  *((volatile unsigned char*) 0x88)  = value; break;
 case  4 :  *((volatile unsigned char*) 0x89)  = value; break;
 }
}
void GPIO_SetPortValue(u8 port, u8 value) {
 switch(port) {
 case  0 :  *((volatile unsigned char*) 0x05)  = value; break;
 case  1 :  *((volatile unsigned char*) 0x06)  = value; break;
 case  2 :  *((volatile unsigned char*) 0x07)  = value; break;
 case  3 :  *((volatile unsigned char*) 0x08)  = value; break;
 case  4 :  *((volatile unsigned char*) 0x09)  = value; break;
 }
}
void set_pin_direction(u8 port, u8 pin, u8 direction) { GPIO_SetPinDirection(port, pin, direction); }
void set_pin_value (u8 port, u8 pin, u8 value) { GPIO_SetPinValue(port, pin, value); }
u8 get_pin_value (u8 port, u8 pin) { return GPIO_GetPinValue(port, pin); }
void toggle_pin (u8 port, u8 pin) { GPIO_TogglePin(port, pin); }
