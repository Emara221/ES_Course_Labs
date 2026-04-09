#include "../SERVICES/std_types.h"
#include "../MCAL/ext_int_interface.h"
#include "../MCAL/GPIO/gpio_interface.h"

static void ExtInt_Callback(void) {
    GPIO_TogglePin(PORTD, 0);
}

void EXT_INT_Test(void) {
    GPIO_SetPinDirection(PORTD, 0, OUTPUT);
    EXT_INTO_Init();
    EXT_INTO_SetEdge(1);
    EXT_INTO_SetCallback(ExtInt_Callback);
    EXT_INTO_Enable();

    while(1) {
        
    }
}
