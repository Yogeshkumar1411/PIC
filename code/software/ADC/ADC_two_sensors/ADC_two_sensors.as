opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F887
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_adc
	FNCALL	_main,_delay
	FNCALL	_adc,___awdiv
	FNCALL	_adc,___awmod
	FNCALL	_adc,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_DV
	global	_DV1
	global	_H
	global	_H1
	global	_L
	global	_L1
	global	_a
	global	_a1
	global	_b
	global	_b1
	global	_c
	global	_c1
	global	_d
	global	_d1
	global	_e
	global	_e1
	global	_f
	global	_f1
	global	_ADCON0
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_GO
_GO	set	249
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"ADC_two_sensors.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DV:
       ds      2

_DV1:
       ds      2

_H:
       ds      2

_H1:
       ds      2

_L:
       ds      2

_L1:
       ds      2

_a:
       ds      2

_a1:
       ds      2

_b:
       ds      2

_b1:
       ds      2

_c:
       ds      2

_c1:
       ds      2

_d:
       ds      2

_d1:
       ds      2

_e:
       ds      2

_e1:
       ds      2

_f:
       ds      2

_f1:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+024h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	?_adc
?_adc:	; 0 bytes @ 0x9
	global	adc@i
adc@i:	; 2 bytes @ 0x9
	ds	2
	global	adc@j
adc@j:	; 2 bytes @ 0xB
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_adc
??_adc:	; 0 bytes @ 0x0
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 36, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      2      38
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_adc
;;   _adc->___awdiv
;;   _lcd_cmd->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_adc
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     838
;;                                             13 COMMON     1     1      0
;;                            _lcd_cmd
;;                                _adc
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                  6     2      4     728
;;                                              9 COMMON     4     0      4
;;                                              0 BANK0      2     2      0
;;                            ___awdiv
;;                            ___awmod
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              3     1      2      88
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _adc
;;     ___awdiv
;;     ___awmod
;;     _lcd_cmd
;;       _delay
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      34       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      2      26       5       47.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      37      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 99 in file "D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;;		_adc
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
	line	99
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	100
	
l2524:	
;ADC_two_sensors.c: 100: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	101
	
l2526:	
;ADC_two_sensors.c: 101: TRISA=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	102
	
l2528:	
;ADC_two_sensors.c: 102: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	103
	
l2530:	
;ADC_two_sensors.c: 103: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	104
	
l2532:	
;ADC_two_sensors.c: 104: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	105
	
l2534:	
;ADC_two_sensors.c: 105: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	106
	
l2536:	
;ADC_two_sensors.c: 106: ANSEL=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	107
;ADC_two_sensors.c: 107: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	108
	
l2538:	
;ADC_two_sensors.c: 108: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	109
	
l2540:	
;ADC_two_sensors.c: 109: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	110
	
l2542:	
;ADC_two_sensors.c: 110: lcd_cmd(0,0,0X0E);
	clrf	(?_lcd_cmd)
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2544
	line	111
;ADC_two_sensors.c: 111: while(1)
	
l1080:	
	line	113
	
l2544:	
;ADC_two_sensors.c: 112: {
;ADC_two_sensors.c: 113: adc(0X85,0XC0);
	movlw	low(085h)
	movwf	(?_adc)
	movlw	high(085h)
	movwf	((?_adc))+1
	movlw	low(0C0h)
	movwf	0+(?_adc)+02h
	movlw	high(0C0h)
	movwf	(0+(?_adc)+02h)+1
	fcall	_adc
	line	114
	
l2546:	
;ADC_two_sensors.c: 114: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	line	115
	
l2548:	
;ADC_two_sensors.c: 115: adc(0X81,0X80);
	movlw	low(081h)
	movwf	(?_adc)
	movlw	high(081h)
	movwf	((?_adc))+1
	movlw	low(080h)
	movwf	0+(?_adc)+02h
	movlw	high(080h)
	movwf	(0+(?_adc)+02h)+1
	fcall	_adc
	line	116
	
l2550:	
;ADC_two_sensors.c: 116: delay(5000);
	movlw	low(01388h)
	movwf	(?_delay)
	movlw	high(01388h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2544
	line	118
	
l1081:	
	line	111
	goto	l2544
	
l1082:	
	line	119
	
l1083:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_adc
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _adc *****************
;; Defined at:
;;		line 25 in file "D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
;; Parameters:    Size  Location     Type
;;  i               2    9[COMMON] int 
;;  j               2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text143
	file	"D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
	line	25
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 5
; Regs used in _adc: [wreg+status,2+status,0+pclath+cstack]
	line	27
	
l2482:	
;ADC_two_sensors.c: 27: H=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_H)
	movf	1+(??_adc+0)+0,w
	movwf	(_H+1)
	line	28
;ADC_two_sensors.c: 28: L=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_L)
	movf	1+(??_adc+0)+0,w
	movwf	(_L+1)
	line	29
;ADC_two_sensors.c: 29: ADCON0=i;
	movf	(adc@i),w
	movwf	(31)	;volatile
	line	30
	
l2484:	
;ADC_two_sensors.c: 30: GO=1;
	bsf	(249/8),(249)&7
	line	31
;ADC_two_sensors.c: 31: while(GO);
	goto	l1070
	
l1071:	
	
l1070:	
	btfsc	(249/8),(249)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l1070
u2480:
	goto	l2486
	
l1072:	
	line	33
	
l2486:	
;ADC_two_sensors.c: 33: if(H==0)
	movf	((_H+1)),w
	iorwf	((_H)),w
	skipz
	goto	u2491
	goto	u2490
u2491:
	goto	l2490
u2490:
	line	35
	
l2488:	
;ADC_two_sensors.c: 34: {
;ADC_two_sensors.c: 35: DV=L+0;
	movf	(_L+1),w
	clrf	(_DV+1)
	addwf	(_DV+1)
	movf	(_L),w
	clrf	(_DV)
	addwf	(_DV)

	goto	l2490
	line	36
	
l1073:	
	line	37
	
l2490:	
;ADC_two_sensors.c: 36: }
;ADC_two_sensors.c: 37: if(H==1)
	movlw	01h
	xorwf	(_H),w
	iorwf	(_H+1),w
	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l2494
u2500:
	line	39
	
l2492:	
;ADC_two_sensors.c: 38: {
;ADC_two_sensors.c: 39: DV=L+256;
	movf	(_L),w
	addlw	low(0100h)
	movwf	(_DV)
	movf	(_L+1),w
	skipnc
	addlw	1
	addlw	high(0100h)
	movwf	1+(_DV)
	goto	l2494
	line	40
	
l1074:	
	line	41
	
l2494:	
;ADC_two_sensors.c: 40: }
;ADC_two_sensors.c: 41: if(H==2)
	movlw	02h
	xorwf	(_H),w
	iorwf	(_H+1),w
	skipz
	goto	u2511
	goto	u2510
u2511:
	goto	l2498
u2510:
	line	43
	
l2496:	
;ADC_two_sensors.c: 42: {
;ADC_two_sensors.c: 43: DV=L+512;
	movf	(_L),w
	addlw	low(0200h)
	movwf	(_DV)
	movf	(_L+1),w
	skipnc
	addlw	1
	addlw	high(0200h)
	movwf	1+(_DV)
	goto	l2498
	line	44
	
l1075:	
	line	45
	
l2498:	
;ADC_two_sensors.c: 44: }
;ADC_two_sensors.c: 45: if(H==3)
	movlw	03h
	xorwf	(_H),w
	iorwf	(_H+1),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l2502
u2520:
	line	47
	
l2500:	
;ADC_two_sensors.c: 46: {
;ADC_two_sensors.c: 47: DV=L+768;
	movf	(_L),w
	addlw	low(0300h)
	movwf	(_DV)
	movf	(_L+1),w
	skipnc
	addlw	1
	addlw	high(0300h)
	movwf	1+(_DV)
	goto	l2502
	line	48
	
l1076:	
	line	49
	
l2502:	
;ADC_two_sensors.c: 48: }
;ADC_two_sensors.c: 49: a=DV/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_DV+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_DV),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	50
	
l2504:	
;ADC_two_sensors.c: 50: b=DV%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(_DV+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_DV),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	line	51
	
l2506:	
;ADC_two_sensors.c: 51: c=b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	52
	
l2508:	
;ADC_two_sensors.c: 52: d=b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_d)
	addwf	(_d)

	line	53
	
l2510:	
;ADC_two_sensors.c: 53: e=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_e+1)
	addwf	(_e+1)
	movf	(0+(?___awdiv)),w
	clrf	(_e)
	addwf	(_e)

	line	54
	
l2512:	
;ADC_two_sensors.c: 54: f=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_f+1)
	addwf	(_f+1)
	movf	(0+(?___awmod)),w
	clrf	(_f)
	addwf	(_f)

	line	55
	
l2514:	
;ADC_two_sensors.c: 55: lcd_cmd(0,0,j);
	clrf	(?_lcd_cmd)
	movf	(adc@j),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	56
	
l2516:	
;ADC_two_sensors.c: 56: lcd_cmd(1,0,0X30+a);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	57
	
l2518:	
;ADC_two_sensors.c: 57: lcd_cmd(1,0,0X30+c);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	58
	
l2520:	
;ADC_two_sensors.c: 58: lcd_cmd(1,0,0X30+e);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	59
	
l2522:	
;ADC_two_sensors.c: 59: lcd_cmd(1,0,0X30+f);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_f),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	61
	
l1077:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,8312
	global	_lcd_cmd
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 15 in file "D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] unsigned char 
;;  c               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text144
	file	"D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
	line	15
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 5
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	16
	
l2470:	
;ADC_two_sensors.c: 16: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2441
	goto	u2440
	
u2441:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2454
u2440:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2454:
	line	17
;ADC_two_sensors.c: 17: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2461
	goto	u2460
	
u2461:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2474
u2460:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2474:
	line	18
	
l2472:	
;ADC_two_sensors.c: 18: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	19
	
l2474:	
;ADC_two_sensors.c: 19: RE2=1;
	bsf	(74/8),(74)&7
	line	20
	
l2476:	
;ADC_two_sensors.c: 20: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l2478:	
;ADC_two_sensors.c: 21: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	22
	
l2480:	
;ADC_two_sensors.c: 22: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	___awmod
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text145
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2436:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2351
	goto	u2350
u2351:
	goto	l2440
u2350:
	line	10
	
l2438:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2440
	line	12
	
l1300:	
	line	13
	
l2440:	
	btfss	(___awmod@divisor+1),7
	goto	u2361
	goto	u2360
u2361:
	goto	l2444
u2360:
	line	14
	
l2442:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2444
	
l1301:	
	line	15
	
l2444:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2371
	goto	u2370
u2371:
	goto	l2462
u2370:
	line	16
	
l2446:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2452
	
l1304:	
	line	18
	
l2448:	
	movlw	01h
	
u2385:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2385
	line	19
	
l2450:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2452
	line	20
	
l1303:	
	line	17
	
l2452:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l2448
u2390:
	goto	l2454
	
l1305:	
	goto	l2454
	line	21
	
l1306:	
	line	22
	
l2454:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2405
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2405:
	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l2458
u2400:
	line	23
	
l2456:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2458
	
l1307:	
	line	24
	
l2458:	
	movlw	01h
	
u2415:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2415
	line	25
	
l2460:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2421
	goto	u2420
u2421:
	goto	l2454
u2420:
	goto	l2462
	
l1308:	
	goto	l2462
	line	26
	
l1302:	
	line	27
	
l2462:	
	movf	(___awmod@sign),w
	skipz
	goto	u2430
	goto	l2466
u2430:
	line	28
	
l2464:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2466
	
l1309:	
	line	29
	
l2466:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1310
	
l2468:	
	line	30
	
l1310:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text146
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2396:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l2400
u2250:
	line	11
	
l2398:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2400
	line	13
	
l1232:	
	line	14
	
l2400:	
	btfss	(___awdiv@dividend+1),7
	goto	u2261
	goto	u2260
u2261:
	goto	l2406
u2260:
	line	15
	
l2402:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2404:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2406
	line	17
	
l1233:	
	line	18
	
l2406:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2408:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2271
	goto	u2270
u2271:
	goto	l2428
u2270:
	line	20
	
l2410:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2416
	
l1236:	
	line	22
	
l2412:	
	movlw	01h
	
u2285:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2285
	line	23
	
l2414:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2416
	line	24
	
l1235:	
	line	21
	
l2416:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2412
u2290:
	goto	l2418
	
l1237:	
	goto	l2418
	line	25
	
l1238:	
	line	26
	
l2418:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2305
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2315
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2315:
	skipc
	goto	u2311
	goto	u2310
u2311:
	goto	l2424
u2310:
	line	28
	
l2420:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2422:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2424
	line	30
	
l1239:	
	line	31
	
l2424:	
	movlw	01h
	
u2325:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2325
	line	32
	
l2426:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2331
	goto	u2330
u2331:
	goto	l2418
u2330:
	goto	l2428
	
l1240:	
	goto	l2428
	line	33
	
l1234:	
	line	34
	
l2428:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2340
	goto	l2432
u2340:
	line	35
	
l2430:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2432
	
l1241:	
	line	36
	
l2432:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1242
	
l2434:	
	line	37
	
l1242:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _delay *****************
;; Defined at:
;;		line 11 in file "D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_lcd_cmd
;;		_main
;; This function uses a non-reentrant model
;;
psect	text147
	file	"D:\Embedded\pic\code\software\ADC\ADC_two_sensors\ADC_two_sensors.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	12
	
l2392:	
;ADC_two_sensors.c: 12: while(ms--);
	goto	l2394
	
l1062:	
	goto	l2394
	
l1061:	
	
l2394:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2245
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2245:

	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l2394
u2240:
	goto	l1064
	
l1063:	
	line	13
	
l1064:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
