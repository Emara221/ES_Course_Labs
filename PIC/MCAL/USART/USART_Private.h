#ifndef USART_PRIVATE_H
#define USART_PRIVATE_H


#define TXSTA_REG  *((volatile unsigned char*) 0x98)
#define RCSTA_REG  *((volatile unsigned char*) 0x18)
#define TXREG_REG  *((volatile unsigned char*) 0x19)
#define RCREG_REG  *((volatile unsigned char*) 0x1A)
#define SPBRG_REG  *((volatile unsigned char*) 0x99)


#define TXEN  5
#define BRGH  2


#define SPEN  7
#define CREN  4


#define PIR1_REG   *((volatile unsigned char*) 0x0C)
#define TXIF  4
#define RCIF  5

#endif