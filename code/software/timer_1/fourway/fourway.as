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
	global	_T1CON
_T1CON	set	16
	global	_TMR1IF
_TMR1IF	set	96
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"fourway.as"
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
;;		line 98 in file "D:\Embedded\pic\code\software\timer_1\fourway\fourway.c"
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
	file	"D:\Embedded\pic\code\software\timer_1\fourway\fourway.c"
	line	98
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	99
	
l2222:	
;fourway.c: 99: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	100
;fourway.c: 100: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	101
;fourway.c: 101: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	102
;fourway.c: 102: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	103
	
l2224:	
;fourway.c: 103: T1CON=0X31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	goto	l2226
	line	104
;fourway.c: 104: while(1)
	
l1038:	
	line	106
	
l2226:	
;fourway.c: 105: {
;fourway.c: 106: timer();
	fcall	_timer
	goto	l2226
	line	107
	
l1039:	
	line	104
	goto	l2226
	
l1040:	
	line	108
	
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
;;		line 7 in file "D:\Embedded\pic\code\software\timer_1\fourway\fourway.c"
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
	file	"D:\Embedded\pic\code\software\timer_1\fourway\fourway.c"
	line	7
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 7
; Regs used in _timer: [wreg+status,2+btemp+1]
	line	8
	
l1410:	
;fourway.c: 8: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l1416
u10:
	line	10
	
l1412:	
;fourway.c: 9: {
;fourway.c: 10: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	11
	
l1414:	
;fourway.c: 11: TMR1IF=0;
	bcf	(96/8),(96)&7
	goto	l1416
	line	12
	
l1027:	
	line	15
	
l1416:	
;fourway.c: 12: }
;fourway.c: 15: if(count>=0&&count<30)
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
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(01Eh)
	subwf	(_count),w
u35:

	skipnc
	goto	u31
	goto	u30
u31:
	goto	l1422
u30:
	line	17
	
l1420:	
;fourway.c: 16: {
;fourway.c: 17: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	18
;fourway.c: 18: PORTD=0X09;
	movlw	(09h)
	movwf	(8)	;volatile
	goto	l1422
	line	19
	
l1028:	
	line	20
	
l1422:	
;fourway.c: 19: }
;fourway.c: 20: if(count>=20&&count<30)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(014h)
	subwf	(_count),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1428
u40:
	
l1424:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u55
	movlw	low(01Eh)
	subwf	(_count),w
u55:

	skipnc
	goto	u51
	goto	u50
u51:
	goto	l1428
u50:
	line	22
	
l1426:	
;fourway.c: 21: {
;fourway.c: 22: PORTC=0X11;
	movlw	(011h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	23
;fourway.c: 23: PORTD=0X09;
	movlw	(09h)
	movwf	(8)	;volatile
	goto	l1428
	line	24
	
l1029:	
	line	25
	
l1428:	
;fourway.c: 24: }
;fourway.c: 25: if(count>=0&&count<20)
	btfsc	(_count+1),7
	goto	u61
	goto	u60
u61:
	goto	l1434
u60:
	
l1430:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(014h))^80h
	subwf	btemp+1,w
	skipz
	goto	u75
	movlw	low(014h)
	subwf	(_count),w
u75:

	skipnc
	goto	u71
	goto	u70
u71:
	goto	l1434
u70:
	line	27
	
l1432:	
;fourway.c: 26: {
;fourway.c: 27: PORTC=0X21;
	movlw	(021h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	28
;fourway.c: 28: PORTD=0X09;
	movlw	(09h)
	movwf	(8)	;volatile
	goto	l1434
	line	29
	
l1030:	
	line	34
	
l1434:	
;fourway.c: 29: }
;fourway.c: 34: if(count>=30&&count<60)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u85
	movlw	low(01Eh)
	subwf	(_count),w
u85:

	skipc
	goto	u81
	goto	u80
u81:
	goto	l1440
u80:
	
l1436:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u95
	movlw	low(03Ch)
	subwf	(_count),w
u95:

	skipnc
	goto	u91
	goto	u90
u91:
	goto	l1440
u90:
	line	36
	
l1438:	
;fourway.c: 35: {
;fourway.c: 36: PORTC=0X09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	37
;fourway.c: 37: PORTD=0X08;
	movlw	(08h)
	movwf	(8)	;volatile
	goto	l1440
	line	38
	
l1031:	
	line	39
	
l1440:	
;fourway.c: 38: }
;fourway.c: 39: if(count>=50&&count<60)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u105
	movlw	low(032h)
	subwf	(_count),w
u105:

	skipc
	goto	u101
	goto	u100
u101:
	goto	l1446
u100:
	
l1442:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u115
	movlw	low(03Ch)
	subwf	(_count),w
u115:

	skipnc
	goto	u111
	goto	u110
u111:
	goto	l1446
u110:
	line	41
	
l1444:	
;fourway.c: 40: {
;fourway.c: 41: PORTC=0X09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	42
;fourway.c: 42: PORTD=0X09;
	movlw	(09h)
	movwf	(8)	;volatile
	goto	l1446
	line	43
	
l1032:	
	line	44
	
l1446:	
;fourway.c: 43: }
;fourway.c: 44: if(count>=30&&count<50)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01Eh))^80h
	subwf	btemp+1,w
	skipz
	goto	u125
	movlw	low(01Eh)
	subwf	(_count),w
u125:

	skipc
	goto	u121
	goto	u120
u121:
	goto	l1452
u120:
	
l1448:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u135
	movlw	low(032h)
	subwf	(_count),w
u135:

	skipnc
	goto	u131
	goto	u130
u131:
	goto	l1452
u130:
	line	46
	
l1450:	
;fourway.c: 45: {
;fourway.c: 46: PORTC=0X09;
	movlw	(09h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	47
;fourway.c: 47: PORTD=0X0F;
	movlw	(0Fh)
	movwf	(8)	;volatile
	goto	l1452
	line	48
	
l1033:	
	line	91
	
l1452:	
;fourway.c: 48: }
;fourway.c: 91: if(count>=60)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03Ch))^80h
	subwf	btemp+1,w
	skipz
	goto	u145
	movlw	low(03Ch)
	subwf	(_count),w
u145:

	skipc
	goto	u141
	goto	u140
u141:
	goto	l1035
u140:
	line	93
	
l1454:	
;fourway.c: 92: {
;fourway.c: 93: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l1035
	line	94
	
l1034:	
	line	96
	
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
