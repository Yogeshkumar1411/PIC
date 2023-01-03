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
	FNCALL	_main,_print
	FNCALL	_main,_adc
	FNCALL	_adc,___awdiv
	FNCALL	_adc,___awmod
	FNCALL	_adc,_lcd_cmd
	FNCALL	_print,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_out
	global	_ADCON0
psect	text154,local,class=CODE,delta=2
global __ptext154
__ptext154:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTE
_PORTE	set	9
	global	_GO
_GO	set	249
	global	_RC0
_RC0	set	56
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
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	45	;'-'
	retlw	65	;'A'
	retlw	68	;'D'
	retlw	67	;'C'
	retlw	0
psect	strings
	file	"adc-basic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_out:
       ds      2

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
	global	?_print
?_print:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 2 bytes @ 0x0
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
	global	??_print
??_print:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	print@p
print@p:	; 1 bytes @ 0x6
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
	ds	2
	global	??_adc
??_adc:	; 0 bytes @ 0xB
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	adc@H
adc@H:	; 2 bytes @ 0x0
	ds	2
	global	adc@L
adc@L:	; 2 bytes @ 0x2
	ds	2
	global	adc@c
adc@c:	; 2 bytes @ 0x4
	ds	2
	global	adc@e
adc@e:	; 2 bytes @ 0x6
	ds	2
	global	adc@f
adc@f:	; 2 bytes @ 0x8
	ds	2
	global	adc@g
adc@g:	; 2 bytes @ 0xA
	ds	2
	global	adc@b
adc@b:	; 2 bytes @ 0xC
	ds	2
	global	adc@d
adc@d:	; 2 bytes @ 0xE
	ds	2
	global	adc@DV
adc@DV:	; 2 bytes @ 0x10
	ds	2
;;Data sizes: Strings 8, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     18      20
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
;; print@p	PTR unsigned char  size(1) Largest target is 8
;;		 -> STR_1(CODE[8]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_adc
;;   _adc->___awdiv
;;   _print->_lcd_cmd
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
;; (0) _main                                                 1     1      0    1207
;;                                             13 COMMON     1     1      0
;;                            _lcd_cmd
;;                              _print
;;                                _adc
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                 22    20      2     986
;;                                              9 COMMON     4     2      2
;;                                              0 BANK0     18    18      0
;;                            ___awdiv
;;                            ___awmod
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _print                                                2     2      0     133
;;                                              5 COMMON     2     2      0
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
;;   _print
;;     _lcd_cmd
;;       _delay
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
;;ABS                  0      0      22       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     12      14       5       25.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      25      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 63 in file "D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  1047[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_print
;;		_adc
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
	line	63
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	64
	
l2528:	
;adc-basic.c: 64: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	65
	
l2530:	
;adc-basic.c: 65: TRISA=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	66
	
l2532:	
;adc-basic.c: 66: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	67
	
l2534:	
;adc-basic.c: 67: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	68
	
l2536:	
;adc-basic.c: 68: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	69
	
l2538:	
;adc-basic.c: 69: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	70
	
l2540:	
;adc-basic.c: 70: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	71
	
l2542:	
;adc-basic.c: 71: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	72
	
l2544:	
;adc-basic.c: 72: ANSEL=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	73
;adc-basic.c: 73: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	74
	
l2546:	
;adc-basic.c: 74: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	75
	
l2548:	
;adc-basic.c: 75: lcd_cmd(0,0,0X0E);
	clrf	(?_lcd_cmd)
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	77
	
l2550:	
;adc-basic.c: 77: lcd_cmd(0,0,0X01);
	clrf	(?_lcd_cmd)
	clrf	0+(?_lcd_cmd)+01h
	bsf	status,0
	rlf	0+(?_lcd_cmd)+01h,f
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2552
	line	78
;adc-basic.c: 78: while(1)
	
l1048:	
	line	80
	
l2552:	
;adc-basic.c: 79: {
;adc-basic.c: 80: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	82
	
l2554:	
;adc-basic.c: 82: print("PIC-ADC");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_print
	line	83
	
l2556:	
;adc-basic.c: 83: out=adc();
	fcall	_adc
	movf	(1+(?_adc)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_out+1)
	addwf	(_out+1)
	movf	(0+(?_adc)),w
	clrf	(_out)
	addwf	(_out)

	line	84
	
l2558:	
;adc-basic.c: 84: if(out>25)
	movf	(_out+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	low(01Ah)
	subwf	(_out),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l2562
u2490:
	line	86
	
l2560:	
;adc-basic.c: 85: {
;adc-basic.c: 86: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	l2562
	line	87
	
l1049:	
	line	88
	
l2562:	
;adc-basic.c: 87: }
;adc-basic.c: 88: if(out<25)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_out+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(019h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(019h)
	subwf	(_out),w
u2505:

	skipnc
	goto	u2501
	goto	u2500
u2501:
	goto	l2552
u2500:
	line	90
	
l2564:	
;adc-basic.c: 89: {
;adc-basic.c: 90: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	goto	l2552
	line	91
	
l1050:	
	goto	l2552
	line	92
	
l1051:	
	line	78
	goto	l2552
	
l1052:	
	line	93
	
l1053:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,90
	global	_adc
psect	text155,local,class=CODE,delta=2
global __ptext155
__ptext155:

;; *************** function _adc *****************
;; Defined at:
;;		line 34 in file "D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DV              2   16[BANK0 ] int 
;;  d               2   14[BANK0 ] int 
;;  b               2   12[BANK0 ] int 
;;  g               2   10[BANK0 ] int 
;;  f               2    8[BANK0 ] int 
;;  e               2    6[BANK0 ] int 
;;  c               2    4[BANK0 ] int 
;;  L               2    2[BANK0 ] int 
;;  H               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0      18       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4      18       0       0       0
;;Total ram usage:       22 bytes
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
psect	text155
	file	"D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
	line	34
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 5
; Regs used in _adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	36
	
l2490:	
;adc-basic.c: 36: int H,L,DV=0,b=0,c=0,d=0,e=0,f=0,g=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@DV)
	clrf	(adc@DV+1)
	clrf	(adc@b)
	clrf	(adc@b+1)
	clrf	(adc@c)
	clrf	(adc@c+1)
	clrf	(adc@d)
	clrf	(adc@d+1)
	clrf	(adc@e)
	clrf	(adc@e+1)
	clrf	(adc@f)
	clrf	(adc@f+1)
	clrf	(adc@g)
	clrf	(adc@g+1)
	line	38
	
l2492:	
;adc-basic.c: 38: ADCON0=0X85;
	movlw	(085h)
	movwf	(31)	;volatile
	line	39
	
l2494:	
;adc-basic.c: 39: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	40
	
l2496:	
;adc-basic.c: 40: GO=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(249/8),(249)&7
	line	41
;adc-basic.c: 41: while(GO==1);
	goto	l1042
	
l1043:	
	
l1042:	
	btfsc	(249/8),(249)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l1042
u2480:
	goto	l2498
	
l1044:	
	line	42
	
l2498:	
;adc-basic.c: 42: H=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(adc@H)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@H+1)
	line	43
;adc-basic.c: 43: L=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(adc@L)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@L+1)
	line	44
	
l2500:	
;adc-basic.c: 44: DV=L+(H*256);
	movf	(adc@H+1),w
	movwf	(??_adc+0)+0+1
	movf	(adc@H),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	(adc@L),w
	addwf	0+(??_adc+0)+0,w
	movwf	(adc@DV)
	movf	(adc@L+1),w
	skipnc
	incf	(adc@L+1),w
	addwf	1+(??_adc+0)+0,w
	movwf	1+(adc@DV)
	line	46
	
l2502:	
;adc-basic.c: 46: c=DV/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(adc@DV+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(adc@DV),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@c+1)
	addwf	(adc@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@c)
	addwf	(adc@c)

	line	47
	
l2504:	
;adc-basic.c: 47: b=DV%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(adc@DV+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(adc@DV),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@b+1)
	addwf	(adc@b+1)
	movf	(0+(?___awmod)),w
	clrf	(adc@b)
	addwf	(adc@b)

	line	49
	
l2506:	
;adc-basic.c: 49: e=b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(adc@b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(adc@b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@e+1)
	addwf	(adc@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@e)
	addwf	(adc@e)

	line	50
	
l2508:	
;adc-basic.c: 50: d=b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(adc@b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(adc@b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@d+1)
	addwf	(adc@d+1)
	movf	(0+(?___awmod)),w
	clrf	(adc@d)
	addwf	(adc@d)

	line	52
	
l2510:	
;adc-basic.c: 52: g=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(adc@d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(adc@d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@g+1)
	addwf	(adc@g+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@g)
	addwf	(adc@g)

	line	53
	
l2512:	
;adc-basic.c: 53: f=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(adc@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(adc@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@f+1)
	addwf	(adc@f+1)
	movf	(0+(?___awmod)),w
	clrf	(adc@f)
	addwf	(adc@f)

	line	55
	
l2514:	
;adc-basic.c: 55: lcd_cmd(0,0,0XC0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	56
	
l2516:	
;adc-basic.c: 56: lcd_cmd(1,0,0X30+c);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@c),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	57
	
l2518:	
;adc-basic.c: 57: lcd_cmd(1,0,0X30+e);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@e),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	58
	
l2520:	
;adc-basic.c: 58: lcd_cmd(1,0,0X30+g);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@g),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	59
	
l2522:	
;adc-basic.c: 59: lcd_cmd(1,0,0X30+f);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@f),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	60
	
l2524:	
;adc-basic.c: 60: return DV;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@DV+1),w
	clrf	(?_adc+1)
	addwf	(?_adc+1)
	movf	(adc@DV),w
	clrf	(?_adc)
	addwf	(?_adc)

	goto	l1045
	
l2526:	
	line	61
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,90
	global	_print
psect	text156,local,class=CODE,delta=2
global __ptext156
__ptext156:

;; *************** function _print *****************
;; Defined at:
;;		line 26 in file "D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
;; Parameters:    Size  Location     Type
;;  p               1    wreg     PTR unsigned char 
;;		 -> STR_1(8), 
;; Auto vars:     Size  Location     Type
;;  p               1    6[COMMON] PTR unsigned char 
;;		 -> STR_1(8), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text156
	file	"D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
	line	26
	global	__size_of_print
	__size_of_print	equ	__end_of_print-_print
	
_print:	
	opt	stack 5
; Regs used in _print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print@p stored from wreg
	movwf	(print@p)
	line	27
	
l2482:	
;adc-basic.c: 27: while(*p!='\0')
	goto	l2488
	
l1037:	
	line	29
	
l2484:	
;adc-basic.c: 28: {
;adc-basic.c: 29: lcd_cmd(1,0,*p);
	clrf	(?_lcd_cmd)
	movf	(print@p),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_print+0)+0
	movf	(??_print+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	30
	
l2486:	
;adc-basic.c: 30: p++;
	movlw	(01h)
	movwf	(??_print+0)+0
	movf	(??_print+0)+0,w
	addwf	(print@p),f
	goto	l2488
	line	31
	
l1036:	
	line	27
	
l2488:	
	movf	(print@p),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2471
	goto	u2470
u2471:
	goto	l2484
u2470:
	goto	l1039
	
l1038:	
	line	32
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_print
	__end_of_print:
;; =============== function _print ends ============

	signat	_print,4216
	global	_lcd_cmd
psect	text157,local,class=CODE,delta=2
global __ptext157
__ptext157:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 15 in file "D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
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
;;		_print
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text157
	file	"D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
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
;adc-basic.c: 16: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2431
	goto	u2430
	
u2431:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2444
u2430:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2444:
	line	17
;adc-basic.c: 17: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2451
	goto	u2450
	
u2451:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2464
u2450:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2464:
	line	18
	
l2472:	
;adc-basic.c: 18: PORTB=c;
	movf	(lcd_cmd@c),w
	movwf	(6)	;volatile
	line	19
	
l2474:	
;adc-basic.c: 19: RE2=1;
	bsf	(74/8),(74)&7
	line	20
	
l2476:	
;adc-basic.c: 20: delay(500);
	movlw	low(01F4h)
	movwf	(?_delay)
	movlw	high(01F4h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l2478:	
;adc-basic.c: 21: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	22
	
l2480:	
;adc-basic.c: 22: delay(500);
	movlw	low(01F4h)
	movwf	(?_delay)
	movlw	high(01F4h)
	movwf	((?_delay))+1
	fcall	_delay
	line	24
	
l1033:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	___awmod
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

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
psect	text158
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
	goto	u2341
	goto	u2340
u2341:
	goto	l2440
u2340:
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
	
l1270:	
	line	13
	
l2440:	
	btfss	(___awmod@divisor+1),7
	goto	u2351
	goto	u2350
u2351:
	goto	l2444
u2350:
	line	14
	
l2442:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2444
	
l1271:	
	line	15
	
l2444:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2361
	goto	u2360
u2361:
	goto	l2462
u2360:
	line	16
	
l2446:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2452
	
l1274:	
	line	18
	
l2448:	
	movlw	01h
	
u2375:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2375
	line	19
	
l2450:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2452
	line	20
	
l1273:	
	line	17
	
l2452:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l2448
u2380:
	goto	l2454
	
l1275:	
	goto	l2454
	line	21
	
l1276:	
	line	22
	
l2454:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2395
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2395:
	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2458
u2390:
	line	23
	
l2456:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2458
	
l1277:	
	line	24
	
l2458:	
	movlw	01h
	
u2405:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2405
	line	25
	
l2460:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2411
	goto	u2410
u2411:
	goto	l2454
u2410:
	goto	l2462
	
l1278:	
	goto	l2462
	line	26
	
l1272:	
	line	27
	
l2462:	
	movf	(___awmod@sign),w
	skipz
	goto	u2420
	goto	l2466
u2420:
	line	28
	
l2464:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2466
	
l1279:	
	line	29
	
l2466:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1280
	
l2468:	
	line	30
	
l1280:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

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
psect	text159
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
	goto	u2241
	goto	u2240
u2241:
	goto	l2400
u2240:
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
	
l1202:	
	line	14
	
l2400:	
	btfss	(___awdiv@dividend+1),7
	goto	u2251
	goto	u2250
u2251:
	goto	l2406
u2250:
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
	
l1203:	
	line	18
	
l2406:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2408:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2261
	goto	u2260
u2261:
	goto	l2428
u2260:
	line	20
	
l2410:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2416
	
l1206:	
	line	22
	
l2412:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2275
	line	23
	
l2414:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2416
	line	24
	
l1205:	
	line	21
	
l2416:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l2412
u2280:
	goto	l2418
	
l1207:	
	goto	l2418
	line	25
	
l1208:	
	line	26
	
l2418:	
	movlw	01h
	
u2295:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2295
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2305
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2305:
	skipc
	goto	u2301
	goto	u2300
u2301:
	goto	l2424
u2300:
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
	
l1209:	
	line	31
	
l2424:	
	movlw	01h
	
u2315:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2315
	line	32
	
l2426:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2321
	goto	u2320
u2321:
	goto	l2418
u2320:
	goto	l2428
	
l1210:	
	goto	l2428
	line	33
	
l1204:	
	line	34
	
l2428:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2330
	goto	l2432
u2330:
	line	35
	
l2430:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2432
	
l1211:	
	line	36
	
l2432:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1212
	
l2434:	
	line	37
	
l1212:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

;; *************** function _delay *****************
;; Defined at:
;;		line 11 in file "D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
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
psect	text160
	file	"D:\Embedded\pic\code\software\ADC\ADC_basic\adc-basic.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	12
	
l2392:	
;adc-basic.c: 12: while(ms--);
	goto	l2394
	
l1028:	
	goto	l2394
	
l1027:	
	
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
	goto	u2235
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2235:

	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l2394
u2230:
	goto	l1030
	
l1029:	
	line	13
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
