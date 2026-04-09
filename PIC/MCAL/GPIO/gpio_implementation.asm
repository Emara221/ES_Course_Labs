
_GPIO_SetPinDirection:

;gpio_implementation.c,5 :: 		void GPIO_SetPinDirection(u8 port, u8 pin, u8 direction) {
;gpio_implementation.c,6 :: 		switch(port) {
	GOTO       L_GPIO_SetPinDirection0
;gpio_implementation.c,7 :: 		case _PORTA:
L_GPIO_SetPinDirection2:
;gpio_implementation.c,8 :: 		if(direction == OUTPUT) { CLR_BIT(TRISA_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection3
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection66:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection67
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection66
L__GPIO_SetPinDirection67:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      133, 1
	GOTO       L_GPIO_SetPinDirection4
L_GPIO_SetPinDirection3:
;gpio_implementation.c,9 :: 		else                    { SET_BIT(TRISA_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection68:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection69
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection68
L__GPIO_SetPinDirection69:
	MOVF       R0+0, 0
	IORWF      133, 1
L_GPIO_SetPinDirection4:
;gpio_implementation.c,10 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;gpio_implementation.c,11 :: 		case _PORTB:
L_GPIO_SetPinDirection5:
;gpio_implementation.c,12 :: 		if(direction == OUTPUT) { CLR_BIT(TRISB_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection6
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection70:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection71
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection70
L__GPIO_SetPinDirection71:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      134, 1
	GOTO       L_GPIO_SetPinDirection7
L_GPIO_SetPinDirection6:
;gpio_implementation.c,13 :: 		else                    { SET_BIT(TRISB_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection72:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection73
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection72
L__GPIO_SetPinDirection73:
	MOVF       R0+0, 0
	IORWF      134, 1
L_GPIO_SetPinDirection7:
;gpio_implementation.c,14 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;gpio_implementation.c,15 :: 		case _PORTC:
L_GPIO_SetPinDirection8:
;gpio_implementation.c,16 :: 		if(direction == OUTPUT) { CLR_BIT(TRISC_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection9
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection74:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection75
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection74
L__GPIO_SetPinDirection75:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      135, 1
	GOTO       L_GPIO_SetPinDirection10
L_GPIO_SetPinDirection9:
;gpio_implementation.c,17 :: 		else                    { SET_BIT(TRISC_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection76:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection77
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection76
L__GPIO_SetPinDirection77:
	MOVF       R0+0, 0
	IORWF      135, 1
L_GPIO_SetPinDirection10:
;gpio_implementation.c,18 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;gpio_implementation.c,19 :: 		case _PORTD:
L_GPIO_SetPinDirection11:
;gpio_implementation.c,20 :: 		if(direction == OUTPUT) { CLR_BIT(TRISD_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection12
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection78:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection79
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection78
L__GPIO_SetPinDirection79:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      136, 1
	GOTO       L_GPIO_SetPinDirection13
L_GPIO_SetPinDirection12:
;gpio_implementation.c,21 :: 		else                    { SET_BIT(TRISD_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection80:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection81
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection80
L__GPIO_SetPinDirection81:
	MOVF       R0+0, 0
	IORWF      136, 1
L_GPIO_SetPinDirection13:
;gpio_implementation.c,22 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;gpio_implementation.c,23 :: 		case _PORTE:
L_GPIO_SetPinDirection14:
;gpio_implementation.c,24 :: 		if(direction == OUTPUT) { CLR_BIT(TRISE_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection15
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection82:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection83
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection82
L__GPIO_SetPinDirection83:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      137, 1
	GOTO       L_GPIO_SetPinDirection16
L_GPIO_SetPinDirection15:
;gpio_implementation.c,25 :: 		else                    { SET_BIT(TRISE_REG, pin); }
	MOVF       FARG_GPIO_SetPinDirection_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinDirection84:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinDirection85
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinDirection84
L__GPIO_SetPinDirection85:
	MOVF       R0+0, 0
	IORWF      137, 1
L_GPIO_SetPinDirection16:
;gpio_implementation.c,26 :: 		break;
	GOTO       L_GPIO_SetPinDirection1
;gpio_implementation.c,27 :: 		}
L_GPIO_SetPinDirection0:
	MOVF       FARG_GPIO_SetPinDirection_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection2
	MOVF       FARG_GPIO_SetPinDirection_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection5
	MOVF       FARG_GPIO_SetPinDirection_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection8
	MOVF       FARG_GPIO_SetPinDirection_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection11
	MOVF       FARG_GPIO_SetPinDirection_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinDirection14
L_GPIO_SetPinDirection1:
;gpio_implementation.c,28 :: 		}
L_end_GPIO_SetPinDirection:
	RETURN
; end of _GPIO_SetPinDirection

_GPIO_SetPinValue:

;gpio_implementation.c,29 :: 		void GPIO_SetPinValue(u8 port, u8 pin, u8 value) {
;gpio_implementation.c,30 :: 		switch(port) {
	GOTO       L_GPIO_SetPinValue17
;gpio_implementation.c,31 :: 		case _PORTA:
L_GPIO_SetPinValue19:
;gpio_implementation.c,32 :: 		if(value == HIGH) { SET_BIT(PORTA_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue20
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue87:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue88
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue87
L__GPIO_SetPinValue88:
	MOVF       R0+0, 0
	IORWF      5, 1
	GOTO       L_GPIO_SetPinValue21
L_GPIO_SetPinValue20:
;gpio_implementation.c,33 :: 		else              { CLR_BIT(PORTA_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue89:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue90
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue89
L__GPIO_SetPinValue90:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      5, 1
L_GPIO_SetPinValue21:
;gpio_implementation.c,34 :: 		break;
	GOTO       L_GPIO_SetPinValue18
;gpio_implementation.c,35 :: 		case _PORTB:
L_GPIO_SetPinValue22:
;gpio_implementation.c,36 :: 		if(value == HIGH) { SET_BIT(PORTB_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue23
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue91:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue92
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue91
L__GPIO_SetPinValue92:
	MOVF       R0+0, 0
	IORWF      6, 1
	GOTO       L_GPIO_SetPinValue24
L_GPIO_SetPinValue23:
;gpio_implementation.c,37 :: 		else              { CLR_BIT(PORTB_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue93:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue94
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue93
L__GPIO_SetPinValue94:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      6, 1
L_GPIO_SetPinValue24:
;gpio_implementation.c,38 :: 		break;
	GOTO       L_GPIO_SetPinValue18
;gpio_implementation.c,39 :: 		case _PORTC:
L_GPIO_SetPinValue25:
;gpio_implementation.c,40 :: 		if(value == HIGH) { SET_BIT(PORTC_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue26
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue95:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue96
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue95
L__GPIO_SetPinValue96:
	MOVF       R0+0, 0
	IORWF      7, 1
	GOTO       L_GPIO_SetPinValue27
L_GPIO_SetPinValue26:
;gpio_implementation.c,41 :: 		else              { CLR_BIT(PORTC_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue97:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue98
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue97
L__GPIO_SetPinValue98:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      7, 1
L_GPIO_SetPinValue27:
;gpio_implementation.c,42 :: 		break;
	GOTO       L_GPIO_SetPinValue18
;gpio_implementation.c,43 :: 		case _PORTD:
L_GPIO_SetPinValue28:
;gpio_implementation.c,44 :: 		if(value == HIGH) { SET_BIT(PORTD_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue29
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue99:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue100
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue99
L__GPIO_SetPinValue100:
	MOVF       R0+0, 0
	IORWF      8, 1
	GOTO       L_GPIO_SetPinValue30
L_GPIO_SetPinValue29:
;gpio_implementation.c,45 :: 		else              { CLR_BIT(PORTD_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue101:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue102
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue101
L__GPIO_SetPinValue102:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      8, 1
L_GPIO_SetPinValue30:
;gpio_implementation.c,46 :: 		break;
	GOTO       L_GPIO_SetPinValue18
;gpio_implementation.c,47 :: 		case _PORTE:
L_GPIO_SetPinValue31:
;gpio_implementation.c,48 :: 		if(value == HIGH) { SET_BIT(PORTE_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue32
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue103:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue104
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue103
L__GPIO_SetPinValue104:
	MOVF       R0+0, 0
	IORWF      9, 1
	GOTO       L_GPIO_SetPinValue33
L_GPIO_SetPinValue32:
;gpio_implementation.c,49 :: 		else              { CLR_BIT(PORTE_REG, pin); }
	MOVF       FARG_GPIO_SetPinValue_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_SetPinValue105:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_SetPinValue106
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_SetPinValue105
L__GPIO_SetPinValue106:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      9, 1
L_GPIO_SetPinValue33:
;gpio_implementation.c,50 :: 		break;
	GOTO       L_GPIO_SetPinValue18
;gpio_implementation.c,51 :: 		}
L_GPIO_SetPinValue17:
	MOVF       FARG_GPIO_SetPinValue_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue19
	MOVF       FARG_GPIO_SetPinValue_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue22
	MOVF       FARG_GPIO_SetPinValue_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue25
	MOVF       FARG_GPIO_SetPinValue_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue28
	MOVF       FARG_GPIO_SetPinValue_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPinValue31
L_GPIO_SetPinValue18:
;gpio_implementation.c,52 :: 		}
L_end_GPIO_SetPinValue:
	RETURN
; end of _GPIO_SetPinValue

_GPIO_GetPinValue:

;gpio_implementation.c,53 :: 		u8 GPIO_GetPinValue(u8 port, u8 pin) {
;gpio_implementation.c,54 :: 		u8 pin_value = 0;
	CLRF       GPIO_GetPinValue_pin_value_L0+0
;gpio_implementation.c,55 :: 		switch(port) {
	GOTO       L_GPIO_GetPinValue34
;gpio_implementation.c,56 :: 		case _PORTA: pin_value = GET_BIT(PORTA_REG, pin); break;
L_GPIO_GetPinValue36:
	MOVF       FARG_GPIO_GetPinValue_pin+0, 0
	MOVWF      R0+0
	MOVF       5, 0
	MOVWF      GPIO_GetPinValue_pin_value_L0+0
	MOVF       R0+0, 0
L__GPIO_GetPinValue108:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_GetPinValue109
	RRF        GPIO_GetPinValue_pin_value_L0+0, 1
	BCF        GPIO_GetPinValue_pin_value_L0+0, 7
	ADDLW      255
	GOTO       L__GPIO_GetPinValue108
L__GPIO_GetPinValue109:
	MOVLW      1
	ANDWF      GPIO_GetPinValue_pin_value_L0+0, 1
	GOTO       L_GPIO_GetPinValue35
;gpio_implementation.c,57 :: 		case _PORTB: pin_value = GET_BIT(PORTB_REG, pin); break;
L_GPIO_GetPinValue37:
	MOVF       FARG_GPIO_GetPinValue_pin+0, 0
	MOVWF      R0+0
	MOVF       6, 0
	MOVWF      GPIO_GetPinValue_pin_value_L0+0
	MOVF       R0+0, 0
L__GPIO_GetPinValue110:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_GetPinValue111
	RRF        GPIO_GetPinValue_pin_value_L0+0, 1
	BCF        GPIO_GetPinValue_pin_value_L0+0, 7
	ADDLW      255
	GOTO       L__GPIO_GetPinValue110
L__GPIO_GetPinValue111:
	MOVLW      1
	ANDWF      GPIO_GetPinValue_pin_value_L0+0, 1
	GOTO       L_GPIO_GetPinValue35
;gpio_implementation.c,58 :: 		case _PORTC: pin_value = GET_BIT(PORTC_REG, pin); break;
L_GPIO_GetPinValue38:
	MOVF       FARG_GPIO_GetPinValue_pin+0, 0
	MOVWF      R0+0
	MOVF       7, 0
	MOVWF      GPIO_GetPinValue_pin_value_L0+0
	MOVF       R0+0, 0
L__GPIO_GetPinValue112:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_GetPinValue113
	RRF        GPIO_GetPinValue_pin_value_L0+0, 1
	BCF        GPIO_GetPinValue_pin_value_L0+0, 7
	ADDLW      255
	GOTO       L__GPIO_GetPinValue112
L__GPIO_GetPinValue113:
	MOVLW      1
	ANDWF      GPIO_GetPinValue_pin_value_L0+0, 1
	GOTO       L_GPIO_GetPinValue35
;gpio_implementation.c,59 :: 		case _PORTD: pin_value = GET_BIT(PORTD_REG, pin); break;
L_GPIO_GetPinValue39:
	MOVF       FARG_GPIO_GetPinValue_pin+0, 0
	MOVWF      R0+0
	MOVF       8, 0
	MOVWF      GPIO_GetPinValue_pin_value_L0+0
	MOVF       R0+0, 0
L__GPIO_GetPinValue114:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_GetPinValue115
	RRF        GPIO_GetPinValue_pin_value_L0+0, 1
	BCF        GPIO_GetPinValue_pin_value_L0+0, 7
	ADDLW      255
	GOTO       L__GPIO_GetPinValue114
L__GPIO_GetPinValue115:
	MOVLW      1
	ANDWF      GPIO_GetPinValue_pin_value_L0+0, 1
	GOTO       L_GPIO_GetPinValue35
;gpio_implementation.c,60 :: 		case _PORTE: pin_value = GET_BIT(PORTE_REG, pin); break;
L_GPIO_GetPinValue40:
	MOVF       FARG_GPIO_GetPinValue_pin+0, 0
	MOVWF      R0+0
	MOVF       9, 0
	MOVWF      GPIO_GetPinValue_pin_value_L0+0
	MOVF       R0+0, 0
L__GPIO_GetPinValue116:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_GetPinValue117
	RRF        GPIO_GetPinValue_pin_value_L0+0, 1
	BCF        GPIO_GetPinValue_pin_value_L0+0, 7
	ADDLW      255
	GOTO       L__GPIO_GetPinValue116
L__GPIO_GetPinValue117:
	MOVLW      1
	ANDWF      GPIO_GetPinValue_pin_value_L0+0, 1
	GOTO       L_GPIO_GetPinValue35
;gpio_implementation.c,61 :: 		default:     pin_value = 0;                        break;
L_GPIO_GetPinValue41:
	CLRF       GPIO_GetPinValue_pin_value_L0+0
	GOTO       L_GPIO_GetPinValue35
;gpio_implementation.c,62 :: 		}
L_GPIO_GetPinValue34:
	MOVF       FARG_GPIO_GetPinValue_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_GetPinValue36
	MOVF       FARG_GPIO_GetPinValue_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_GetPinValue37
	MOVF       FARG_GPIO_GetPinValue_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_GetPinValue38
	MOVF       FARG_GPIO_GetPinValue_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_GetPinValue39
	MOVF       FARG_GPIO_GetPinValue_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_GetPinValue40
	GOTO       L_GPIO_GetPinValue41
L_GPIO_GetPinValue35:
;gpio_implementation.c,63 :: 		return pin_value;
	MOVF       GPIO_GetPinValue_pin_value_L0+0, 0
	MOVWF      R0+0
;gpio_implementation.c,64 :: 		}
L_end_GPIO_GetPinValue:
	RETURN
; end of _GPIO_GetPinValue

_GPIO_TogglePin:

;gpio_implementation.c,65 :: 		void GPIO_TogglePin(u8 port, u8 pin) {
;gpio_implementation.c,66 :: 		switch(port) {
	GOTO       L_GPIO_TogglePin42
;gpio_implementation.c,67 :: 		case _PORTA: PORTA_REG ^= (1 << pin); break;
L_GPIO_TogglePin44:
	MOVF       FARG_GPIO_TogglePin_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_TogglePin119:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_TogglePin120
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_TogglePin119
L__GPIO_TogglePin120:
	MOVF       R0+0, 0
	XORWF      5, 1
	GOTO       L_GPIO_TogglePin43
;gpio_implementation.c,68 :: 		case _PORTB: PORTB_REG ^= (1 << pin); break;
L_GPIO_TogglePin45:
	MOVF       FARG_GPIO_TogglePin_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_TogglePin121:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_TogglePin122
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_TogglePin121
L__GPIO_TogglePin122:
	MOVF       R0+0, 0
	XORWF      6, 1
	GOTO       L_GPIO_TogglePin43
;gpio_implementation.c,69 :: 		case _PORTC: PORTC_REG ^= (1 << pin); break;
L_GPIO_TogglePin46:
	MOVF       FARG_GPIO_TogglePin_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_TogglePin123:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_TogglePin124
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_TogglePin123
L__GPIO_TogglePin124:
	MOVF       R0+0, 0
	XORWF      7, 1
	GOTO       L_GPIO_TogglePin43
;gpio_implementation.c,70 :: 		case _PORTD: PORTD_REG ^= (1 << pin); break;
L_GPIO_TogglePin47:
	MOVF       FARG_GPIO_TogglePin_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_TogglePin125:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_TogglePin126
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_TogglePin125
L__GPIO_TogglePin126:
	MOVF       R0+0, 0
	XORWF      8, 1
	GOTO       L_GPIO_TogglePin43
;gpio_implementation.c,71 :: 		case _PORTE: PORTE_REG ^= (1 << pin); break;
L_GPIO_TogglePin48:
	MOVF       FARG_GPIO_TogglePin_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__GPIO_TogglePin127:
	BTFSC      STATUS+0, 2
	GOTO       L__GPIO_TogglePin128
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__GPIO_TogglePin127
L__GPIO_TogglePin128:
	MOVF       R0+0, 0
	XORWF      9, 1
	GOTO       L_GPIO_TogglePin43
;gpio_implementation.c,72 :: 		}
L_GPIO_TogglePin42:
	MOVF       FARG_GPIO_TogglePin_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_TogglePin44
	MOVF       FARG_GPIO_TogglePin_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_TogglePin45
	MOVF       FARG_GPIO_TogglePin_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_TogglePin46
	MOVF       FARG_GPIO_TogglePin_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_TogglePin47
	MOVF       FARG_GPIO_TogglePin_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_TogglePin48
L_GPIO_TogglePin43:
;gpio_implementation.c,73 :: 		}
L_end_GPIO_TogglePin:
	RETURN
; end of _GPIO_TogglePin

_GPIO_SetPortDirection:

;gpio_implementation.c,74 :: 		void GPIO_SetPortDirection(u8 port, u8 direction) {
;gpio_implementation.c,75 :: 		u8 value = (direction == OUTPUT) ? 0x00 : 0xFF;
	MOVF       FARG_GPIO_SetPortDirection_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection49
	CLRF       R1+0
	GOTO       L_GPIO_SetPortDirection50
L_GPIO_SetPortDirection49:
	MOVLW      255
	MOVWF      R1+0
L_GPIO_SetPortDirection50:
	MOVF       R1+0, 0
	MOVWF      R2+0
;gpio_implementation.c,76 :: 		switch(port) {
	GOTO       L_GPIO_SetPortDirection51
;gpio_implementation.c,77 :: 		case _PORTA: TRISA_REG = value; break;
L_GPIO_SetPortDirection53:
	MOVF       R2+0, 0
	MOVWF      133
	GOTO       L_GPIO_SetPortDirection52
;gpio_implementation.c,78 :: 		case _PORTB: TRISB_REG = value; break;
L_GPIO_SetPortDirection54:
	MOVF       R2+0, 0
	MOVWF      134
	GOTO       L_GPIO_SetPortDirection52
;gpio_implementation.c,79 :: 		case _PORTC: TRISC_REG = value; break;
L_GPIO_SetPortDirection55:
	MOVF       R2+0, 0
	MOVWF      135
	GOTO       L_GPIO_SetPortDirection52
;gpio_implementation.c,80 :: 		case _PORTD: TRISD_REG = value; break;
L_GPIO_SetPortDirection56:
	MOVF       R2+0, 0
	MOVWF      136
	GOTO       L_GPIO_SetPortDirection52
;gpio_implementation.c,81 :: 		case _PORTE: TRISE_REG = value; break;
L_GPIO_SetPortDirection57:
	MOVF       R2+0, 0
	MOVWF      137
	GOTO       L_GPIO_SetPortDirection52
;gpio_implementation.c,82 :: 		}
L_GPIO_SetPortDirection51:
	MOVF       FARG_GPIO_SetPortDirection_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection53
	MOVF       FARG_GPIO_SetPortDirection_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection54
	MOVF       FARG_GPIO_SetPortDirection_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection55
	MOVF       FARG_GPIO_SetPortDirection_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection56
	MOVF       FARG_GPIO_SetPortDirection_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortDirection57
L_GPIO_SetPortDirection52:
;gpio_implementation.c,83 :: 		}
L_end_GPIO_SetPortDirection:
	RETURN
; end of _GPIO_SetPortDirection

_GPIO_SetPortValue:

;gpio_implementation.c,84 :: 		void GPIO_SetPortValue(u8 port, u8 value) {
;gpio_implementation.c,85 :: 		switch(port) {
	GOTO       L_GPIO_SetPortValue58
;gpio_implementation.c,86 :: 		case _PORTA: PORTA_REG = value; break;
L_GPIO_SetPortValue60:
	MOVF       FARG_GPIO_SetPortValue_value+0, 0
	MOVWF      5
	GOTO       L_GPIO_SetPortValue59
;gpio_implementation.c,87 :: 		case _PORTB: PORTB_REG = value; break;
L_GPIO_SetPortValue61:
	MOVF       FARG_GPIO_SetPortValue_value+0, 0
	MOVWF      6
	GOTO       L_GPIO_SetPortValue59
;gpio_implementation.c,88 :: 		case _PORTC: PORTC_REG = value; break;
L_GPIO_SetPortValue62:
	MOVF       FARG_GPIO_SetPortValue_value+0, 0
	MOVWF      7
	GOTO       L_GPIO_SetPortValue59
;gpio_implementation.c,89 :: 		case _PORTD: PORTD_REG = value; break;
L_GPIO_SetPortValue63:
	MOVF       FARG_GPIO_SetPortValue_value+0, 0
	MOVWF      8
	GOTO       L_GPIO_SetPortValue59
;gpio_implementation.c,90 :: 		case _PORTE: PORTE_REG = value; break;
L_GPIO_SetPortValue64:
	MOVF       FARG_GPIO_SetPortValue_value+0, 0
	MOVWF      9
	GOTO       L_GPIO_SetPortValue59
;gpio_implementation.c,91 :: 		}
L_GPIO_SetPortValue58:
	MOVF       FARG_GPIO_SetPortValue_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue60
	MOVF       FARG_GPIO_SetPortValue_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue61
	MOVF       FARG_GPIO_SetPortValue_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue62
	MOVF       FARG_GPIO_SetPortValue_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue63
	MOVF       FARG_GPIO_SetPortValue_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_GPIO_SetPortValue64
L_GPIO_SetPortValue59:
;gpio_implementation.c,92 :: 		}
L_end_GPIO_SetPortValue:
	RETURN
; end of _GPIO_SetPortValue

_set_pin_direction:

;gpio_implementation.c,93 :: 		void set_pin_direction(u8 port, u8 pin, u8 direction) { GPIO_SetPinDirection(port, pin, direction); }
	MOVF       FARG_set_pin_direction_port+0, 0
	MOVWF      FARG_GPIO_SetPinDirection_port+0
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      FARG_GPIO_SetPinDirection_pin+0
	MOVF       FARG_set_pin_direction_direction+0, 0
	MOVWF      FARG_GPIO_SetPinDirection_direction+0
	CALL       _GPIO_SetPinDirection+0
L_end_set_pin_direction:
	RETURN
; end of _set_pin_direction

_set_pin_value:

;gpio_implementation.c,94 :: 		void set_pin_value    (u8 port, u8 pin, u8 value)      { GPIO_SetPinValue(port, pin, value);         }
	MOVF       FARG_set_pin_value_port+0, 0
	MOVWF      FARG_GPIO_SetPinValue_port+0
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      FARG_GPIO_SetPinValue_pin+0
	MOVF       FARG_set_pin_value_value+0, 0
	MOVWF      FARG_GPIO_SetPinValue_value+0
	CALL       _GPIO_SetPinValue+0
L_end_set_pin_value:
	RETURN
; end of _set_pin_value

_get_pin_value:

;gpio_implementation.c,95 :: 		u8   get_pin_value    (u8 port, u8 pin)                { return GPIO_GetPinValue(port, pin);          }
	MOVF       FARG_get_pin_value_port+0, 0
	MOVWF      FARG_GPIO_GetPinValue_port+0
	MOVF       FARG_get_pin_value_pin+0, 0
	MOVWF      FARG_GPIO_GetPinValue_pin+0
	CALL       _GPIO_GetPinValue+0
L_end_get_pin_value:
	RETURN
; end of _get_pin_value

_toggle_pin:

;gpio_implementation.c,96 :: 		void toggle_pin       (u8 port, u8 pin)                { GPIO_TogglePin(port, pin);                   }
	MOVF       FARG_toggle_pin_port+0, 0
	MOVWF      FARG_GPIO_TogglePin_port+0
	MOVF       FARG_toggle_pin_pin+0, 0
	MOVWF      FARG_GPIO_TogglePin_pin+0
	CALL       _GPIO_TogglePin+0
L_end_toggle_pin:
	RETURN
; end of _toggle_pin
