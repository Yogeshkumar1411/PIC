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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	intlevel1,_timer
	global	intlevel1
	FNROOT	intlevel1
	global	_count
	global	_INTCON
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
_INTCON	set	11
	global	_PORTA
_PORTA	set	5
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
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
	file	"interrupt_timer.as"
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
	ds	4
	global	?_delay
?_delay:	; 0 bytes @ 0x4
	global	delay@a
delay@a:	; 2 bytes @ 0x4
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x6
	global	??_main
??_main:	; 0 bytes @ 0x6
;;Data sizes: Strings 0, constant 0, data 0, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;
;; Critical Paths under _timer in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _timer in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _timer in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _timer in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _timer in BANK2
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
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              4 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _timer                                                4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;
;; _timer (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       8       3        0.0%
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
;;DATA                 0      0       9      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "D:\Embedded\pic\code\software\interrupt\Interrupt_timer\interrupt_timer.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\interrupt\Interrupt_timer\interrupt_timer.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l2204:	
;interrupt_timer.c: 32: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	33
;interrupt_timer.c: 33: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	34
;interrupt_timer.c: 34: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	35
;interrupt_timer.c: 35: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	36
	
l2206:	
;interrupt_timer.c: 36: INTCON=0XE0;
	movlw	(0E0h)
	movwf	(11)	;volatile
	line	37
	
l2208:	
;interrupt_timer.c: 37: OPTION_REG=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(129)^080h	;volatile
	goto	l2210
	line	38
;interrupt_timer.c: 38: while(1)
	
l1040:	
	line	40
	
l2210:	
;interrupt_timer.c: 39: {
;interrupt_timer.c: 40: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	41
	
l2212:	
;interrupt_timer.c: 41: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	42
	
l2214:	
;interrupt_timer.c: 42: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	43
	
l2216:	
;interrupt_timer.c: 43: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2210
	line	44
	
l1041:	
	line	38
	goto	l2210
	
l1042:	
	line	45
	
l1043:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _delay *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\interrupt\Interrupt_timer\interrupt_timer.c"
;; Parameters:    Size  Location     Type
;;  a               2    4[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text67
	file	"D:\Embedded\pic\code\software\interrupt\Interrupt_timer\interrupt_timer.c"
	line	7
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	8
	
l1412:	
;interrupt_timer.c: 8: while(a--);
	goto	l1414
	
l1028:	
	goto	l1414
	
l1027:	
	
l1414:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1414
u10:
	goto	l1030
	
l1029:	
	line	9
	
l1030:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
	global	_timer
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _timer *****************
;; Defined at:
;;		line 11 in file "D:\Embedded\pic\code\software\interrupt\Interrupt_timer\interrupt_timer.c"
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
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text68
	file	"D:\Embedded\pic\code\software\interrupt\Interrupt_timer\interrupt_timer.c"
	line	11
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 6
; Regs used in _timer: [wreg+status,2+btemp+1]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_timer+0)
	movf	fsr0,w
	movwf	(??_timer+1)
	movf	pclath,w
	movwf	(??_timer+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_timer+3)
	ljmp	_timer
psect	text68
	line	12
	
i1l1416:	
;interrupt_timer.c: 12: if(T0IF==1)
	btfss	(90/8),(90)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1422
u2_20:
	line	14
	
i1l1418:	
;interrupt_timer.c: 13: {
;interrupt_timer.c: 14: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	15
	
i1l1420:	
;interrupt_timer.c: 15: T0IF=0;
	bcf	(90/8),(90)&7
	goto	i1l1422
	line	16
	
i1l1033:	
	line	17
	
i1l1422:	
;interrupt_timer.c: 16: }
;interrupt_timer.c: 17: if(count>=50&&count<150)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3_25
	movlw	low(032h)
	subwf	(_count),w
u3_25:

	skipc
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1428
u3_20:
	
i1l1424:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(096h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4_25
	movlw	low(096h)
	subwf	(_count),w
u4_25:

	skipnc
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1428
u4_20:
	line	19
	
i1l1426:	
;interrupt_timer.c: 18: {
;interrupt_timer.c: 19: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	goto	i1l1428
	line	20
	
i1l1034:	
	line	21
	
i1l1428:	
;interrupt_timer.c: 20: }
;interrupt_timer.c: 21: if(count>=150&&count<200)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(096h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5_25
	movlw	low(096h)
	subwf	(_count),w
u5_25:

	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1434
u5_20:
	
i1l1430:	
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0C8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6_25
	movlw	low(0C8h)
	subwf	(_count),w
u6_25:

	skipnc
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1434
u6_20:
	line	23
	
i1l1432:	
;interrupt_timer.c: 22: {
;interrupt_timer.c: 23: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	goto	i1l1434
	line	24
	
i1l1035:	
	line	25
	
i1l1434:	
;interrupt_timer.c: 24: }
;interrupt_timer.c: 25: if(count==200)
	movlw	0C8h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u7_21
	goto	u7_20
u7_21:
	goto	i1l1037
u7_20:
	line	27
	
i1l1436:	
;interrupt_timer.c: 26: {
;interrupt_timer.c: 27: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	i1l1037
	line	28
	
i1l1036:	
	line	29
	
i1l1037:	
	movf	(??_timer+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_timer+2),w
	movwf	pclath
	movf	(??_timer+1),w
	movwf	fsr0
	swapf	(??_timer+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,88
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
