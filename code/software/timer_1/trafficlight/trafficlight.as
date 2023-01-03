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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	timer@sec
timer@sec:	; 2 bytes @ 0x0
	ds	2
	global	??_timer
??_timer:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       4
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_timer
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
;; (0) _main                                                 0     0      0      15
;;                              _timer
;; ---------------------------------------------------------------------------------
;; (1) _timer                                                2     0      2      15
;;                                              0 COMMON     2     0      2
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
;;COMMON               E      2       4       1       28.6%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       4       3        0.0%
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
;;DATA                 0      0       5      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 64 in file "D:\Embedded\pic\code\software\timer_1\trafficlight\trafficlight.c"
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
	file	"D:\Embedded\pic\code\software\timer_1\trafficlight\trafficlight.c"
	line	64
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	65
	
l2185:	
;trafficlight.c: 65: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	66
;trafficlight.c: 66: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	67
;trafficlight.c: 67: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	68
;trafficlight.c: 68: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	69
	
l2187:	
;trafficlight.c: 69: T1CON=0X31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	goto	l2189
	line	70
;trafficlight.c: 70: while(1)
	
l1035:	
	line	72
	
l2189:	
;trafficlight.c: 71: {
;trafficlight.c: 72: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	75
	
l2191:	
;trafficlight.c: 75: PORTD=0X04;
	movlw	(04h)
	movwf	(8)	;volatile
	line	78
	
l2193:	
;trafficlight.c: 78: timer(10);
	movlw	low(0Ah)
	movwf	(?_timer)
	movlw	high(0Ah)
	movwf	((?_timer))+1
	fcall	_timer
	line	79
	
l2195:	
;trafficlight.c: 79: PORTC=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	82
	
l2197:	
;trafficlight.c: 82: PORTD=0X02;
	movlw	(02h)
	movwf	(8)	;volatile
	line	85
	
l2199:	
;trafficlight.c: 85: timer(5);
	movlw	low(05h)
	movwf	(?_timer)
	movlw	high(05h)
	movwf	((?_timer))+1
	fcall	_timer
	line	87
	
l2201:	
;trafficlight.c: 87: PORTC=0X04;
	movlw	(04h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	90
	
l2203:	
;trafficlight.c: 90: PORTD=0X01;
	movlw	(01h)
	movwf	(8)	;volatile
	line	93
	
l2205:	
;trafficlight.c: 93: timer(10);
	movlw	low(0Ah)
	movwf	(?_timer)
	movlw	high(0Ah)
	movwf	((?_timer))+1
	fcall	_timer
	line	94
	
l2207:	
;trafficlight.c: 94: PORTC=0X02;
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	97
	
l2209:	
;trafficlight.c: 97: PORTD=0X01;
	movlw	(01h)
	movwf	(8)	;volatile
	line	100
	
l2211:	
;trafficlight.c: 100: timer(5);
	movlw	low(05h)
	movwf	(?_timer)
	movlw	high(05h)
	movwf	((?_timer))+1
	fcall	_timer
	goto	l2189
	line	120
	
l1036:	
	line	70
	goto	l2189
	
l1037:	
	line	121
	
l1038:	
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
;;		line 7 in file "D:\Embedded\pic\code\software\timer_1\trafficlight\trafficlight.c"
;; Parameters:    Size  Location     Type
;;  sec             2    0[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61
	file	"D:\Embedded\pic\code\software\timer_1\trafficlight\trafficlight.c"
	line	7
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 7
; Regs used in _timer: [wreg+status,2+btemp+1]
	line	8
	
l1407:	
;trafficlight.c: 8: while(sec>0)
	goto	l1417
	
l1028:	
	line	10
;trafficlight.c: 9: {
;trafficlight.c: 10: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l1029
u10:
	line	12
	
l1409:	
;trafficlight.c: 11: {
;trafficlight.c: 12: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	13
	
l1411:	
;trafficlight.c: 13: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	14
	
l1029:	
	line	15
;trafficlight.c: 14: }
;trafficlight.c: 15: if(count==2)
	movlw	02h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1417
u20:
	line	17
	
l1413:	
;trafficlight.c: 16: {
;trafficlight.c: 17: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	18
	
l1415:	
;trafficlight.c: 18: sec--;
	movlw	low(-1)
	addwf	(timer@sec),f
	skipnc
	incf	(timer@sec+1),f
	movlw	high(-1)
	addwf	(timer@sec+1),f
	goto	l1417
	line	19
	
l1030:	
	goto	l1417
	line	20
	
l1027:	
	line	8
	
l1417:	
	movf	(timer@sec+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(01h)
	subwf	(timer@sec),w
u35:

	skipnc
	goto	u31
	goto	u30
u31:
	goto	l1028
u30:
	goto	l1032
	
l1031:	
	line	62
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,4216
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
