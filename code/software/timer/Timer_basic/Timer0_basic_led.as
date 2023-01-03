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
	FNCALL	_main,_timer
	FNROOT	_main
	global	_count
	global	_PORTA
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
_PORTA	set	5
	global	_RA0
_RA0	set	40
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISA
_TRISA	set	133
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"Timer0_basic_led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_timer
?_timer:	; 0 bytes @ 0x0
	global	??_timer
??_timer:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       2
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
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
;; (0) _main                                                 0     0      0       0
;;                              _timer
;; ---------------------------------------------------------------------------------
;; (1) _timer                                                0     0      0       0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _timer
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      0       2       1       14.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       2       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       3      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 30 in file "D:\Embedded\pic\code\software\Timer0\Timer0_basic_led.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_timer
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\Timer0\Timer0_basic_led.c"
	line	30
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	31
	
l2194:	
;Timer0_basic_led.c: 31: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	32
;Timer0_basic_led.c: 32: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	33
;Timer0_basic_led.c: 33: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	34
;Timer0_basic_led.c: 34: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	35
	
l2196:	
;Timer0_basic_led.c: 35: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	goto	l2198
	line	36
;Timer0_basic_led.c: 36: while(1)
	
l1034:	
	line	38
	
l2198:	
;Timer0_basic_led.c: 37: {
;Timer0_basic_led.c: 38: timer();
	fcall	_timer
	goto	l2198
	line	39
	
l1035:	
	line	36
	goto	l2198
	
l1036:	
	line	40
	
l1037:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _timer *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\Timer0\Timer0_basic_led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61
	file	"D:\Embedded\pic\code\software\Timer0\Timer0_basic_led.c"
	line	7
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 7
; Regs used in _timer: [wreg+status,2+btemp+1]
	line	8
	
l1406:	
;Timer0_basic_led.c: 8: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1412
u10:
	line	10
	
l1408:	
;Timer0_basic_led.c: 9: {
;Timer0_basic_led.c: 10: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	11
	
l1410:	
;Timer0_basic_led.c: 11: T0IF=0;
	bcf	(90/8),(90)&7
	goto	l1412
	line	12
	
l1027:	
	line	13
	
l1412:	
;Timer0_basic_led.c: 12: }
;Timer0_basic_led.c: 13: if(count>=0&&count<7)
	btfsc	(_count+1),7
	goto	u21
	goto	u20
u21:
	goto	l1418
u20:
	
l1414:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(07h)
	subwf	(_count),w
u35:

	skipnc
	goto	u31
	goto	u30
u31:
	goto	l1418
u30:
	line	15
	
l1416:	
;Timer0_basic_led.c: 14: {
;Timer0_basic_led.c: 15: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	goto	l1418
	line	16
	
l1028:	
	line	17
	
l1418:	
;Timer0_basic_led.c: 16: }
;Timer0_basic_led.c: 17: if(count>=7&&count<14)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(07h)
	subwf	(_count),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1424
u40:
	
l1420:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(0Eh)
	subwf	(_count),w
u55:

	skipnc
	goto	u51
	goto	u50
u51:
	goto	l1424
u50:
	line	19
	
l1422:	
;Timer0_basic_led.c: 18: {
;Timer0_basic_led.c: 19: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	goto	l1424
	line	20
	
l1029:	
	line	24
	
l1424:	
;Timer0_basic_led.c: 20: }
;Timer0_basic_led.c: 24: if(count>=14)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u65
	movlw	low(0Eh)
	subwf	(_count),w
u65:

	skipc
	goto	u61
	goto	u60
u61:
	goto	l1031
u60:
	line	26
	
l1426:	
;Timer0_basic_led.c: 25: {
;Timer0_basic_led.c: 26: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l1031
	line	27
	
l1030:	
	line	28
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,88
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
