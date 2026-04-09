#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "USART_Private.h"
#include "USART_Config.h"
#include "USART_Interface.h"

void UART_Init(void) {
    SPBRG_REG = 51; 
    
    SET_BIT(TXSTA_REG, BRGH); // High Baud Rate Select bit
    CLR_BIT(TXSTA_REG, 4);  // SYNC = 0: Asynchronous mode
    SET_BIT(TXSTA_REG, TXEN); // Enable Transmission
    
    SET_BIT(RCSTA_REG, SPEN); // Serial Port Enable bit
    SET_BIT(RCSTA_REG, CREN); // Continuous Receive Enable bit
}

void UART_Transmit(unsigned char tx_byte) {
    while(GET_BIT(PIR1_REG, TXIF) == 0);
    TXREG_REG = tx_byte;
}

unsigned char UART_Receive(void) {
    while(GET_BIT(PIR1_REG, RCIF) == 0);
    return RCREG_REG;
}

void UART_TransmitString(const unsigned char* str) {
    unsigned char i = 0;
    while (str[i] != '\0') {
        UART_Transmit(str[i]);
        i++;
    }
}