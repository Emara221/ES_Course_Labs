#include "../SERVICES/std_types.h"
#include "../SERVICES/bit_math.h"
#include "ext_int_interface.h"
#include "ext_int_private.h"
#include "TIMER/timer_interface.h"
static void (*ext_int_callback)(void) = 0;
void EXT_INTO_Init(void) {
    set_pin_direction(_PORTB, 0, INPUT);
    CLR_BIT(INTCON_REG, INT0IF);
}
void EXT_INTO_Enable(void) {
    SET_BIT(INTCON_REG, INT0E);
    SET_BIT(INTCON_REG, GIE);
}
void EXT_INTO_SetEdge(u8 edge_type) {
    if(edge_type == 1) {
        SET_BIT(OPTION_REG_REG, INTEDG);
    } else {
        CLR_BIT(OPTION_REG_REG, INTEDG);
    }
}
void EXT_INTO_SetCallback(void (*ptr)(void)) {
    ext_int_callback = ptr;
}
void interrupt(void) {
    if(GET_BIT(INTCON_REG, INT0IF)) {
        if(ext_int_callback != 0) {
            ext_int_callback();
        }
        CLR_BIT(INTCON_REG, INT0IF);
    }
    if(GET_BIT(INTCON_REG, T0IF)) {
        TIMER0_ISR_Handler();
        CLR_BIT(INTCON_REG, T0IF);
    }
}
