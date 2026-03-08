
_Toggle_LED_Callback:

;main.c,11 :: 		void Toggle_LED_Callback(void) {
;main.c,13 :: 		PORTC ^= (1 << 0);
	MOVLW      1
	XORWF      PORTC+0, 1
;main.c,14 :: 		}
L_end_Toggle_LED_Callback:
	RETURN
; end of _Toggle_LED_Callback

_main:

;main.c,16 :: 		int main() {
;main.c,18 :: 		LED_Init(_PORTC, 0);
	MOVLW      2
	MOVWF      FARG_LED_Init_port+0
	CLRF       FARG_LED_Init_pin+0
	CALL       _LED_Init+0
;main.c,21 :: 		EXT_INTO_Init();
	CALL       _EXT_INTO_Init+0
;main.c,22 :: 		EXT_INTO_SetEdge(1);
	MOVLW      1
	MOVWF      FARG_EXT_INTO_SetEdge_edge_type+0
	CALL       _EXT_INTO_SetEdge+0
;main.c,25 :: 		EXT_INTO_SetCallback(Toggle_LED_Callback);
	MOVLW      _Toggle_LED_Callback+0
	MOVWF      FARG_EXT_INTO_SetCallback_ptr+0
	MOVLW      hi_addr(_Toggle_LED_Callback+0)
	MOVWF      FARG_EXT_INTO_SetCallback_ptr+1
	MOVLW      0
	MOVWF      FARG_EXT_INTO_SetCallback_ptr+2
	MOVLW      0
	CALL       _EXT_INTO_SetCallback+0
;main.c,28 :: 		EXT_INTO_Enable();
	CALL       _EXT_INTO_Enable+0
;main.c,30 :: 		while(1) {
L_main0:
;main.c,32 :: 		}
	GOTO       L_main0
;main.c,35 :: 		}
L_end_main:
	GOTO       $+0
; end of _main
