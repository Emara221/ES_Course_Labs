#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "gpio_interface.h"
#include "gpio_private.h"
void GPIO_SetPinDirection(u8 port, u8 pin, u8 direction) {
    switch(port) {
        case _PORTA:
            if(direction == OUTPUT) { CLR_BIT(TRISA_REG, pin); }
            else                    { SET_BIT(TRISA_REG, pin); }
            break;
        case _PORTB:
            if(direction == OUTPUT) { CLR_BIT(TRISB_REG, pin); }
            else                    { SET_BIT(TRISB_REG, pin); }
            break;
        case _PORTC:
            if(direction == OUTPUT) { CLR_BIT(TRISC_REG, pin); }
            else                    { SET_BIT(TRISC_REG, pin); }
            break;
        case _PORTD:
            if(direction == OUTPUT) { CLR_BIT(TRISD_REG, pin); }
            else                    { SET_BIT(TRISD_REG, pin); }
            break;
        case _PORTE:
            if(direction == OUTPUT) { CLR_BIT(TRISE_REG, pin); }
            else                    { SET_BIT(TRISE_REG, pin); }
            break;
    }
}
void GPIO_SetPinValue(u8 port, u8 pin, u8 value) {
    switch(port) {
        case _PORTA:
            if(value == HIGH) { SET_BIT(PORTA_REG, pin); }
            else              { CLR_BIT(PORTA_REG, pin); }
            break;
        case _PORTB:
            if(value == HIGH) { SET_BIT(PORTB_REG, pin); }
            else              { CLR_BIT(PORTB_REG, pin); }
            break;
        case _PORTC:
            if(value == HIGH) { SET_BIT(PORTC_REG, pin); }
            else              { CLR_BIT(PORTC_REG, pin); }
            break;
        case _PORTD:
            if(value == HIGH) { SET_BIT(PORTD_REG, pin); }
            else              { CLR_BIT(PORTD_REG, pin); }
            break;
        case _PORTE:
            if(value == HIGH) { SET_BIT(PORTE_REG, pin); }
            else              { CLR_BIT(PORTE_REG, pin); }
            break;
    }
}
u8 GPIO_GetPinValue(u8 port, u8 pin) {
    u8 pin_value = 0;
    switch(port) {
        case _PORTA: pin_value = GET_BIT(PORTA_REG, pin); break;
        case _PORTB: pin_value = GET_BIT(PORTB_REG, pin); break;
        case _PORTC: pin_value = GET_BIT(PORTC_REG, pin); break;
        case _PORTD: pin_value = GET_BIT(PORTD_REG, pin); break;
        case _PORTE: pin_value = GET_BIT(PORTE_REG, pin); break;
        default:     pin_value = 0;                        break;
    }
    return pin_value;
}
void GPIO_TogglePin(u8 port, u8 pin) {
    switch(port) {
        case _PORTA: PORTA_REG ^= (1 << pin); break;
        case _PORTB: PORTB_REG ^= (1 << pin); break;
        case _PORTC: PORTC_REG ^= (1 << pin); break;
        case _PORTD: PORTD_REG ^= (1 << pin); break;
        case _PORTE: PORTE_REG ^= (1 << pin); break;
    }
}
void GPIO_SetPortDirection(u8 port, u8 direction) {
    u8 value = (direction == OUTPUT) ? 0x00 : 0xFF;
    switch(port) {
        case _PORTA: TRISA_REG = value; break;
        case _PORTB: TRISB_REG = value; break;
        case _PORTC: TRISC_REG = value; break;
        case _PORTD: TRISD_REG = value; break;
        case _PORTE: TRISE_REG = value; break;
    }
}
void GPIO_SetPortValue(u8 port, u8 value) {
    switch(port) {
        case _PORTA: PORTA_REG = value; break;
        case _PORTB: PORTB_REG = value; break;
        case _PORTC: PORTC_REG = value; break;
        case _PORTD: PORTD_REG = value; break;
        case _PORTE: PORTE_REG = value; break;
    }
}
void set_pin_direction(u8 port, u8 pin, u8 direction) { GPIO_SetPinDirection(port, pin, direction); }
void set_pin_value    (u8 port, u8 pin, u8 value)      { GPIO_SetPinValue(port, pin, value);         }
u8   get_pin_value    (u8 port, u8 pin)                { return GPIO_GetPinValue(port, pin);          }
void toggle_pin       (u8 port, u8 pin)                { GPIO_TogglePin(port, pin);                   }