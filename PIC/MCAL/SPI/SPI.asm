
_SPI_InitMaster:

;SPI.c,6 :: 		void SPI_InitMaster(void) {
;SPI.c,8 :: 		SSPCON_REG = 0x20;
	MOVLW      32
	MOVWF      20
;SPI.c,11 :: 		SSPSTAT_REG = 0x00;
	CLRF       148
;SPI.c,12 :: 		}
L_end_SPI_InitMaster:
	RETURN
; end of _SPI_InitMaster

_SPI_Transceive:

;SPI.c,14 :: 		unsigned char SPI_Transceive(unsigned char tx_byte) {
;SPI.c,16 :: 		SSPBUF_REG = tx_byte;
	MOVF       FARG_SPI_Transceive_tx_byte+0, 0
	MOVWF      19
;SPI.c,19 :: 		while(GET_BIT(SSPSTAT_REG, BF) == 0);
L_SPI_Transceive0:
	MOVF       148, 0
	MOVWF      R0+0
	MOVLW      1
	ANDWF      R0+0, 0
	MOVWF      R1+0
	MOVF       R1+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_SPI_Transceive1
	GOTO       L_SPI_Transceive0
L_SPI_Transceive1:
;SPI.c,22 :: 		return SSPBUF_REG;
	MOVF       19, 0
	MOVWF      R0+0
;SPI.c,23 :: 		}
L_end_SPI_Transceive:
	RETURN
; end of _SPI_Transceive
