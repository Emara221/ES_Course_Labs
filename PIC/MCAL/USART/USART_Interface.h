#ifndef USART_INTERFACE_H
#define USART_INTERFACE_H

#include "../../SERVICES/std_types.h"

void UART_Init(void);
void UART_Transmit(unsigned char tx_byte);
unsigned char UART_Receive(void);
void UART_TransmitString(const unsigned char* str);

#endif