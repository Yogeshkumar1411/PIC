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
	file	"interlock.as"
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
	global	main@flag
main@flag:	; 2 bytes @ 0x0
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
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
;; (0) _main                                                 2     2      0      30
;;                                              0 COMMON     2     2      0
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
;;COMMON               E      2       2       1       14.3%
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
;;		line 7 in file "D:\Embedded\pic\code\software\led\interlock\interlock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  flag            2    0[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\led\interlock\interlock.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	8
	
l1409:	
;interlock.c: 8: int flag=0;
	clrf	(main@flag)
	clrf	(main@flag+1)
	line	9
;interlock.c: 9: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	10
	
l1411:	
;interlock.c: 10: TRISC=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	11
	
l1413:	
;interlock.c: 11: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	12
	
l1415:	
;interlock.c: 12: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	13
	
l1417:	
;interlock.c: 13: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	14
	
l1419:	
;interlock.c: 14: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	goto	l1421
	line	15
;interlock.c: 15: while(1)
	
l1025:	
	line	17
	
l1421:	
;interlock.c: 16: {
;interlock.c: 17: if(RC0==1&&flag==0)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(56/8),(56)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	
l1423:	
	movf	((main@flag+1)),w
	iorwf	((main@flag)),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1026
u20:
	line	19
	
l1425:	
;interlock.c: 18: {
;interlock.c: 19: PORTB=0X01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	20
;interlock.c: 20: flag=1;
	movlw	low(01h)
	movwf	(main@flag)
	movlw	high(01h)
	movwf	((main@flag))+1
	line	21
;interlock.c: 21: while(RC0==1);
	goto	l1027
	
l1028:	
	
l1027:	
	btfsc	(56/8),(56)&7
	goto	u31
	goto	u30
u31:
	goto	l1027
u30:
	goto	l1026
	
l1029:	
	line	22
	
l1026:	
	line	23
;interlock.c: 22: }
;interlock.c: 23: if(RC1==1&&flag==0)
	btfss	(57/8),(57)&7
	goto	u41
	goto	u40
u41:
	goto	l1030
u40:
	
l1427:	
	movf	((main@flag+1)),w
	iorwf	((main@flag)),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1030
u50:
	line	25
	
l1429:	
;interlock.c: 24: {
;interlock.c: 25: PORTB=0X02;
	movlw	(02h)
	movwf	(6)	;volatile
	line	26
;interlock.c: 26: flag=1;
	movlw	low(01h)
	movwf	(main@flag)
	movlw	high(01h)
	movwf	((main@flag))+1
	line	27
;interlock.c: 27: while(RC1==1);
	goto	l1031
	
l1032:	
	
l1031:	
	btfsc	(57/8),(57)&7
	goto	u61
	goto	u60
u61:
	goto	l1031
u60:
	goto	l1030
	
l1033:	
	line	28
	
l1030:	
	line	29
;interlock.c: 28: }
;interlock.c: 29: if(RC2==1)
	btfss	(58/8),(58)&7
	goto	u71
	goto	u70
u71:
	goto	l1421
u70:
	line	31
	
l1431:	
;interlock.c: 30: {
;interlock.c: 31: flag=0;
	clrf	(main@flag)
	clrf	(main@flag+1)
	line	32
;interlock.c: 32: PORTB=0X00;
	clrf	(6)	;volatile
	line	33
;interlock.c: 33: while(RC2==1);
	goto	l1035
	
l1036:	
	
l1035:	
	btfsc	(58/8),(58)&7
	goto	u81
	goto	u80
u81:
	goto	l1035
u80:
	goto	l1421
	
l1037:	
	goto	l1421
	line	34
	
l1034:	
	goto	l1421
	line	35
	
l1038:	
	line	15
	goto	l1421
	
l1039:	
	line	36
	
l1040:	
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
