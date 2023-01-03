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
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\keypad\Keypad_basic\keypad_basic.c"
	line	10

;initializer for _seg
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_PORTB
_PORTB	set	6
	global	_PORTD
_PORTD	set	8
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_RD2
_RD2	set	66
	global	_RD3
_RD3	set	67
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"keypad_basic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\keypad\Keypad_basic\keypad_basic.c"
_seg:
       ds      20

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
;; BANK0           80      0      20
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
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 0
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0       0       9        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      14      12        0.0%
;;ABS                  0      0      14       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50      0      14       5       25.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      0       0       1        0.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "D:\Embedded\pic\code\software\keypad\Keypad_basic\keypad_basic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\keypad\Keypad_basic\keypad_basic.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	14
	
l1439:	
;keypad_basic.c: 14: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	15
	
l1441:	
;keypad_basic.c: 15: TRISD=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	16
	
l1443:	
;keypad_basic.c: 16: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	17
	
l1445:	
;keypad_basic.c: 17: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	18
	
l1447:	
;keypad_basic.c: 18: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	19
	
l1449:	
;keypad_basic.c: 19: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l1451
	line	20
;keypad_basic.c: 20: while(1)
	
l1027:	
	line	22
	
l1451:	
;keypad_basic.c: 21: {
;keypad_basic.c: 22: RD4=1;RD5=RD6=RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	
l1453:	
	bcf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	line	23
	
l1455:	
;keypad_basic.c: 23: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u11
	goto	u10
u11:
	goto	l1028
u10:
	line	25
	
l1457:	
;keypad_basic.c: 24: {
;keypad_basic.c: 25: PORTB=seg[1];
	movf	0+(_seg)+01h,w
	movwf	(6)	;volatile
	line	26
;keypad_basic.c: 26: while(RD0==1);
	goto	l1029
	
l1030:	
	
l1029:	
	btfsc	(64/8),(64)&7
	goto	u21
	goto	u20
u21:
	goto	l1029
u20:
	goto	l1028
	
l1031:	
	line	27
	
l1028:	
	line	28
;keypad_basic.c: 27: }
;keypad_basic.c: 28: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u31
	goto	u30
u31:
	goto	l1032
u30:
	line	30
	
l1459:	
;keypad_basic.c: 29: {
;keypad_basic.c: 30: PORTB=seg[2];
	movf	0+(_seg)+02h,w
	movwf	(6)	;volatile
	line	31
;keypad_basic.c: 31: while(RD1==1);
	goto	l1033
	
l1034:	
	
l1033:	
	btfsc	(65/8),(65)&7
	goto	u41
	goto	u40
u41:
	goto	l1033
u40:
	goto	l1032
	
l1035:	
	line	32
	
l1032:	
	line	33
;keypad_basic.c: 32: }
;keypad_basic.c: 33: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u51
	goto	u50
u51:
	goto	l1036
u50:
	line	35
	
l1461:	
;keypad_basic.c: 34: {
;keypad_basic.c: 35: PORTB=seg[3];
	movf	0+(_seg)+03h,w
	movwf	(6)	;volatile
	line	36
;keypad_basic.c: 36: while(RD2==1);
	goto	l1037
	
l1038:	
	
l1037:	
	btfsc	(66/8),(66)&7
	goto	u61
	goto	u60
u61:
	goto	l1037
u60:
	goto	l1036
	
l1039:	
	line	37
	
l1036:	
	line	38
;keypad_basic.c: 37: }
;keypad_basic.c: 38: if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u71
	goto	u70
u71:
	goto	l1040
u70:
	line	40
	
l1463:	
;keypad_basic.c: 39: {
;keypad_basic.c: 40: PORTB=seg[4];
	movf	0+(_seg)+04h,w
	movwf	(6)	;volatile
	line	41
;keypad_basic.c: 41: while(RD3==1);
	goto	l1041
	
l1042:	
	
l1041:	
	btfsc	(67/8),(67)&7
	goto	u81
	goto	u80
u81:
	goto	l1041
u80:
	goto	l1040
	
l1043:	
	line	42
	
l1040:	
	line	45
;keypad_basic.c: 42: }
;keypad_basic.c: 45: RD5=1;RD4=RD6=RD7=0;
	bsf	(69/8),(69)&7
	bcf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(68/8),(68)&7
	line	46
;keypad_basic.c: 46: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u91
	goto	u90
u91:
	goto	l1044
u90:
	line	48
	
l1465:	
;keypad_basic.c: 47: {
;keypad_basic.c: 48: PORTB=seg[5];
	movf	0+(_seg)+05h,w
	movwf	(6)	;volatile
	line	49
;keypad_basic.c: 49: while(RD0==1);
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(64/8),(64)&7
	goto	u101
	goto	u100
u101:
	goto	l1045
u100:
	goto	l1044
	
l1047:	
	line	50
	
l1044:	
	line	51
;keypad_basic.c: 50: }
;keypad_basic.c: 51: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u111
	goto	u110
u111:
	goto	l1048
u110:
	line	53
	
l1467:	
;keypad_basic.c: 52: {
;keypad_basic.c: 53: PORTB=seg[6];
	movf	0+(_seg)+06h,w
	movwf	(6)	;volatile
	line	54
;keypad_basic.c: 54: while(RD1==1);
	goto	l1049
	
l1050:	
	
l1049:	
	btfsc	(65/8),(65)&7
	goto	u121
	goto	u120
u121:
	goto	l1049
u120:
	goto	l1048
	
l1051:	
	line	55
	
l1048:	
	line	56
;keypad_basic.c: 55: }
;keypad_basic.c: 56: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u131
	goto	u130
u131:
	goto	l1052
u130:
	line	58
	
l1469:	
;keypad_basic.c: 57: {
;keypad_basic.c: 58: PORTB=seg[7];
	movf	0+(_seg)+07h,w
	movwf	(6)	;volatile
	line	59
;keypad_basic.c: 59: while(RD2==1);
	goto	l1053
	
l1054:	
	
l1053:	
	btfsc	(66/8),(66)&7
	goto	u141
	goto	u140
u141:
	goto	l1053
u140:
	goto	l1052
	
l1055:	
	line	60
	
l1052:	
	line	61
;keypad_basic.c: 60: }
;keypad_basic.c: 61: if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u151
	goto	u150
u151:
	goto	l1056
u150:
	line	63
	
l1471:	
;keypad_basic.c: 62: {
;keypad_basic.c: 63: PORTB=seg[8];
	movf	0+(_seg)+08h,w
	movwf	(6)	;volatile
	line	64
;keypad_basic.c: 64: while(RD3==1);
	goto	l1057
	
l1058:	
	
l1057:	
	btfsc	(67/8),(67)&7
	goto	u161
	goto	u160
u161:
	goto	l1057
u160:
	goto	l1056
	
l1059:	
	line	65
	
l1056:	
	line	68
;keypad_basic.c: 65: }
;keypad_basic.c: 68: RD6=1;RD4=RD5=RD7=0;
	bsf	(70/8),(70)&7
	bcf	(71/8),(71)&7
	bcf	(69/8),(69)&7
	bcf	(68/8),(68)&7
	line	69
;keypad_basic.c: 69: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u171
	goto	u170
u171:
	goto	l1060
u170:
	line	71
	
l1473:	
;keypad_basic.c: 70: {
;keypad_basic.c: 71: PORTB=seg[9];
	movf	0+(_seg)+09h,w
	movwf	(6)	;volatile
	line	72
;keypad_basic.c: 72: while(RD0==1);
	goto	l1061
	
l1062:	
	
l1061:	
	btfsc	(64/8),(64)&7
	goto	u181
	goto	u180
u181:
	goto	l1061
u180:
	goto	l1060
	
l1063:	
	line	73
	
l1060:	
	line	74
;keypad_basic.c: 73: }
;keypad_basic.c: 74: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u191
	goto	u190
u191:
	goto	l1451
u190:
	line	76
	
l1475:	
;keypad_basic.c: 75: {
;keypad_basic.c: 76: PORTB=seg[0];
	movf	(_seg),w
	movwf	(6)	;volatile
	line	77
;keypad_basic.c: 77: while(RD1==1);
	goto	l1065
	
l1066:	
	
l1065:	
	btfsc	(65/8),(65)&7
	goto	u201
	goto	u200
u201:
	goto	l1065
u200:
	goto	l1451
	
l1067:	
	goto	l1451
	line	78
	
l1064:	
	goto	l1451
	line	92
	
l1068:	
	line	20
	goto	l1451
	
l1069:	
	line	93
	
l1070:	
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
