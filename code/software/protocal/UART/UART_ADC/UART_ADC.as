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
	FNCALL	_main,_adc
	FNCALL	_adc,___awdiv
	FNCALL	_adc,___awmod
	FNCALL	_adc,_tx
	FNCALL	_adc,_tx1
	FNROOT	_main
	global	_DV
psect	nvBANK0,class=BANK0,space=1
global __pnvBANK0
__pnvBANK0:
_DV:
       ds      2

	global	_high
_high:
       ds      2

	global	_low
_low:
       ds      2

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"UART_ADC.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_tx1
?_tx1:	; 0 bytes @ 0x0
	global	??_tx1
??_tx1:	; 0 bytes @ 0x0
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	?_adc
?_adc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	tx1@a
tx1@a:	; 1 bytes @ 0x0
	global	tx@a
tx@a:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_tx
??_tx:	; 0 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
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
	global	??_adc
??_adc:	; 0 bytes @ 0x9
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xB
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	adc@a
adc@a:	; 2 bytes @ 0x0
	ds	2
	global	adc@b
adc@b:	; 2 bytes @ 0x2
	ds	2
	global	adc@e
adc@e:	; 2 bytes @ 0x4
	ds	2
	global	adc@f
adc@f:	; 2 bytes @ 0x6
	ds	2
	global	adc@g
adc@g:	; 1 bytes @ 0x8
	ds	1
	global	adc@c
adc@c:	; 2 bytes @ 0x9
	ds	2
	global	adc@d
adc@d:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 6 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      11
;; BANK0           80     13      19
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     845
;;                                _adc
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                 15    15      0     845
;;                                              9 COMMON     2     2      0
;;                                              0 BANK0     13    13      0
;;                            ___awdiv
;;                            ___awmod
;;                                 _tx
;;                                _tx1
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) _tx                                                   2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (2) _tx1                                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _adc
;;     ___awdiv
;;     ___awmod
;;     _tx
;;     _tx1
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       B       1       78.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      1E       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      D      13       5       23.8%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      20      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 48 in file "D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_adc
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l2449:	
;UART_ADC.c: 49: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	50
;UART_ADC.c: 50: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	51
;UART_ADC.c: 51: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	52
;UART_ADC.c: 52: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	53
;UART_ADC.c: 53: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	54
	
l2451:	
;UART_ADC.c: 54: TRISA=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	55
	
l2453:	
;UART_ADC.c: 55: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	56
	
l2455:	
;UART_ADC.c: 56: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	57
	
l2457:	
;UART_ADC.c: 57: TXSTA=0X26;
	movlw	(026h)
	movwf	(152)^080h	;volatile
	line	58
	
l2459:	
;UART_ADC.c: 58: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	59
	
l2461:	
;UART_ADC.c: 59: ANSEL=0X02;
	movlw	(02h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	60
;UART_ADC.c: 60: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	61
	
l2463:	
;UART_ADC.c: 61: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	goto	l2465
	line	62
;UART_ADC.c: 62: while(1)
	
l1055:	
	line	64
	
l2465:	
;UART_ADC.c: 63: {
;UART_ADC.c: 64: adc();
	fcall	_adc
	goto	l2465
	line	65
	
l1056:	
	line	62
	goto	l2465
	
l1057:	
	line	66
	
l1058:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_adc
psect	text158,local,class=CODE,delta=2
global __ptext158
__ptext158:

;; *************** function _adc *****************
;; Defined at:
;;		line 24 in file "D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  d               2   11[BANK0 ] int 
;;  c               2    9[BANK0 ] int 
;;  f               2    6[BANK0 ] int 
;;  e               2    4[BANK0 ] int 
;;  b               2    2[BANK0 ] int 
;;  a               2    0[BANK0 ] int 
;;  g               1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      13       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2      13       0       0       0
;;Total ram usage:       15 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_tx
;;		_tx1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text158
	file	"D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
	line	24
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 6
; Regs used in _adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	
l2423:	
	movlw	(0Dh)
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(adc@g)
	line	26
;UART_ADC.c: 25: int a,b,c,d,e,f;
;UART_ADC.c: 26: ADCON0=0X87;
	movlw	(087h)
	movwf	(31)	;volatile
	line	27
;UART_ADC.c: 27: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	28
;UART_ADC.c: 28: low=ADRESL;
	movf	(158)^080h,w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_low)
	movf	1+(??_adc+0)+0,w
	movwf	(_low+1)
	line	29
;UART_ADC.c: 29: high=ADRESH;
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_high)
	movf	1+(??_adc+0)+0,w
	movwf	(_high+1)
	line	30
	
l2425:	
;UART_ADC.c: 30: DV=low+(high*256);
	movf	(_high+1),w
	movwf	(??_adc+0)+0+1
	movf	(_high),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	(_low),w
	addwf	0+(??_adc+0)+0,w
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	incf	(_low+1),w
	addwf	1+(??_adc+0)+0,w
	movwf	1+(_DV)
	line	32
	
l2427:	
;UART_ADC.c: 32: a=DV/1000;
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
	clrf	(adc@a+1)
	addwf	(adc@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@a)
	addwf	(adc@a)

	line	33
	
l2429:	
;UART_ADC.c: 33: b=DV%1000;
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
	clrf	(adc@b+1)
	addwf	(adc@b+1)
	movf	(0+(?___awmod)),w
	clrf	(adc@b)
	addwf	(adc@b)

	line	34
	
l2431:	
;UART_ADC.c: 34: c=b/100;
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
	clrf	(adc@c+1)
	addwf	(adc@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@c)
	addwf	(adc@c)

	line	35
	
l2433:	
;UART_ADC.c: 35: d=c%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(adc@c+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(adc@c),w
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

	line	36
	
l2435:	
;UART_ADC.c: 36: e=d/10;
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
	clrf	(adc@e+1)
	addwf	(adc@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@e)
	addwf	(adc@e)

	line	37
	
l2437:	
;UART_ADC.c: 37: f=d%10;
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

	line	38
	
l2439:	
;UART_ADC.c: 38: tx(a+0X30);
	movf	(adc@a),w
	addlw	low(030h)
	movwf	(?_tx)
	movf	(adc@a+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_tx)
	fcall	_tx
	line	39
	
l2441:	
;UART_ADC.c: 39: tx(c+0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@c),w
	addlw	low(030h)
	movwf	(?_tx)
	movf	(adc@c+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_tx)
	fcall	_tx
	line	40
	
l2443:	
;UART_ADC.c: 40: tx(e+0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@e),w
	addlw	low(030h)
	movwf	(?_tx)
	movf	(adc@e+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_tx)
	fcall	_tx
	line	41
	
l2445:	
;UART_ADC.c: 41: tx(f+0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@f),w
	addlw	low(030h)
	movwf	(?_tx)
	movf	(adc@f+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_tx)
	fcall	_tx
	line	42
	
l2447:	
;UART_ADC.c: 42: tx1(g);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@g),w
	fcall	_tx1
	line	43
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,88
	global	___awmod
psect	text159,local,class=CODE,delta=2
global __ptext159
__ptext159:

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
psect	text159
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2389:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2331
	goto	u2330
u2331:
	goto	l2393
u2330:
	line	10
	
l2391:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2393
	line	12
	
l1275:	
	line	13
	
l2393:	
	btfss	(___awmod@divisor+1),7
	goto	u2341
	goto	u2340
u2341:
	goto	l2397
u2340:
	line	14
	
l2395:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2397
	
l1276:	
	line	15
	
l2397:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2351
	goto	u2350
u2351:
	goto	l2415
u2350:
	line	16
	
l2399:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2405
	
l1279:	
	line	18
	
l2401:	
	movlw	01h
	
u2365:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2365
	line	19
	
l2403:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2405
	line	20
	
l1278:	
	line	17
	
l2405:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l2401
u2370:
	goto	l2407
	
l1280:	
	goto	l2407
	line	21
	
l1281:	
	line	22
	
l2407:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2385
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2385:
	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2411
u2380:
	line	23
	
l2409:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2411
	
l1282:	
	line	24
	
l2411:	
	movlw	01h
	
u2395:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2395
	line	25
	
l2413:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2401
	goto	u2400
u2401:
	goto	l2407
u2400:
	goto	l2415
	
l1283:	
	goto	l2415
	line	26
	
l1277:	
	line	27
	
l2415:	
	movf	(___awmod@sign),w
	skipz
	goto	u2410
	goto	l2419
u2410:
	line	28
	
l2417:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2419
	
l1284:	
	line	29
	
l2419:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1285
	
l2421:	
	line	30
	
l1285:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text160,local,class=CODE,delta=2
global __ptext160
__ptext160:

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
psect	text160
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2349:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2231
	goto	u2230
u2231:
	goto	l2353
u2230:
	line	11
	
l2351:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2353
	line	13
	
l1207:	
	line	14
	
l2353:	
	btfss	(___awdiv@dividend+1),7
	goto	u2241
	goto	u2240
u2241:
	goto	l2359
u2240:
	line	15
	
l2355:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2357:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2359
	line	17
	
l1208:	
	line	18
	
l2359:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2361:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2251
	goto	u2250
u2251:
	goto	l2381
u2250:
	line	20
	
l2363:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2369
	
l1211:	
	line	22
	
l2365:	
	movlw	01h
	
u2265:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2265
	line	23
	
l2367:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2369
	line	24
	
l1210:	
	line	21
	
l2369:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l2365
u2270:
	goto	l2371
	
l1212:	
	goto	l2371
	line	25
	
l1213:	
	line	26
	
l2371:	
	movlw	01h
	
u2285:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2285
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2295
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2295:
	skipc
	goto	u2291
	goto	u2290
u2291:
	goto	l2377
u2290:
	line	28
	
l2373:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2375:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2377
	line	30
	
l1214:	
	line	31
	
l2377:	
	movlw	01h
	
u2305:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2305
	line	32
	
l2379:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2311
	goto	u2310
u2311:
	goto	l2371
u2310:
	goto	l2381
	
l1215:	
	goto	l2381
	line	33
	
l1209:	
	line	34
	
l2381:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2320
	goto	l2385
u2320:
	line	35
	
l2383:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2385
	
l1216:	
	line	36
	
l2385:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1217
	
l2387:	
	line	37
	
l1217:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_tx
psect	text161,local,class=CODE,delta=2
global __ptext161
__ptext161:

;; *************** function _tx *****************
;; Defined at:
;;		line 16 in file "D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] int 
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
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text161
	file	"D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
	line	16
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg]
	line	19
	
l2347:	
;UART_ADC.c: 19: TXREG=a;
	movf	(tx@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	20
;UART_ADC.c: 20: while(TXIF==0);
	goto	l1046
	
l1047:	
	
l1046:	
	btfss	(100/8),(100)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l1046
u2220:
	
l1048:	
	line	21
;UART_ADC.c: 21: TXIF=0;
	bcf	(100/8),(100)&7
	line	22
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
	global	_tx1
psect	text162,local,class=CODE,delta=2
global __ptext162
__ptext162:

;; *************** function _tx1 *****************
;; Defined at:
;;		line 8 in file "D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text162
	file	"D:\Embedded\pic\code\software\protocal\UART\UART_ADC\UART_ADC.c"
	line	8
	global	__size_of_tx1
	__size_of_tx1	equ	__end_of_tx1-_tx1
	
_tx1:	
	opt	stack 6
; Regs used in _tx1: [wreg]
;tx1@a stored from wreg
	line	11
	movwf	(tx1@a)
	
l2345:	
;UART_ADC.c: 11: TXREG=a;
	movf	(tx1@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	12
;UART_ADC.c: 12: while(TXIF==0);
	goto	l1040
	
l1041:	
	
l1040:	
	btfss	(100/8),(100)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1040
u2210:
	
l1042:	
	line	13
;UART_ADC.c: 13: TXIF=0;
	bcf	(100/8),(100)&7
	line	14
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_tx1
	__end_of_tx1:
;; =============== function _tx1 ends ============

	signat	_tx1,4216
psect	text163,local,class=CODE,delta=2
global __ptext163
__ptext163:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
