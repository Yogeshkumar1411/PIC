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
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"password.as"
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
	global	main@count
main@count:	; 2 bytes @ 0x0
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
;; (0) _main                                                 2     2      0     135
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
;;		line 9 in file "D:\Embedded\pic\code\software\led\password\password.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    0[COMMON] int 
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
	file	"D:\Embedded\pic\code\software\led\password\password.c"
	line	9
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2+status,0]
	line	10
	
l1421:	
;password.c: 10: int count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	11
;password.c: 11: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	12
;password.c: 12: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	13
;password.c: 13: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	14
;password.c: 14: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	15
;password.c: 15: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	16
	
l1423:	
;password.c: 16: TRISC=0X3F;
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	goto	l1425
	line	17
;password.c: 17: while(1)
	
l1025:	
	line	19
	
l1425:	
;password.c: 18: {
;password.c: 19: if((RC0==1)&&(count==0))
	bcf	status, 5	;RP0=0, select bank0
	btfss	(56/8),(56)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	
l1427:	
	movf	((main@count+1)),w
	iorwf	((main@count)),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1026
u20:
	line	21
	
l1429:	
;password.c: 20: {
;password.c: 21: count=count+1;
	movf	(main@count),w
	addlw	low(01h)
	movwf	(main@count)
	movf	(main@count+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(main@count)
	line	22
;password.c: 22: while(RC0==1);
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
	line	23
	
l1026:	
	line	24
;password.c: 23: }
;password.c: 24: if((RC2==1)&&(count==1))
	btfss	(58/8),(58)&7
	goto	u41
	goto	u40
u41:
	goto	l1030
u40:
	
l1431:	
	movlw	01h
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1030
u50:
	line	26
	
l1433:	
;password.c: 25: {
;password.c: 26: count=count+2;
	movf	(main@count),w
	addlw	low(02h)
	movwf	(main@count)
	movf	(main@count+1),w
	skipnc
	addlw	1
	addlw	high(02h)
	movwf	1+(main@count)
	line	27
;password.c: 27: while(RC2==1);
	goto	l1031
	
l1032:	
	
l1031:	
	btfsc	(58/8),(58)&7
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
;password.c: 28: }
;password.c: 29: if((RC1==1)&&(count==3))
	btfss	(57/8),(57)&7
	goto	u71
	goto	u70
u71:
	goto	l1034
u70:
	
l1435:	
	movlw	03h
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u81
	goto	u80
u81:
	goto	l1034
u80:
	line	31
	
l1437:	
;password.c: 30: {
;password.c: 31: count=count+3;
	movf	(main@count),w
	addlw	low(03h)
	movwf	(main@count)
	movf	(main@count+1),w
	skipnc
	addlw	1
	addlw	high(03h)
	movwf	1+(main@count)
	line	32
;password.c: 32: while(RC1==1);
	goto	l1035
	
l1036:	
	
l1035:	
	btfsc	(57/8),(57)&7
	goto	u91
	goto	u90
u91:
	goto	l1035
u90:
	goto	l1034
	
l1037:	
	line	33
	
l1034:	
	line	34
;password.c: 33: }
;password.c: 34: if((RC3==1)&&(count==6))
	btfss	(59/8),(59)&7
	goto	u101
	goto	u100
u101:
	goto	l1038
u100:
	
l1439:	
	movlw	06h
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u111
	goto	u110
u111:
	goto	l1038
u110:
	line	36
	
l1441:	
;password.c: 35: {
;password.c: 36: count=count+4;
	movf	(main@count),w
	addlw	low(04h)
	movwf	(main@count)
	movf	(main@count+1),w
	skipnc
	addlw	1
	addlw	high(04h)
	movwf	1+(main@count)
	line	37
;password.c: 37: while(RC3==1);
	goto	l1039
	
l1040:	
	
l1039:	
	btfsc	(59/8),(59)&7
	goto	u121
	goto	u120
u121:
	goto	l1039
u120:
	goto	l1038
	
l1041:	
	line	38
	
l1038:	
	line	39
;password.c: 38: }
;password.c: 39: if((RC4==1)&&(count==10))
	btfss	(60/8),(60)&7
	goto	u131
	goto	u130
u131:
	goto	l1042
u130:
	
l1443:	
	movlw	0Ah
	xorwf	(main@count),w
	iorwf	(main@count+1),w
	skipz
	goto	u141
	goto	u140
u141:
	goto	l1042
u140:
	line	41
	
l1445:	
;password.c: 40: {
;password.c: 41: PORTB=0X01;
	movlw	(01h)
	movwf	(6)	;volatile
	line	42
;password.c: 42: while(RC4==1);
	goto	l1043
	
l1044:	
	
l1043:	
	btfsc	(60/8),(60)&7
	goto	u151
	goto	u150
u151:
	goto	l1043
u150:
	goto	l1042
	
l1045:	
	line	43
	
l1042:	
	line	44
;password.c: 43: }
;password.c: 44: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u161
	goto	u160
u161:
	goto	l1425
u160:
	line	46
	
l1447:	
;password.c: 45: {
;password.c: 46: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	47
;password.c: 47: PORTB=0X00;
	clrf	(6)	;volatile
	line	48
;password.c: 48: while(RC5==1);
	goto	l1047
	
l1048:	
	
l1047:	
	btfsc	(61/8),(61)&7
	goto	u171
	goto	u170
u171:
	goto	l1047
u170:
	goto	l1425
	
l1049:	
	goto	l1425
	line	49
	
l1046:	
	goto	l1425
	line	50
	
l1050:	
	line	17
	goto	l1425
	
l1051:	
	line	51
	
l1052:	
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
