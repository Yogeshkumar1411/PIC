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
	global	_PORTC
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_T0IF
_T0IF	set	90
	global	_OPTION_REG
_OPTION_REG	set	129
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"trafficlight.as"
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
;;		line 56 in file "D:\Embedded\pic\code\software\timer\trafficlight\trafficlight.c"
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
	file	"D:\Embedded\pic\code\software\timer\trafficlight\trafficlight.c"
	line	56
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	57
	
l2220:	
;trafficlight.c: 57: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
;trafficlight.c: 58: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	59
;trafficlight.c: 59: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	60
;trafficlight.c: 60: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	61
	
l2222:	
;trafficlight.c: 61: OPTION_REG=0X07;
	movlw	(07h)
	movwf	(129)^080h	;volatile
	goto	l2224
	line	62
;trafficlight.c: 62: while(1)
	
l1038:	
	line	64
	
l2224:	
;trafficlight.c: 63: {
;trafficlight.c: 64: timer();
	fcall	_timer
	goto	l2224
	line	65
	
l1039:	
	line	62
	goto	l2224
	
l1040:	
	line	66
	
l1041:	
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
;;		line 7 in file "D:\Embedded\pic\code\software\timer\trafficlight\trafficlight.c"
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
	file	"D:\Embedded\pic\code\software\timer\trafficlight\trafficlight.c"
	line	7
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 7
; Regs used in _timer: [wreg+status,2+btemp+1]
	line	8
	
l1410:	
;trafficlight.c: 8: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u11
	goto	u10
u11:
	goto	l1416
u10:
	line	10
	
l1412:	
;trafficlight.c: 9: {
;trafficlight.c: 10: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	11
	
l1414:	
;trafficlight.c: 11: T0IF=0;
	bcf	(90/8),(90)&7
	goto	l1416
	line	12
	
l1027:	
	line	13
	
l1416:	
;trafficlight.c: 12: }
;trafficlight.c: 13: if(count>=0&&count<225)
	btfsc	(_count+1),7
	goto	u21
	goto	u20
u21:
	goto	l1422
u20:
	
l1418:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0E1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(0E1h)
	subwf	(_count),w
u35:

	skipnc
	goto	u31
	goto	u30
u31:
	goto	l1422
u30:
	line	15
	
l1420:	
;trafficlight.c: 14: {
;trafficlight.c: 15: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	16
;trafficlight.c: 16: RC1=0;
	bcf	(57/8),(57)&7
	line	17
;trafficlight.c: 17: RC2=0;
	bcf	(58/8),(58)&7
	goto	l1422
	line	18
	
l1028:	
	line	19
	
l1422:	
;trafficlight.c: 18: }
;trafficlight.c: 19: if(count>=150&&count<225)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(096h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(096h)
	subwf	(_count),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1029
u40:
	
l1424:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0E1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(0E1h)
	subwf	(_count),w
u55:

	skipnc
	goto	u51
	goto	u50
u51:
	goto	l1029
u50:
	line	21
	
l1426:	
;trafficlight.c: 20: {
;trafficlight.c: 21: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	22
;trafficlight.c: 22: RD1=1;
	bsf	(65/8),(65)&7
	line	23
;trafficlight.c: 23: RD2=0;
	bcf	(66/8),(66)&7
	line	24
	
l1029:	
	line	25
;trafficlight.c: 24: }
;trafficlight.c: 25: if(count>=0&&count<150)
	btfsc	(_count+1),7
	goto	u61
	goto	u60
u61:
	goto	l1432
u60:
	
l1428:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(096h))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(096h)
	subwf	(_count),w
u75:

	skipnc
	goto	u71
	goto	u70
u71:
	goto	l1432
u70:
	line	27
	
l1430:	
;trafficlight.c: 26: {
;trafficlight.c: 27: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	28
;trafficlight.c: 28: RD1=0;
	bcf	(65/8),(65)&7
	line	29
;trafficlight.c: 29: RD2=1;
	bsf	(66/8),(66)&7
	goto	l1432
	line	30
	
l1030:	
	line	31
	
l1432:	
;trafficlight.c: 30: }
;trafficlight.c: 31: if(count>=225&&count<450)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0E1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	low(0E1h)
	subwf	(_count),w
u85:

	skipc
	goto	u81
	goto	u80
u81:
	goto	l1438
u80:
	
l1434:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01C2h))^80h
	subwf	btemp+1,w
	skipz
	goto	u95
	movlw	low(01C2h)
	subwf	(_count),w
u95:

	skipnc
	goto	u91
	goto	u90
u91:
	goto	l1438
u90:
	line	33
	
l1436:	
;trafficlight.c: 32: {
;trafficlight.c: 33: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	34
;trafficlight.c: 34: RD1=0;
	bcf	(65/8),(65)&7
	line	35
;trafficlight.c: 35: RD2=0;
	bcf	(66/8),(66)&7
	goto	l1438
	line	36
	
l1031:	
	line	37
	
l1438:	
;trafficlight.c: 36: }
;trafficlight.c: 37: if(count>=375&&count<450)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0177h))^80h
	subwf	btemp+1,w
	skipz
	goto	u105
	movlw	low(0177h)
	subwf	(_count),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l1444
u100:
	
l1440:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01C2h))^80h
	subwf	btemp+1,w
	skipz
	goto	u115
	movlw	low(01C2h)
	subwf	(_count),w
u115:

	skipnc
	goto	u111
	goto	u110
u111:
	goto	l1444
u110:
	line	39
	
l1442:	
;trafficlight.c: 38: {
;trafficlight.c: 39: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	40
;trafficlight.c: 40: RC1=1;
	bsf	(57/8),(57)&7
	line	41
;trafficlight.c: 41: RC2=0;
	bcf	(58/8),(58)&7
	goto	l1444
	line	42
	
l1032:	
	line	43
	
l1444:	
;trafficlight.c: 42: }
;trafficlight.c: 43: if(count>=225&&count<375)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0E1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(0E1h)
	subwf	(_count),w
u125:

	skipc
	goto	u121
	goto	u120
u121:
	goto	l1450
u120:
	
l1446:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0177h))^80h
	subwf	btemp+1,w
	skipz
	goto	u135
	movlw	low(0177h)
	subwf	(_count),w
u135:

	skipnc
	goto	u131
	goto	u130
u131:
	goto	l1450
u130:
	line	45
	
l1448:	
;trafficlight.c: 44: {
;trafficlight.c: 45: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	line	46
;trafficlight.c: 46: RC1=0;
	bcf	(57/8),(57)&7
	line	47
;trafficlight.c: 47: RC2=1;
	bsf	(58/8),(58)&7
	goto	l1450
	line	48
	
l1033:	
	line	49
	
l1450:	
;trafficlight.c: 48: }
;trafficlight.c: 49: if(count>=450)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01C2h))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(01C2h)
	subwf	(_count),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l1035
u140:
	line	51
	
l1452:	
;trafficlight.c: 50: {
;trafficlight.c: 51: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l1035
	line	52
	
l1034:	
	line	54
	
l1035:	
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
