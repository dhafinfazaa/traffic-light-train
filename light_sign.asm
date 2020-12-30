
_main:

;light_sign.c,3 :: 		void main() {
;light_sign.c,4 :: 		TRISB = 0;
	CLRF       TRISB+0
;light_sign.c,5 :: 		TRISC = 0;
	CLRF       TRISC+0
;light_sign.c,6 :: 		TRISD = 0;
	CLRF       TRISD+0
;light_sign.c,7 :: 		PORTB = 0;
	CLRF       PORTB+0
;light_sign.c,8 :: 		PORTC = 0;
	CLRF       PORTC+0
;light_sign.c,9 :: 		PORTD = 0;
	CLRF       PORTD+0
;light_sign.c,10 :: 		while(1){
L_main0:
;light_sign.c,13 :: 		for(i = 3;i>=0;i--){
	MOVLW      3
	MOVWF      main_i_L1+0
	MOVLW      0
	MOVWF      main_i_L1+1
L_main2:
	MOVLW      128
	XORWF      main_i_L1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main60
	MOVLW      0
	SUBWF      main_i_L1+0, 0
L__main60:
	BTFSS      STATUS+0, 0
	GOTO       L_main3
;light_sign.c,14 :: 		seven_seg_c(i);
	MOVF       main_i_L1+0, 0
	MOVWF      FARG_seven_seg_c_i+0
	MOVF       main_i_L1+1, 0
	MOVWF      FARG_seven_seg_c_i+1
	CALL       _seven_seg_c+0
;light_sign.c,15 :: 		PORTB = 0b00000001;
	MOVLW      1
	MOVWF      PORTB+0
;light_sign.c,16 :: 		for(j = 9;j >= 0;j--){
	MOVLW      9
	MOVWF      main_j_L1+0
	MOVLW      0
	MOVWF      main_j_L1+1
L_main5:
	MOVLW      128
	XORWF      main_j_L1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main61
	MOVLW      0
	SUBWF      main_j_L1+0, 0
L__main61:
	BTFSS      STATUS+0, 0
	GOTO       L_main6
;light_sign.c,17 :: 		seven_seg_d(j);
	MOVF       main_j_L1+0, 0
	MOVWF      FARG_seven_seg_d_i+0
	MOVF       main_j_L1+1, 0
	MOVWF      FARG_seven_seg_d_i+1
	CALL       _seven_seg_d+0
;light_sign.c,18 :: 		Delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main8:
	DECFSZ     R13+0, 1
	GOTO       L_main8
	DECFSZ     R12+0, 1
	GOTO       L_main8
	NOP
	NOP
;light_sign.c,16 :: 		for(j = 9;j >= 0;j--){
	MOVLW      1
	SUBWF      main_j_L1+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_j_L1+1, 1
;light_sign.c,19 :: 		}
	GOTO       L_main5
L_main6:
;light_sign.c,13 :: 		for(i = 3;i>=0;i--){
	MOVLW      1
	SUBWF      main_i_L1+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L1+1, 1
;light_sign.c,20 :: 		}
	GOTO       L_main2
L_main3:
;light_sign.c,23 :: 		for(i = 0;i>=0;i--){
	CLRF       main_i_L1+0
	CLRF       main_i_L1+1
L_main9:
	MOVLW      128
	XORWF      main_i_L1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main62
	MOVLW      0
	SUBWF      main_i_L1+0, 0
L__main62:
	BTFSS      STATUS+0, 0
	GOTO       L_main10
;light_sign.c,24 :: 		seven_seg_c(i);
	MOVF       main_i_L1+0, 0
	MOVWF      FARG_seven_seg_c_i+0
	MOVF       main_i_L1+1, 0
	MOVWF      FARG_seven_seg_c_i+1
	CALL       _seven_seg_c+0
;light_sign.c,25 :: 		PORTB = 0b00000010;
	MOVLW      2
	MOVWF      PORTB+0
;light_sign.c,26 :: 		for(j = 5;j >= 0;j--){
	MOVLW      5
	MOVWF      main_j_L1+0
	MOVLW      0
	MOVWF      main_j_L1+1
L_main12:
	MOVLW      128
	XORWF      main_j_L1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main63
	MOVLW      0
	SUBWF      main_j_L1+0, 0
L__main63:
	BTFSS      STATUS+0, 0
	GOTO       L_main13
;light_sign.c,27 :: 		seven_seg_d(j);
	MOVF       main_j_L1+0, 0
	MOVWF      FARG_seven_seg_d_i+0
	MOVF       main_j_L1+1, 0
	MOVWF      FARG_seven_seg_d_i+1
	CALL       _seven_seg_d+0
;light_sign.c,28 :: 		Delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main15:
	DECFSZ     R13+0, 1
	GOTO       L_main15
	DECFSZ     R12+0, 1
	GOTO       L_main15
	NOP
	NOP
;light_sign.c,26 :: 		for(j = 5;j >= 0;j--){
	MOVLW      1
	SUBWF      main_j_L1+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_j_L1+1, 1
;light_sign.c,29 :: 		}
	GOTO       L_main12
L_main13:
;light_sign.c,23 :: 		for(i = 0;i>=0;i--){
	MOVLW      1
	SUBWF      main_i_L1+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L1+1, 1
;light_sign.c,30 :: 		}
	GOTO       L_main9
L_main10:
;light_sign.c,32 :: 		for(i = 1;i>=0;i--){
	MOVLW      1
	MOVWF      main_i_L1+0
	MOVLW      0
	MOVWF      main_i_L1+1
L_main16:
	MOVLW      128
	XORWF      main_i_L1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main64
	MOVLW      0
	SUBWF      main_i_L1+0, 0
L__main64:
	BTFSS      STATUS+0, 0
	GOTO       L_main17
;light_sign.c,33 :: 		seven_seg_c(i);
	MOVF       main_i_L1+0, 0
	MOVWF      FARG_seven_seg_c_i+0
	MOVF       main_i_L1+1, 0
	MOVWF      FARG_seven_seg_c_i+1
	CALL       _seven_seg_c+0
;light_sign.c,34 :: 		PORTB = 0b00000100;
	MOVLW      4
	MOVWF      PORTB+0
;light_sign.c,35 :: 		for(j = 9;j >= 0;j--){
	MOVLW      9
	MOVWF      main_j_L1+0
	MOVLW      0
	MOVWF      main_j_L1+1
L_main19:
	MOVLW      128
	XORWF      main_j_L1+1, 0
	MOVWF      R0+0
	MOVLW      128
	SUBWF      R0+0, 0
	BTFSS      STATUS+0, 2
	GOTO       L__main65
	MOVLW      0
	SUBWF      main_j_L1+0, 0
L__main65:
	BTFSS      STATUS+0, 0
	GOTO       L_main20
;light_sign.c,36 :: 		seven_seg_d(j);
	MOVF       main_j_L1+0, 0
	MOVWF      FARG_seven_seg_d_i+0
	MOVF       main_j_L1+1, 0
	MOVWF      FARG_seven_seg_d_i+1
	CALL       _seven_seg_d+0
;light_sign.c,37 :: 		Delay_ms(50);
	MOVLW      130
	MOVWF      R12+0
	MOVLW      221
	MOVWF      R13+0
L_main22:
	DECFSZ     R13+0, 1
	GOTO       L_main22
	DECFSZ     R12+0, 1
	GOTO       L_main22
	NOP
	NOP
;light_sign.c,35 :: 		for(j = 9;j >= 0;j--){
	MOVLW      1
	SUBWF      main_j_L1+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_j_L1+1, 1
;light_sign.c,38 :: 		}
	GOTO       L_main19
L_main20:
;light_sign.c,32 :: 		for(i = 1;i>=0;i--){
	MOVLW      1
	SUBWF      main_i_L1+0, 1
	BTFSS      STATUS+0, 0
	DECF       main_i_L1+1, 1
;light_sign.c,39 :: 		}
	GOTO       L_main16
L_main17:
;light_sign.c,40 :: 		}
	GOTO       L_main0
;light_sign.c,41 :: 		}
L_end_main:
	GOTO       $+0
; end of _main

_seven_seg_c:

;light_sign.c,43 :: 		void seven_seg_c (int i){
;light_sign.c,45 :: 		if (i == 0){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c67
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c67:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c23
;light_sign.c,46 :: 		portc = 0b01000000;
	MOVLW      64
	MOVWF      PORTC+0
;light_sign.c,47 :: 		}
L_seven_seg_c23:
;light_sign.c,49 :: 		if (i == 1){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c68
	MOVLW      1
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c68:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c24
;light_sign.c,50 :: 		portc = 0b01111001;
	MOVLW      121
	MOVWF      PORTC+0
;light_sign.c,51 :: 		}
	GOTO       L_seven_seg_c25
L_seven_seg_c24:
;light_sign.c,53 :: 		else if (i == 2){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c69
	MOVLW      2
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c69:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c26
;light_sign.c,54 :: 		PORTc = 0b00100100;
	MOVLW      36
	MOVWF      PORTC+0
;light_sign.c,55 :: 		}
	GOTO       L_seven_seg_c27
L_seven_seg_c26:
;light_sign.c,57 :: 		else if (i == 3){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c70
	MOVLW      3
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c70:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c28
;light_sign.c,58 :: 		PORTc = 0b00110000;
	MOVLW      48
	MOVWF      PORTC+0
;light_sign.c,59 :: 		}
	GOTO       L_seven_seg_c29
L_seven_seg_c28:
;light_sign.c,61 :: 		else if (i == 4){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c71
	MOVLW      4
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c71:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c30
;light_sign.c,62 :: 		PORTc = 0b00011001;
	MOVLW      25
	MOVWF      PORTC+0
;light_sign.c,63 :: 		}
	GOTO       L_seven_seg_c31
L_seven_seg_c30:
;light_sign.c,65 :: 		else if (i == 5){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c72
	MOVLW      5
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c72:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c32
;light_sign.c,66 :: 		PORTc = 0b00010010;
	MOVLW      18
	MOVWF      PORTC+0
;light_sign.c,67 :: 		}
	GOTO       L_seven_seg_c33
L_seven_seg_c32:
;light_sign.c,69 :: 		else if (i == 6){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c73
	MOVLW      6
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c73:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c34
;light_sign.c,70 :: 		PORTc = 0b00000010;
	MOVLW      2
	MOVWF      PORTC+0
;light_sign.c,71 :: 		}
	GOTO       L_seven_seg_c35
L_seven_seg_c34:
;light_sign.c,73 :: 		else if (i == 7){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c74
	MOVLW      7
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c74:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c36
;light_sign.c,74 :: 		PORTc = 0b01111000;
	MOVLW      120
	MOVWF      PORTC+0
;light_sign.c,75 :: 		}
	GOTO       L_seven_seg_c37
L_seven_seg_c36:
;light_sign.c,77 :: 		else if (i == 8){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c75
	MOVLW      8
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c75:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c38
;light_sign.c,78 :: 		PORTc = 0b00000000;
	CLRF       PORTC+0
;light_sign.c,79 :: 		}
	GOTO       L_seven_seg_c39
L_seven_seg_c38:
;light_sign.c,81 :: 		else if (i == 9){
	MOVLW      0
	XORWF      FARG_seven_seg_c_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_c76
	MOVLW      9
	XORWF      FARG_seven_seg_c_i+0, 0
L__seven_seg_c76:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_c40
;light_sign.c,82 :: 		PORTc = 0b00010000;
	MOVLW      16
	MOVWF      PORTC+0
;light_sign.c,83 :: 		}
L_seven_seg_c40:
L_seven_seg_c39:
L_seven_seg_c37:
L_seven_seg_c35:
L_seven_seg_c33:
L_seven_seg_c31:
L_seven_seg_c29:
L_seven_seg_c27:
L_seven_seg_c25:
;light_sign.c,84 :: 		}
L_end_seven_seg_c:
	RETURN
; end of _seven_seg_c

_seven_seg_d:

;light_sign.c,85 :: 		void seven_seg_d (int i){
;light_sign.c,87 :: 		if (i == 0){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d78
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d78:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d41
;light_sign.c,88 :: 		portd = 0b01000000;
	MOVLW      64
	MOVWF      PORTD+0
;light_sign.c,89 :: 		}
L_seven_seg_d41:
;light_sign.c,91 :: 		if (i == 1){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d79
	MOVLW      1
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d79:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d42
;light_sign.c,92 :: 		portd = 0b01111001;
	MOVLW      121
	MOVWF      PORTD+0
;light_sign.c,93 :: 		}
	GOTO       L_seven_seg_d43
L_seven_seg_d42:
;light_sign.c,95 :: 		else if (i == 2){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d80
	MOVLW      2
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d80:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d44
;light_sign.c,96 :: 		PORTD = 0b00100100;
	MOVLW      36
	MOVWF      PORTD+0
;light_sign.c,97 :: 		}
	GOTO       L_seven_seg_d45
L_seven_seg_d44:
;light_sign.c,99 :: 		else if (i == 3){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d81
	MOVLW      3
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d81:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d46
;light_sign.c,100 :: 		PORTD = 0b00110000;
	MOVLW      48
	MOVWF      PORTD+0
;light_sign.c,101 :: 		}
	GOTO       L_seven_seg_d47
L_seven_seg_d46:
;light_sign.c,103 :: 		else if (i == 4){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d82
	MOVLW      4
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d82:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d48
;light_sign.c,104 :: 		PORTD = 0b00011001;
	MOVLW      25
	MOVWF      PORTD+0
;light_sign.c,105 :: 		}
	GOTO       L_seven_seg_d49
L_seven_seg_d48:
;light_sign.c,107 :: 		else if (i == 5){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d83
	MOVLW      5
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d83:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d50
;light_sign.c,108 :: 		PORTD = 0b00010010;
	MOVLW      18
	MOVWF      PORTD+0
;light_sign.c,109 :: 		}
	GOTO       L_seven_seg_d51
L_seven_seg_d50:
;light_sign.c,111 :: 		else if (i == 6){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d84
	MOVLW      6
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d84:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d52
;light_sign.c,112 :: 		PORTD = 0b00000010;
	MOVLW      2
	MOVWF      PORTD+0
;light_sign.c,113 :: 		}
	GOTO       L_seven_seg_d53
L_seven_seg_d52:
;light_sign.c,115 :: 		else if (i == 7){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d85
	MOVLW      7
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d85:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d54
;light_sign.c,116 :: 		PORTD = 0b01111000;
	MOVLW      120
	MOVWF      PORTD+0
;light_sign.c,117 :: 		}
	GOTO       L_seven_seg_d55
L_seven_seg_d54:
;light_sign.c,119 :: 		else if (i == 8){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d86
	MOVLW      8
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d86:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d56
;light_sign.c,120 :: 		PORTD = 0b00000000;
	CLRF       PORTD+0
;light_sign.c,121 :: 		}
	GOTO       L_seven_seg_d57
L_seven_seg_d56:
;light_sign.c,123 :: 		else if (i == 9){
	MOVLW      0
	XORWF      FARG_seven_seg_d_i+1, 0
	BTFSS      STATUS+0, 2
	GOTO       L__seven_seg_d87
	MOVLW      9
	XORWF      FARG_seven_seg_d_i+0, 0
L__seven_seg_d87:
	BTFSS      STATUS+0, 2
	GOTO       L_seven_seg_d58
;light_sign.c,124 :: 		PORTD = 0b00010000;
	MOVLW      16
	MOVWF      PORTD+0
;light_sign.c,125 :: 		}
L_seven_seg_d58:
L_seven_seg_d57:
L_seven_seg_d55:
L_seven_seg_d53:
L_seven_seg_d51:
L_seven_seg_d49:
L_seven_seg_d47:
L_seven_seg_d45:
L_seven_seg_d43:
;light_sign.c,126 :: 		}
L_end_seven_seg_d:
	RETURN
; end of _seven_seg_d
