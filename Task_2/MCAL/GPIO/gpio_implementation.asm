
_set_pin_direction:

;gpio_implementation.c,7 :: 		void set_pin_direction(u8 port, u8 pin, u8 direction) {
;gpio_implementation.c,8 :: 		switch(port) {
	GOTO       L_set_pin_direction0
;gpio_implementation.c,9 :: 		case _PORTA:
L_set_pin_direction2:
;gpio_implementation.c,10 :: 		if(direction == OUTPUT) {
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction3
;gpio_implementation.c,11 :: 		CLR_BIT(TRISA, pin);  /* Clear bit for output */
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction48:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction49
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction48
L__set_pin_direction49:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      TRISA+0, 1
;gpio_implementation.c,12 :: 		} else if (direction == INPUT) {
	GOTO       L_set_pin_direction4
L_set_pin_direction3:
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction5
;gpio_implementation.c,13 :: 		SET_BIT(TRISA, pin);  /* Set bit for input */
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction50:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction51
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction50
L__set_pin_direction51:
	MOVF       R0+0, 0
	IORWF      TRISA+0, 1
;gpio_implementation.c,14 :: 		}
L_set_pin_direction5:
L_set_pin_direction4:
;gpio_implementation.c,15 :: 		break;
	GOTO       L_set_pin_direction1
;gpio_implementation.c,16 :: 		case _PORTB:
L_set_pin_direction6:
;gpio_implementation.c,17 :: 		if(direction == OUTPUT) {
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction7
;gpio_implementation.c,18 :: 		CLR_BIT(TRISB, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction52:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction53
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction52
L__set_pin_direction53:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      TRISB+0, 1
;gpio_implementation.c,19 :: 		} else if (direction == INPUT) {
	GOTO       L_set_pin_direction8
L_set_pin_direction7:
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction9
;gpio_implementation.c,20 :: 		SET_BIT(TRISB, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction54:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction55
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction54
L__set_pin_direction55:
	MOVF       R0+0, 0
	IORWF      TRISB+0, 1
;gpio_implementation.c,21 :: 		}
L_set_pin_direction9:
L_set_pin_direction8:
;gpio_implementation.c,22 :: 		break;
	GOTO       L_set_pin_direction1
;gpio_implementation.c,23 :: 		case _PORTC:
L_set_pin_direction10:
;gpio_implementation.c,24 :: 		if(direction == OUTPUT) {
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction11
;gpio_implementation.c,25 :: 		CLR_BIT(TRISC, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction56:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction57
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction56
L__set_pin_direction57:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      TRISC+0, 1
;gpio_implementation.c,26 :: 		} else if (direction == INPUT) {
	GOTO       L_set_pin_direction12
L_set_pin_direction11:
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction13
;gpio_implementation.c,27 :: 		SET_BIT(TRISC, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction58:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction59
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction58
L__set_pin_direction59:
	MOVF       R0+0, 0
	IORWF      TRISC+0, 1
;gpio_implementation.c,28 :: 		}
L_set_pin_direction13:
L_set_pin_direction12:
;gpio_implementation.c,29 :: 		break;
	GOTO       L_set_pin_direction1
;gpio_implementation.c,30 :: 		case _PORTD:
L_set_pin_direction14:
;gpio_implementation.c,31 :: 		if(direction == OUTPUT) {
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction15
;gpio_implementation.c,32 :: 		CLR_BIT(TRISD, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction60:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction61
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction60
L__set_pin_direction61:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      TRISD+0, 1
;gpio_implementation.c,33 :: 		} else if (direction == INPUT) {
	GOTO       L_set_pin_direction16
L_set_pin_direction15:
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction17
;gpio_implementation.c,34 :: 		SET_BIT(TRISD, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction62:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction63
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction62
L__set_pin_direction63:
	MOVF       R0+0, 0
	IORWF      TRISD+0, 1
;gpio_implementation.c,35 :: 		}
L_set_pin_direction17:
L_set_pin_direction16:
;gpio_implementation.c,36 :: 		break;
	GOTO       L_set_pin_direction1
;gpio_implementation.c,37 :: 		case _PORTE:
L_set_pin_direction18:
;gpio_implementation.c,38 :: 		if(direction == OUTPUT) {
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      0
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction19
;gpio_implementation.c,39 :: 		CLR_BIT(TRISE, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction64:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction65
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction64
L__set_pin_direction65:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      TRISE+0, 1
;gpio_implementation.c,40 :: 		} else if (direction == INPUT) {
	GOTO       L_set_pin_direction20
L_set_pin_direction19:
	MOVF       FARG_set_pin_direction_direction+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_direction21
;gpio_implementation.c,41 :: 		SET_BIT(TRISE, pin);
	MOVF       FARG_set_pin_direction_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_direction66:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_direction67
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_direction66
L__set_pin_direction67:
	MOVF       R0+0, 0
	IORWF      TRISE+0, 1
;gpio_implementation.c,42 :: 		}
L_set_pin_direction21:
L_set_pin_direction20:
;gpio_implementation.c,43 :: 		break;
	GOTO       L_set_pin_direction1
;gpio_implementation.c,44 :: 		}
L_set_pin_direction0:
	MOVF       FARG_set_pin_direction_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_direction2
	MOVF       FARG_set_pin_direction_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_direction6
	MOVF       FARG_set_pin_direction_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_direction10
	MOVF       FARG_set_pin_direction_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_direction14
	MOVF       FARG_set_pin_direction_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_direction18
L_set_pin_direction1:
;gpio_implementation.c,45 :: 		}
L_end_set_pin_direction:
	RETURN
; end of _set_pin_direction

_set_pin_value:

;gpio_implementation.c,47 :: 		void set_pin_value(u8 port, u8 pin, u8 value) {
;gpio_implementation.c,48 :: 		switch(port) {
	GOTO       L_set_pin_value22
;gpio_implementation.c,49 :: 		case _PORTA:
L_set_pin_value24:
;gpio_implementation.c,50 :: 		if(value == HIGH) {
	MOVF       FARG_set_pin_value_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_value25
;gpio_implementation.c,51 :: 		SET_BIT(PORTA, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value69:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value70
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value69
L__set_pin_value70:
	MOVF       R0+0, 0
	IORWF      PORTA+0, 1
;gpio_implementation.c,52 :: 		} else {
	GOTO       L_set_pin_value26
L_set_pin_value25:
;gpio_implementation.c,53 :: 		CLR_BIT(PORTA, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value71:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value72
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value71
L__set_pin_value72:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTA+0, 1
;gpio_implementation.c,54 :: 		}
L_set_pin_value26:
;gpio_implementation.c,55 :: 		break;
	GOTO       L_set_pin_value23
;gpio_implementation.c,56 :: 		case _PORTB:
L_set_pin_value27:
;gpio_implementation.c,57 :: 		if(value == HIGH) {
	MOVF       FARG_set_pin_value_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_value28
;gpio_implementation.c,58 :: 		SET_BIT(PORTB, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value73:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value74
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value73
L__set_pin_value74:
	MOVF       R0+0, 0
	IORWF      PORTB+0, 1
;gpio_implementation.c,59 :: 		} else {
	GOTO       L_set_pin_value29
L_set_pin_value28:
;gpio_implementation.c,60 :: 		CLR_BIT(PORTB, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value75:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value76
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value75
L__set_pin_value76:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTB+0, 1
;gpio_implementation.c,61 :: 		}
L_set_pin_value29:
;gpio_implementation.c,62 :: 		break;
	GOTO       L_set_pin_value23
;gpio_implementation.c,63 :: 		case _PORTC:
L_set_pin_value30:
;gpio_implementation.c,64 :: 		if(value == HIGH) {
	MOVF       FARG_set_pin_value_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_value31
;gpio_implementation.c,65 :: 		SET_BIT(PORTC, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value77:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value78
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value77
L__set_pin_value78:
	MOVF       R0+0, 0
	IORWF      PORTC+0, 1
;gpio_implementation.c,66 :: 		} else {
	GOTO       L_set_pin_value32
L_set_pin_value31:
;gpio_implementation.c,67 :: 		CLR_BIT(PORTC, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value79:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value80
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value79
L__set_pin_value80:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTC+0, 1
;gpio_implementation.c,68 :: 		}
L_set_pin_value32:
;gpio_implementation.c,69 :: 		break;
	GOTO       L_set_pin_value23
;gpio_implementation.c,70 :: 		case _PORTD:
L_set_pin_value33:
;gpio_implementation.c,71 :: 		if(value == HIGH) {
	MOVF       FARG_set_pin_value_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_value34
;gpio_implementation.c,72 :: 		SET_BIT(PORTD, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value81:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value82
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value81
L__set_pin_value82:
	MOVF       R0+0, 0
	IORWF      PORTD+0, 1
;gpio_implementation.c,73 :: 		} else {
	GOTO       L_set_pin_value35
L_set_pin_value34:
;gpio_implementation.c,74 :: 		CLR_BIT(PORTD, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value83:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value84
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value83
L__set_pin_value84:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTD+0, 1
;gpio_implementation.c,75 :: 		}
L_set_pin_value35:
;gpio_implementation.c,76 :: 		break;
	GOTO       L_set_pin_value23
;gpio_implementation.c,77 :: 		case _PORTE:
L_set_pin_value36:
;gpio_implementation.c,78 :: 		if(value == HIGH) {
	MOVF       FARG_set_pin_value_value+0, 0
	XORLW      1
	BTFSS      STATUS+0, 2
	GOTO       L_set_pin_value37
;gpio_implementation.c,79 :: 		SET_BIT(PORTE, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value85:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value86
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value85
L__set_pin_value86:
	MOVF       R0+0, 0
	IORWF      PORTE+0, 1
;gpio_implementation.c,80 :: 		} else {
	GOTO       L_set_pin_value38
L_set_pin_value37:
;gpio_implementation.c,81 :: 		CLR_BIT(PORTE, pin);
	MOVF       FARG_set_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVLW      1
	MOVWF      R0+0
	MOVF       R1+0, 0
L__set_pin_value87:
	BTFSC      STATUS+0, 2
	GOTO       L__set_pin_value88
	RLF        R0+0, 1
	BCF        R0+0, 0
	ADDLW      255
	GOTO       L__set_pin_value87
L__set_pin_value88:
	COMF       R0+0, 1
	MOVF       R0+0, 0
	ANDWF      PORTE+0, 1
;gpio_implementation.c,82 :: 		}
L_set_pin_value38:
;gpio_implementation.c,83 :: 		break;
	GOTO       L_set_pin_value23
;gpio_implementation.c,84 :: 		}
L_set_pin_value22:
	MOVF       FARG_set_pin_value_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_value24
	MOVF       FARG_set_pin_value_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_value27
	MOVF       FARG_set_pin_value_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_value30
	MOVF       FARG_set_pin_value_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_value33
	MOVF       FARG_set_pin_value_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_set_pin_value36
L_set_pin_value23:
;gpio_implementation.c,85 :: 		}
L_end_set_pin_value:
	RETURN
; end of _set_pin_value

_get_pin_value:

;gpio_implementation.c,87 :: 		u8 get_pin_value(u8 port, u8 pin) {
;gpio_implementation.c,88 :: 		switch(port) {
	GOTO       L_get_pin_value39
;gpio_implementation.c,89 :: 		case _PORTA: return GET_BIT(PORTA, pin);
L_get_pin_value41:
	MOVF       FARG_get_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVF       PORTA+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__get_pin_value90:
	BTFSC      STATUS+0, 2
	GOTO       L__get_pin_value91
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__get_pin_value90
L__get_pin_value91:
	MOVLW      1
	ANDWF      R0+0, 1
	GOTO       L_end_get_pin_value
;gpio_implementation.c,90 :: 		case _PORTB: return GET_BIT(PORTB, pin);
L_get_pin_value42:
	MOVF       FARG_get_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVF       PORTB+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__get_pin_value92:
	BTFSC      STATUS+0, 2
	GOTO       L__get_pin_value93
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__get_pin_value92
L__get_pin_value93:
	MOVLW      1
	ANDWF      R0+0, 1
	GOTO       L_end_get_pin_value
;gpio_implementation.c,91 :: 		case _PORTC: return GET_BIT(PORTC, pin);
L_get_pin_value43:
	MOVF       FARG_get_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVF       PORTC+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__get_pin_value94:
	BTFSC      STATUS+0, 2
	GOTO       L__get_pin_value95
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__get_pin_value94
L__get_pin_value95:
	MOVLW      1
	ANDWF      R0+0, 1
	GOTO       L_end_get_pin_value
;gpio_implementation.c,92 :: 		case _PORTD: return GET_BIT(PORTD, pin);
L_get_pin_value44:
	MOVF       FARG_get_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVF       PORTD+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__get_pin_value96:
	BTFSC      STATUS+0, 2
	GOTO       L__get_pin_value97
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__get_pin_value96
L__get_pin_value97:
	MOVLW      1
	ANDWF      R0+0, 1
	GOTO       L_end_get_pin_value
;gpio_implementation.c,93 :: 		case _PORTE: return GET_BIT(PORTE, pin);
L_get_pin_value45:
	MOVF       FARG_get_pin_value_pin+0, 0
	MOVWF      R1+0
	MOVF       PORTE+0, 0
	MOVWF      R0+0
	MOVF       R1+0, 0
L__get_pin_value98:
	BTFSC      STATUS+0, 2
	GOTO       L__get_pin_value99
	RRF        R0+0, 1
	BCF        R0+0, 7
	ADDLW      255
	GOTO       L__get_pin_value98
L__get_pin_value99:
	MOVLW      1
	ANDWF      R0+0, 1
	GOTO       L_end_get_pin_value
;gpio_implementation.c,94 :: 		default:     return 0;
L_get_pin_value46:
	CLRF       R0+0
	GOTO       L_end_get_pin_value
;gpio_implementation.c,95 :: 		}
L_get_pin_value39:
	MOVF       FARG_get_pin_value_port+0, 0
	XORLW      0
	BTFSC      STATUS+0, 2
	GOTO       L_get_pin_value41
	MOVF       FARG_get_pin_value_port+0, 0
	XORLW      1
	BTFSC      STATUS+0, 2
	GOTO       L_get_pin_value42
	MOVF       FARG_get_pin_value_port+0, 0
	XORLW      2
	BTFSC      STATUS+0, 2
	GOTO       L_get_pin_value43
	MOVF       FARG_get_pin_value_port+0, 0
	XORLW      3
	BTFSC      STATUS+0, 2
	GOTO       L_get_pin_value44
	MOVF       FARG_get_pin_value_port+0, 0
	XORLW      4
	BTFSC      STATUS+0, 2
	GOTO       L_get_pin_value45
	GOTO       L_get_pin_value46
;gpio_implementation.c,96 :: 		}
L_end_get_pin_value:
	RETURN
; end of _get_pin_value
