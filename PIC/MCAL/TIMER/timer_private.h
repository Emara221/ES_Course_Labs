#ifndef TIMER_PRIVATE_H
#define TIMER_PRIVATE_H

#include "../../SERVICES/std_types.h"

#define OPTION_REG_REG  *((volatile unsigned char*) 0x81)
#define TMR0_REG        *((volatile unsigned char*) 0x01)
#define INTCON_REG      *((volatile unsigned char*) 0x0B)

#define T0CS  5
#define PSA   3
#define PS2   2
#define PS1   1
#define PS0   0
#define T0IE  5
#define GIE   7

#endif