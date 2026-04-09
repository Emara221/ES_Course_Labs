
_I2C_Wait:

;I2C.c,8 :: 		void I2C_Wait(void) {
;I2C.c,12 :: 		stat_busy = GET_BIT(SSPSTAT_REG, R_W_BIT);
	MOVF       148, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVLW      1
	ANDWF      R1+0, 1
;I2C.c,13 :: 		con2_busy = (SSPCON2_REG & SSPCON2_IDLE_MASK);
	MOVLW      31
	ANDWF      145, 0
	MOVWF      R2+0
;I2C.c,15 :: 		while (stat_busy || con2_busy) {
L_I2C_Wait0:
	MOVF       R1+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__I2C_Wait4
	MOVF       R2+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__I2C_Wait4
	GOTO       L_I2C_Wait1
L__I2C_Wait4:
;I2C.c,16 :: 		stat_busy = GET_BIT(SSPSTAT_REG, R_W_BIT);
	MOVF       148, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	MOVLW      1
	ANDWF      R1+0, 1
;I2C.c,17 :: 		con2_busy = (SSPCON2_REG & SSPCON2_IDLE_MASK);
	MOVLW      31
	ANDWF      145, 0
	MOVWF      R2+0
;I2C.c,18 :: 		}
	GOTO       L_I2C_Wait0
L_I2C_Wait1:
;I2C.c,19 :: 		}
L_end_I2C_Wait:
	RETURN
; end of _I2C_Wait

_I2C_InitMaster:

;I2C.c,22 :: 		void I2C_InitMaster(void) {
;I2C.c,24 :: 		GPIO_SetPinDirection(_PORTC, PIN3, INPUT);
	MOVLW      2
	MOVWF      FARG_GPIO_SetPinDirection_port+0
	MOVLW      3
	MOVWF      FARG_GPIO_SetPinDirection_pin+0
	MOVLW      1
	MOVWF      FARG_GPIO_SetPinDirection_direction+0
	CALL       _GPIO_SetPinDirection+0
;I2C.c,25 :: 		GPIO_SetPinDirection(_PORTC, PIN4, INPUT);
	MOVLW      2
	MOVWF      FARG_GPIO_SetPinDirection_port+0
	MOVLW      4
	MOVWF      FARG_GPIO_SetPinDirection_pin+0
	MOVLW      1
	MOVWF      FARG_GPIO_SetPinDirection_direction+0
	CALL       _GPIO_SetPinDirection+0
;I2C.c,28 :: 		SSPADD_REG = 19;
	MOVLW      19
	MOVWF      147
;I2C.c,31 :: 		SSPSTAT_REG = 0x00;
	CLRF       148
;I2C.c,34 :: 		SSPCON_REG = 0x28;
	MOVLW      40
	MOVWF      20
;I2C.c,35 :: 		}
L_end_I2C_InitMaster:
	RETURN
; end of _I2C_InitMaster

_I2C_Start:

;I2C.c,38 :: 		void I2C_Start(void) {
;I2C.c,39 :: 		SET_BIT(SSPCON2_REG, SEN_BIT);
	BSF        145, 0
;I2C.c,40 :: 		I2C_Wait();
	CALL       _I2C_Wait+0
;I2C.c,41 :: 		}
L_end_I2C_Start:
	RETURN
; end of _I2C_Start

_I2C_Stop:

;I2C.c,44 :: 		void I2C_Stop(void) {
;I2C.c,45 :: 		SET_BIT(SSPCON2_REG, PEN_BIT);
	BSF        145, 2
;I2C.c,46 :: 		I2C_Wait();
	CALL       _I2C_Wait+0
;I2C.c,47 :: 		}
L_end_I2C_Stop:
	RETURN
; end of _I2C_Stop

_I2C_Write:

;I2C.c,50 :: 		void I2C_Write(u8 tx_byte) {
;I2C.c,51 :: 		SSPBUF_REG = tx_byte;
	MOVF       FARG_I2C_Write_tx_byte+0, 0
	MOVWF      19
;I2C.c,52 :: 		I2C_Wait();
	CALL       _I2C_Wait+0
;I2C.c,53 :: 		}
L_end_I2C_Write:
	RETURN
; end of _I2C_Write
