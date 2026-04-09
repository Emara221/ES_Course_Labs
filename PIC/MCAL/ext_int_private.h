#ifndef EXT_INT_PRIVATE_H
#define EXT_INT_PRIVATE_H

#include "../SERVICES/std_types.h"

#define INTCON_REG      *((volatile unsigned char*) 0x0B)
#define OPTION_REG_REG  *((volatile unsigned char*) 0x81)

#define RBIF   0
#define INT0IF 1
#define T0IF   2
#define RBIE   3
#define INT0E  4
#define T0IE   5
#define INTEDG 6
#define GIE    7

#endif