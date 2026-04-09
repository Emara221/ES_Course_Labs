
_TIMER0_ISR_Handler:

;timer_implementation.c,6 :: 		void TIMER0_ISR_Handler(void)
;timer_implementation.c,8 :: 		if(timer_callback != 0)
	MOVF       timer_implementation_timer_callback+0, 0
	MOVWF      R1+0
	MOVF       timer_implementation_timer_callback+1, 0
	MOVWF      R1+1
	MOVF       timer_implementation_timer_callback+2, 0
	MOVWF      R1+2
	MOVF       timer_implementation_timer_callback+3, 0
	MOVWF      R1+3
	MOVLW      0
	MOVWF      R0+0
	XORWF      R1+3, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TIMER0_ISR_Handler2
	MOVF       R0+0, 0
	XORWF      R1+2, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TIMER0_ISR_Handler2
	MOVF       R0+0, 0
	XORWF      R1+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__TIMER0_ISR_Handler2
	MOVF       R1+0, 0
	XORLW      0
L__TIMER0_ISR_Handler2:
	BTFSC      STATUS+0, 2
	GOTO       L_TIMER0_ISR_Handler0
;timer_implementation.c,10 :: 		timer_callback();
	MOVF       timer_implementation_timer_callback+0, 0
	MOVWF      ___DoICPAddr+0
	MOVF       timer_implementation_timer_callback+1, 0
	MOVWF      ___DoICPAddr+1
	CALL       _____DoIFC+0
;timer_implementation.c,11 :: 		}
L_TIMER0_ISR_Handler0:
;timer_implementation.c,12 :: 		}
L_end_TIMER0_ISR_Handler:
	RETURN
; end of _TIMER0_ISR_Handler

_TIMER0_Init:

;timer_implementation.c,13 :: 		void TIMER0_Init(void)
;timer_implementation.c,15 :: 		CLR_BIT(OPTION_REG_REG, T0CS);
	BCF        129, 5
;timer_implementation.c,16 :: 		CLR_BIT(OPTION_REG_REG, PSA);
	BCF        129, 3
;timer_implementation.c,17 :: 		SET_BIT(OPTION_REG_REG, PS2);
	BSF        129, 2
;timer_implementation.c,18 :: 		SET_BIT(OPTION_REG_REG, PS1);
	BSF        129, 1
;timer_implementation.c,19 :: 		SET_BIT(OPTION_REG_REG, PS0);
	BSF        129, 0
;timer_implementation.c,20 :: 		SET_BIT(INTCON_REG, T0IE);
	BSF        11, 5
;timer_implementation.c,21 :: 		SET_BIT(INTCON_REG, GIE);
	BSF        11, 7
;timer_implementation.c,22 :: 		}
L_end_TIMER0_Init:
	RETURN
; end of _TIMER0_Init

_TIMER0_SetPreload:

;timer_implementation.c,23 :: 		void TIMER0_SetPreload(u8 preload)
;timer_implementation.c,25 :: 		TMR0_REG = preload;
	MOVF       FARG_TIMER0_SetPreload_preload+0, 0
	MOVWF      1
;timer_implementation.c,26 :: 		}
L_end_TIMER0_SetPreload:
	RETURN
; end of _TIMER0_SetPreload

_TIMER0_SetCallback:

;timer_implementation.c,27 :: 		void TIMER0_SetCallback(void (*ptr)(void))
;timer_implementation.c,29 :: 		timer_callback = ptr;
	MOVF       FARG_TIMER0_SetCallback_ptr+0, 0
	MOVWF      timer_implementation_timer_callback+0
	MOVF       FARG_TIMER0_SetCallback_ptr+1, 0
	MOVWF      timer_implementation_timer_callback+1
	MOVF       FARG_TIMER0_SetCallback_ptr+2, 0
	MOVWF      timer_implementation_timer_callback+2
	MOVF       FARG_TIMER0_SetCallback_ptr+3, 0
;timer_implementation.c,30 :: 		}
L_end_TIMER0_SetCallback:
	RETURN
; end of _TIMER0_SetCallback
