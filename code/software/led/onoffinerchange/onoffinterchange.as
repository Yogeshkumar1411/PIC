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
	FNROOT	_main
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RB0
_RB0	set	48
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"onoffinterchange.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
	global	main@c
main@c:	; 2 bytes @ 0x0
	ds	2
	global	main@a
main@a:	; 2 bytes @ 0x2
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x4
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
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
;; (0) _main                                                 6     6      0      75
;;                                              0 COMMON     6     6      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       0       2        0.0%
;;ABS                  0      0       0       3        0.0%
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
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\software\led\onoffinerchange\onoffinterchange.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  b               2    4[COMMON] int 
;;  a               2    2[COMMON] int 
;;  c               2    0[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\led\onoffinerchange\onoffinterchange.c"
	line	6
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	7
	
l1406:	
;onoffinterchange.c: 7: int a=1,b=0,c;
	movlw	low(01h)
	movwf	(main@a)
	movlw	high(01h)
	movwf	((main@a))+1
	
l1408:	
	clrf	(main@b)
	clrf	(main@b+1)
	line	8
	
l1410:	
;onoffinterchange.c: 8: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	9
	
l1412:	
;onoffinterchange.c: 9: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	10
	
l1414:	
;onoffinterchange.c: 10: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	11
	
l1416:	
;onoffinterchange.c: 11: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	12
	
l1418:	
;onoffinterchange.c: 12: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	13
;onoffinterchange.c: 13: TRISC=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	goto	l1420
	line	14
;onoffinterchange.c: 14: while(1)
	
l1025:	
	line	16
	
l1420:	
;onoffinterchange.c: 15: {
;onoffinterchange.c: 16: if(RC0==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(56/8),(56)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	line	18
	
l1422:	
;onoffinterchange.c: 17: {
;onoffinterchange.c: 18: RB0=a;
	btfsc	(main@a),0
	goto	u21
	goto	u20
	
u21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u34
u20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u34:
	line	19
;onoffinterchange.c: 19: while(RC0==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(56/8),(56)&7
	goto	u41
	goto	u40
u41:
	goto	l1027
u40:
	goto	l1026
	
l1029:	
	line	20
	
l1026:	
	line	21
;onoffinterchange.c: 20: }
;onoffinterchange.c: 21: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u51
	goto	u50
u51:
	goto	l1030
u50:
	line	23
	
l1424:	
;onoffinterchange.c: 22: {
;onoffinterchange.c: 23: RB0=b;
	btfsc	(main@b),0
	goto	u61
	goto	u60
	
u61:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u74
u60:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u74:
	line	24
;onoffinterchange.c: 24: while(RC1==1);
	goto	l1031
	
l1032:	
	
l1031:	
	btfsc	(57/8),(57)&7
	goto	u81
	goto	u80
u81:
	goto	l1031
u80:
	goto	l1030
	
l1033:	
	line	25
	
l1030:	
	line	26
;onoffinterchange.c: 25: }
;onoffinterchange.c: 26: if(RC2==1)
	btfss	(58/8),(58)&7
	goto	u91
	goto	u90
u91:
	goto	l1420
u90:
	line	29
	
l1426:	
;onoffinterchange.c: 27: {
;onoffinterchange.c: 29: c=a;
	movf	(main@a+1),w
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(main@a),w
	clrf	(main@c)
	addwf	(main@c)

	line	30
;onoffinterchange.c: 30: a=b;
	movf	(main@b+1),w
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(main@b),w
	clrf	(main@a)
	addwf	(main@a)

	line	31
;onoffinterchange.c: 31: b=c;
	movf	(main@c+1),w
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(main@c),w
	clrf	(main@b)
	addwf	(main@b)

	goto	l1420
	line	32
	
l1034:	
	goto	l1420
	line	33
	
l1035:	
	line	14
	goto	l1420
	
l1036:	
	line	34
	
l1037:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
psect	maintext
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
