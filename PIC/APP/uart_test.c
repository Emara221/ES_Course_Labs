#include "../SERVICES/std_types.h"
#include "../MCAL/USART/USART_Interface.h"
#include "../HAL/LED/LED_interface.h"
void UART_Test(void) {
    uint8 received_data;
    LED_Init(_PORTA, 0);
    UART_Init();
    while(1) {
        received_data = UART_Receive();
        UART_Transmit(received_data);
        if(received_data == 'A') {
            LED_ON(_PORTA, 0);
        } else {
            LED_OFF(_PORTA, 0);
        }
    }
}
