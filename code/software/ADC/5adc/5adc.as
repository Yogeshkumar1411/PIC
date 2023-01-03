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
	FNCALL	_adc,___awdiv
	FNCALL	_adc,___awmod
	FNCALL	_adc,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_DV
	global	_DV1
	global	_DV2
	global	_DV3
	global	_DV4
	global	_DV5
	global	_H
	global	_L
	global	_a
	global	_b
	global	_c
	global	_d
	global	_e
	global	_f
	global	_ADCON0
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
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
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"5adc.as"
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

_DV2:
       ds      2

_DV3:
       ds      2

_DV4:
       ds      2

_DV5:
       ds      2

_H:
       ds      2

_L:
       ds      2

_a:
       ds      2

_b:
       ds      2

_c:
       ds      2

_d:
       ds      2

_e:
       ds      2

_f:
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
	movlw	low((__pbssBANK0)+01Ch)
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
?_adc:	; 2 bytes @ 0x9
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
;;Data sizes: Strings 0, constant 0, data 0, bss 28, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      2      30
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_adc	int  size(1) Largest target is 0
;;
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
;; (0) _main                                                 1     1      0     816
;;                                             13 COMMON     1     1      0
;;                            _lcd_cmd
;;                                _adc
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
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
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
;;ABS                  0      0      2C       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      2      1E       5       37.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      2F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l2550:	
;5adc.c: 49: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	50
	
l2552:	
;5adc.c: 50: TRISA=0X2F;
	movlw	(02Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	51
	
l2554:	
;5adc.c: 51: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	52
	
l2556:	
;5adc.c: 52: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	53
	
l2558:	
;5adc.c: 53: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	54
	
l2560:	
;5adc.c: 54: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	55
	
l2562:	
;5adc.c: 55: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	56
	
l2564:	
;5adc.c: 56: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	57
	
l2566:	
;5adc.c: 57: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
	
l2568:	
;5adc.c: 58: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	59
	
l2570:	
;5adc.c: 59: ANSEL=0X1F;
	movlw	(01Fh)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	60
;5adc.c: 60: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	61
	
l2572:	
;5adc.c: 61: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	62
	
l2574:	
;5adc.c: 62: lcd_cmd(0,0,0X0E);
	clrf	(?_lcd_cmd)
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2576
	line	63
;5adc.c: 63: while(1)
	
l1068:	
	line	65
	
l2576:	
;5adc.c: 64: {
;5adc.c: 65: DV1=adc(0X81,0X80);
	movlw	low(081h)
	movwf	(?_adc)
	movlw	high(081h)
	movwf	((?_adc))+1
	movlw	low(080h)
	movwf	0+(?_adc)+02h
	movlw	high(080h)
	movwf	(0+(?_adc)+02h)+1
	fcall	_adc
	movf	(1+(?_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_DV1+1)
	addwf	(_DV1+1)
	movf	(0+(?_adc)),w
	clrf	(_DV1)
	addwf	(_DV1)

	line	66
	
l2578:	
;5adc.c: 66: DV2=adc(0X85,0X85);
	movlw	low(085h)
	movwf	(?_adc)
	movlw	high(085h)
	movwf	((?_adc))+1
	movlw	low(085h)
	movwf	0+(?_adc)+02h
	movlw	high(085h)
	movwf	(0+(?_adc)+02h)+1
	fcall	_adc
	movf	(1+(?_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_DV2+1)
	addwf	(_DV2+1)
	movf	(0+(?_adc)),w
	clrf	(_DV2)
	addwf	(_DV2)

	line	67
	
l2580:	
;5adc.c: 67: DV3=adc(0X89,0X8A);
	movlw	low(089h)
	movwf	(?_adc)
	movlw	high(089h)
	movwf	((?_adc))+1
	movlw	low(08Ah)
	movwf	0+(?_adc)+02h
	movlw	high(08Ah)
	movwf	(0+(?_adc)+02h)+1
	fcall	_adc
	movf	(1+(?_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_DV3+1)
	addwf	(_DV3+1)
	movf	(0+(?_adc)),w
	clrf	(_DV3)
	addwf	(_DV3)

	line	68
	
l2582:	
;5adc.c: 68: DV4=adc(0X9D,0XC0);
	movlw	low(09Dh)
	movwf	(?_adc)
	movlw	high(09Dh)
	movwf	((?_adc))+1
	movlw	low(0C0h)
	movwf	0+(?_adc)+02h
	movlw	high(0C0h)
	movwf	(0+(?_adc)+02h)+1
	fcall	_adc
	movf	(1+(?_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_DV4+1)
	addwf	(_DV4+1)
	movf	(0+(?_adc)),w
	clrf	(_DV4)
	addwf	(_DV4)

	line	69
	
l2584:	
;5adc.c: 69: DV5=adc(0X91,0XC5);
	movlw	low(091h)
	movwf	(?_adc)
	movlw	high(091h)
	movwf	((?_adc))+1
	movlw	low(0C5h)
	movwf	0+(?_adc)+02h
	movlw	high(0C5h)
	movwf	(0+(?_adc)+02h)+1
	fcall	_adc
	movf	(1+(?_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_DV5+1)
	addwf	(_DV5+1)
	movf	(0+(?_adc)),w
	clrf	(_DV5)
	addwf	(_DV5)

	line	70
	
l2586:	
;5adc.c: 70: if(DV1>500)
	movf	(_DV1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2555
	movlw	low(01F5h)
	subwf	(_DV1),w
u2555:

	skipc
	goto	u2551
	goto	u2550
u2551:
	goto	l2590
u2550:
	line	72
	
l2588:	
;5adc.c: 71: {
;5adc.c: 72: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l2590
	line	73
	
l1069:	
	line	74
	
l2590:	
;5adc.c: 73: }
;5adc.c: 74: if(DV1<500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV1+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2565
	movlw	low(01F4h)
	subwf	(_DV1),w
u2565:

	skipnc
	goto	u2561
	goto	u2560
u2561:
	goto	l2594
u2560:
	line	76
	
l2592:	
;5adc.c: 75: {
;5adc.c: 76: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l2594
	line	77
	
l1070:	
	line	78
	
l2594:	
;5adc.c: 77: }
;5adc.c: 78: if(DV2>500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2575
	movlw	low(01F5h)
	subwf	(_DV2),w
u2575:

	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2598
u2570:
	line	80
	
l2596:	
;5adc.c: 79: {
;5adc.c: 80: PORTC=0X02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l2598
	line	81
	
l1071:	
	line	82
	
l2598:	
;5adc.c: 81: }
;5adc.c: 82: if(DV2<500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV2+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2585
	movlw	low(01F4h)
	subwf	(_DV2),w
u2585:

	skipnc
	goto	u2581
	goto	u2580
u2581:
	goto	l2602
u2580:
	line	84
	
l2600:	
;5adc.c: 83: {
;5adc.c: 84: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l2602
	line	85
	
l1072:	
	line	86
	
l2602:	
;5adc.c: 85: }
;5adc.c: 86: if(DV3>500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV3+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2595
	movlw	low(01F5h)
	subwf	(_DV3),w
u2595:

	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l2606
u2590:
	line	88
	
l2604:	
;5adc.c: 87: {
;5adc.c: 88: PORTC=0X04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l2606
	line	89
	
l1073:	
	line	90
	
l2606:	
;5adc.c: 89: }
;5adc.c: 90: if(DV3<500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV3+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2605
	movlw	low(01F4h)
	subwf	(_DV3),w
u2605:

	skipnc
	goto	u2601
	goto	u2600
u2601:
	goto	l2610
u2600:
	line	92
	
l2608:	
;5adc.c: 91: {
;5adc.c: 92: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l2610
	line	93
	
l1074:	
	line	94
	
l2610:	
;5adc.c: 93: }
;5adc.c: 94: if(DV4>500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV4+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2615
	movlw	low(01F5h)
	subwf	(_DV4),w
u2615:

	skipc
	goto	u2611
	goto	u2610
u2611:
	goto	l2614
u2610:
	line	96
	
l2612:	
;5adc.c: 95: {
;5adc.c: 96: PORTC=0X08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l2614
	line	97
	
l1075:	
	line	98
	
l2614:	
;5adc.c: 97: }
;5adc.c: 98: if(DV4<500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV4+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2625
	movlw	low(01F4h)
	subwf	(_DV4),w
u2625:

	skipnc
	goto	u2621
	goto	u2620
u2621:
	goto	l2618
u2620:
	line	100
	
l2616:	
;5adc.c: 99: {
;5adc.c: 100: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l2618
	line	101
	
l1076:	
	line	102
	
l2618:	
;5adc.c: 101: }
;5adc.c: 102: if(DV5>500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV5+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F5h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2635
	movlw	low(01F5h)
	subwf	(_DV5),w
u2635:

	skipc
	goto	u2631
	goto	u2630
u2631:
	goto	l2622
u2630:
	line	104
	
l2620:	
;5adc.c: 103: {
;5adc.c: 104: PORTC=0X0F;
	movlw	(0Fh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	goto	l2622
	line	106
	
l1077:	
	line	107
	
l2622:	
;5adc.c: 106: }
;5adc.c: 107: if(DV5<500)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV5+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2645
	movlw	low(01F4h)
	subwf	(_DV5),w
u2645:

	skipnc
	goto	u2641
	goto	u2640
u2641:
	goto	l2576
u2640:
	line	109
	
l2624:	
;5adc.c: 108: {
;5adc.c: 109: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	goto	l2576
	line	111
	
l1078:	
	goto	l2576
	line	113
	
l1079:	
	line	63
	goto	l2576
	
l1080:	
	line	114
	
l1081:	
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
;;		line 25 in file "D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
;; Parameters:    Size  Location     Type
;;  i               2    9[COMMON] int 
;;  j               2   11[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
	file	"D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
	line	25
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 5
; Regs used in _adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l2518:	
;5adc.c: 26: ADCON0=i;
	movf	(adc@i),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	27
;5adc.c: 27: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	29
;5adc.c: 29: H=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_H)
	movf	1+(??_adc+0)+0,w
	movwf	(_H+1)
	line	30
;5adc.c: 30: L=ADRESL;
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
	line	31
	
l2520:	
;5adc.c: 31: GO=1;
	bsf	(249/8),(249)&7
	line	32
;5adc.c: 32: while(GO);
	goto	l1062
	
l1063:	
	
l1062:	
	btfsc	(249/8),(249)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1062
u2540:
	goto	l2522
	
l1064:	
	line	33
	
l2522:	
;5adc.c: 33: DV=L+(H*256);
	movf	(_H+1),w
	movwf	(??_adc+0)+0+1
	movf	(_H),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	(_L),w
	addwf	0+(??_adc+0)+0,w
	movwf	(_DV)
	movf	(_L+1),w
	skipnc
	incf	(_L+1),w
	addwf	1+(??_adc+0)+0,w
	movwf	1+(_DV)
	line	34
	
l2524:	
;5adc.c: 34: a=DV/1000;
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

	line	35
	
l2526:	
;5adc.c: 35: b=DV%1000;
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

	line	36
	
l2528:	
;5adc.c: 36: c=b/100;
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

	line	37
	
l2530:	
;5adc.c: 37: d=b%100;
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

	line	38
	
l2532:	
;5adc.c: 38: e=d/10;
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

	line	39
	
l2534:	
;5adc.c: 39: f=d%10;
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

	line	40
	
l2536:	
;5adc.c: 40: lcd_cmd(0,0,j);
	clrf	(?_lcd_cmd)
	movf	(adc@j),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	41
	
l2538:	
;5adc.c: 41: lcd_cmd(1,0,0X30+a);
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
	line	42
	
l2540:	
;5adc.c: 42: lcd_cmd(1,0,0X30+c);
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
	line	43
	
l2542:	
;5adc.c: 43: lcd_cmd(1,0,0X30+e);
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
	line	44
	
l2544:	
;5adc.c: 44: lcd_cmd(1,0,0X30+f);
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
	line	45
	
l2546:	
;5adc.c: 45: return DV;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_DV+1),w
	clrf	(?_adc+1)
	addwf	(?_adc+1)
	movf	(_DV),w
	clrf	(?_adc)
	addwf	(?_adc)

	goto	l1065
	
l2548:	
	line	46
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,8314
	global	_lcd_cmd
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 15 in file "D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
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
	file	"D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
	line	15
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 5
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	16
	
l2506:	
;5adc.c: 16: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2501
	goto	u2500
	
u2501:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2514
u2500:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2514:
	line	17
;5adc.c: 17: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2521
	goto	u2520
	
u2521:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2534
u2520:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2534:
	line	18
	
l2508:	
;5adc.c: 18: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	19
	
l2510:	
;5adc.c: 19: RE2=1;
	bsf	(74/8),(74)&7
	line	20
	
l2512:	
;5adc.c: 20: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l2514:	
;5adc.c: 21: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	22
	
l2516:	
;5adc.c: 22: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l1059:	
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
	
l2472:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2411
	goto	u2410
u2411:
	goto	l2476
u2410:
	line	10
	
l2474:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2476
	line	12
	
l1298:	
	line	13
	
l2476:	
	btfss	(___awmod@divisor+1),7
	goto	u2421
	goto	u2420
u2421:
	goto	l2480
u2420:
	line	14
	
l2478:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2480
	
l1299:	
	line	15
	
l2480:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2431
	goto	u2430
u2431:
	goto	l2498
u2430:
	line	16
	
l2482:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2488
	
l1302:	
	line	18
	
l2484:	
	movlw	01h
	
u2445:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2445
	line	19
	
l2486:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2488
	line	20
	
l1301:	
	line	17
	
l2488:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2451
	goto	u2450
u2451:
	goto	l2484
u2450:
	goto	l2490
	
l1303:	
	goto	l2490
	line	21
	
l1304:	
	line	22
	
l2490:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2465
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2465:
	skipc
	goto	u2461
	goto	u2460
u2461:
	goto	l2494
u2460:
	line	23
	
l2492:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2494
	
l1305:	
	line	24
	
l2494:	
	movlw	01h
	
u2475:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2475
	line	25
	
l2496:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2481
	goto	u2480
u2481:
	goto	l2490
u2480:
	goto	l2498
	
l1306:	
	goto	l2498
	line	26
	
l1300:	
	line	27
	
l2498:	
	movf	(___awmod@sign),w
	skipz
	goto	u2490
	goto	l2502
u2490:
	line	28
	
l2500:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2502
	
l1307:	
	line	29
	
l2502:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1308
	
l2504:	
	line	30
	
l1308:	
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
	
l2432:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2311
	goto	u2310
u2311:
	goto	l2436
u2310:
	line	11
	
l2434:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2436
	line	13
	
l1230:	
	line	14
	
l2436:	
	btfss	(___awdiv@dividend+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l2442
u2320:
	line	15
	
l2438:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2440:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2442
	line	17
	
l1231:	
	line	18
	
l2442:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2444:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2331
	goto	u2330
u2331:
	goto	l2464
u2330:
	line	20
	
l2446:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2452
	
l1234:	
	line	22
	
l2448:	
	movlw	01h
	
u2345:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2345
	line	23
	
l2450:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2452
	line	24
	
l1233:	
	line	21
	
l2452:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2448
u2350:
	goto	l2454
	
l1235:	
	goto	l2454
	line	25
	
l1236:	
	line	26
	
l2454:	
	movlw	01h
	
u2365:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2365
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2375
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2460
u2370:
	line	28
	
l2456:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2458:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2460
	line	30
	
l1237:	
	line	31
	
l2460:	
	movlw	01h
	
u2385:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2385
	line	32
	
l2462:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l2454
u2390:
	goto	l2464
	
l1238:	
	goto	l2464
	line	33
	
l1232:	
	line	34
	
l2464:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2400
	goto	l2468
u2400:
	line	35
	
l2466:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2468
	
l1239:	
	line	36
	
l2468:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1240
	
l2470:	
	line	37
	
l1240:	
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
;;		line 11 in file "D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
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
;; This function uses a non-reentrant model
;;
psect	text147
	file	"D:\Embedded\pic\code\software\ADC\5adc\5adc.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	12
	
l2428:	
;5adc.c: 12: while(ms--);
	goto	l2430
	
l1054:	
	goto	l2430
	
l1053:	
	
l2430:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2305
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2305:

	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l2430
u2300:
	goto	l1056
	
l1055:	
	line	13
	
l1056:	
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
