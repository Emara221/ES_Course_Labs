
_main:

;Task_1.c,1 :: 		void main() {
;Task_1.c,2 :: 		TRISC &= ~(1 << 0);
	BCF        TRISC+0, 0
;Task_1.c,3 :: 		TRISC &= ~(1 << 1);
	BCF        TRISC+0, 1
;Task_1.c,5 :: 		TRISB |= (1 << 0);
	BSF        TRISB+0, 0
;Task_1.c,6 :: 		TRISB |= (1 << 1);
	BSF        TRISB+0, 1
;Task_1.c,8 :: 		PORTC &= ~((1 << 0) | (1 << 1));
	MOVLW      252
	ANDWF      PORTC+0, 1
;Task_1.c,10 :: 		while(1) {
L_main0:
;Task_1.c,11 :: 		if ((PORTB >> 0) & 1) {
	MOVF       PORTB+0, 0
	MOVWF      R1+0
	BTFSS      R1+0, 0
	GOTO       L_main2
;Task_1.c,12 :: 		PORTC |= ((1 << 0) | (1 << 1));
	MOVLW      3
	IORWF      PORTC+0, 1
;Task_1.c,13 :: 		Delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main3:
	DECFSZ     R13+0, 1
	GOTO       L_main3
	DECFSZ     R12+0, 1
	GOTO       L_main3
	DECFSZ     R11+0, 1
	GOTO       L_main3
;Task_1.c,14 :: 		PORTC &= ~((1 << 0) | (1 << 1));
	MOVLW      252
	ANDWF      PORTC+0, 1
;Task_1.c,15 :: 		Delay_ms(200);
	MOVLW      3
	MOVWF      R11+0
	MOVLW      8
	MOVWF      R12+0
	MOVLW      119
	MOVWF      R13+0
L_main4:
	DECFSZ     R13+0, 1
	GOTO       L_main4
	DECFSZ     R12+0, 1
	GOTO       L_main4
	DECFSZ     R11+0, 1
	GOTO       L_main4
;Task_1.c,16 :: 		}
	GOTO       L_main5
L_main2:
;Task_1.c,17 :: 		else if ((PORTB >> 1) & 1) {
	MOVF       PORTB+0, 0
	MOVWF      R1+0
	RRF        R1+0, 1
	BCF        R1+0, 7
	BTFSS      R1+0, 0
	GOTO       L_main6
;Task_1.c,18 :: 		PORTC |= ((1 << 0) | (1 << 1));
	MOVLW      3
	IORWF      PORTC+0, 1
;Task_1.c,19 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main7:
	DECFSZ     R13+0, 1
	GOTO       L_main7
	DECFSZ     R12+0, 1
	GOTO       L_main7
	DECFSZ     R11+0, 1
	GOTO       L_main7
	NOP
	NOP
;Task_1.c,20 :: 		PORTC &= ~((1 << 0) | (1 << 1));
	MOVLW      252
	ANDWF      PORTC+0, 1
;Task_1.c,21 :: 		Delay_ms(500);
	MOVLW      6
	MOVWF      R11+0
	MOVLW      19
	MOVWF      R12+0
	MOVLW      173
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	DECFSZ     R11+0, 1
	GOTO       L_main8
	NOP
	NOP
;Task_1.c,22 :: 		}
	GOTO       L_main9
L_main6:
;Task_1.c,24 :: 		PORTC &= ~((1 << 0) | (1 << 1));
	MOVLW      252
	ANDWF      PORTC+0, 1
;Task_1.c,25 :: 		}
L_main9:
L_main5:
;Task_1.c,26 :: 		}
	GOTO       L_main0
;Task_1.c,27 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
