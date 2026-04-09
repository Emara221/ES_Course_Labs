#include "../../SERVICES/std_types.h"
#include "../../SERVICES/bit_math.h"
#include "../GPIO/gpio_interface.h"   
#include "I2C_Private.h"
#include "I2C_Interface.h"


void I2C_Wait(void) {
    u8 stat_busy;
    u8 con2_busy;

    stat_busy = GET_BIT(SSPSTAT_REG, R_W_BIT);
    con2_busy = (SSPCON2_REG & SSPCON2_IDLE_MASK);

    while (stat_busy || con2_busy) {
        stat_busy = GET_BIT(SSPSTAT_REG, R_W_BIT);
        con2_busy = (SSPCON2_REG & SSPCON2_IDLE_MASK);
    }
}


void I2C_InitMaster(void) {
    
    GPIO_SetPinDirection(_PORTC, PIN3, INPUT);   
    GPIO_SetPinDirection(_PORTC, PIN4, INPUT);   

    
    SSPADD_REG = 19;

    
    SSPSTAT_REG = 0x00;

    
    SSPCON_REG = 0x28;
}


void I2C_Start(void) {
    SET_BIT(SSPCON2_REG, SEN_BIT);
    I2C_Wait();
}


void I2C_Stop(void) {
    SET_BIT(SSPCON2_REG, PEN_BIT);
    I2C_Wait();
}


void I2C_Write(u8 tx_byte) {
    SSPBUF_REG = tx_byte;
    I2C_Wait();
}