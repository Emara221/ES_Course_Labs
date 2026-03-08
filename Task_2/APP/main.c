#include "../HAL/LED/LED_interface.h"        /* [cite: 2] */
#include "../MCAL/ext_int_interface.h"

u16 interrupt_count = 0;
u8  seconds_elapsed = 0;





void Toggle_LED_Callback(void) {

    PORTC ^= (1 << 0);
}

int main() {

    LED_Init(_PORTC, 0);


    EXT_INTO_Init();
    EXT_INTO_SetEdge(1);


    EXT_INTO_SetCallback(Toggle_LED_Callback);


    EXT_INTO_Enable();

    while(1) {

    }

    return 0;
}