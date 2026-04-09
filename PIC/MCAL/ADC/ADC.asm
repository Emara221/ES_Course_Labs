
_ADC_Init:

;ADC.c,6 :: 		void ADC_Init(void) {
;ADC.c,8 :: 		ADCON0_REG = 0x81;
	MOVLW      129
	MOVWF      31
;ADC.c,9 :: 		ADCON1_REG = 0x80;
	MOVLW      128
	MOVWF      159
;ADC.c,10 :: 		}
L_end_ADC_Init:
	RETURN
; end of _ADC_Init

_ADC_Read:

;ADC.c,12 :: 		uint16 ADC_Read(uint8 channel) {
;ADC.c,13 :: 		uint16 result = 0;
;ADC.c,17 :: 		ADCON0_REG &= 0xC5;
	MOVLW      197
	ANDWF      31, 1
;ADC.c,18 :: 		ADCON0_REG |= (channel << 3);
	MOVF       FARG_ADC_Read_channel+0, 0
	MOVWF      R0+0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	RLF        R0+0, 1
	BCF        R0+0, 0
	MOVF       R0+0, 0
	IORWF      31, 1
;ADC.c,21 :: 		for(delay = 0; delay < 100; delay++);
	CLRF       R2+0
L_ADC_Read0:
	MOVLW      100
	SUBWF      R2+0, 0
	BTFSC      STATUS+0, 0
	GOTO       L_ADC_Read1
	INCF       R2+0, 1
	GOTO       L_ADC_Read0
L_ADC_Read1:
;ADC.c,24 :: 		SET_BIT(ADCON0_REG, GO_DONE);
	BSF        31, 2
;ADC.c,27 :: 		while(GET_BIT(ADCON0_REG, GO_DONE));
L_ADC_Read3:
	MOVF       31, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	RRF        R1+0, 1
	BCF        R1+0, 7
	BTFSS      R1+0, 0
	GOTO       L_ADC_Read4
	GOTO       L_ADC_Read3
L_ADC_Read4:
;ADC.c,30 :: 		result = ((uint16)ADRESH_REG << 8) | ADRESL_REG;
	MOVF       158, 0
	MOVWF      R0+0
;ADC.c,32 :: 		return result;
;ADC.c,33 :: 		}
L_end_ADC_Read:
	RETURN
; end of _ADC_Read
