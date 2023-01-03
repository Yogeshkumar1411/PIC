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
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RC1
_RC1	set	57
	global	_RC4
_RC4	set	60
	global	_RD0
_RD0	set	64
	global	_RD1
_RD1	set	65
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"lift.as"
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
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
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
;;COMMON               E      0       0       1        0.0%
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
;;		line 19 in file "D:\Embedded\Subtitles\lift\lift.c"
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
	file	"D:\Embedded\Subtitles\lift\lift.c"
	line	19
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg+status,2]
	line	20
	
l1431:	
;lift.c: 20: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	21
	
l1433:	
;lift.c: 21: TRISA=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	22
	
l1435:	
;lift.c: 22: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	23
;lift.c: 23: TRISC=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	24
	
l1437:	
;lift.c: 24: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	25
	
l1439:	
;lift.c: 25: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	26
	
l1441:	
;lift.c: 26: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	27
	
l1443:	
;lift.c: 27: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l1445
	line	28
;lift.c: 28: while(1)
	
l1025:	
	line	30
	
l1445:	
;lift.c: 29: {
;lift.c: 30: if(RC1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(57/8),(57)&7
	goto	u11
	goto	u10
u11:
	goto	l1026
u10:
	line	32
	
l1447:	
;lift.c: 31: {
;lift.c: 32: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u21
	goto	u20
u21:
	goto	l1028
u20:
	line	34
	
l1449:	
;lift.c: 33: {
;lift.c: 34: RD0=0;
	bcf	(64/8),(64)&7
	line	35
;lift.c: 35: RD1=0;
	bcf	(65/8),(65)&7
	goto	l1028
	line	36
	
l1027:	
	line	37
;lift.c: 36: }
;lift.c: 37: while(RA0==1);
	goto	l1028
	
l1029:	
	
l1028:	
	btfsc	(40/8),(40)&7
	goto	u31
	goto	u30
u31:
	goto	l1028
u30:
	
l1030:	
	line	38
;lift.c: 38: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u41
	goto	u40
u41:
	goto	l1032
u40:
	line	40
	
l1451:	
;lift.c: 39: {
;lift.c: 40: RD0=1;
	bsf	(64/8),(64)&7
	line	41
;lift.c: 41: RD1=0;
	bcf	(65/8),(65)&7
	goto	l1032
	line	42
	
l1031:	
	line	43
;lift.c: 42: }
;lift.c: 43: while(RA1==1);
	goto	l1032
	
l1033:	
	
l1032:	
	btfsc	(41/8),(41)&7
	goto	u51
	goto	u50
u51:
	goto	l1032
u50:
	
l1034:	
	line	44
;lift.c: 44: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u61
	goto	u60
u61:
	goto	l1036
u60:
	line	46
	
l1453:	
;lift.c: 45: {
;lift.c: 46: RD0=1;
	bsf	(64/8),(64)&7
	line	47
;lift.c: 47: RD1=0;
	bcf	(65/8),(65)&7
	goto	l1036
	line	48
	
l1035:	
	line	49
;lift.c: 48: }
;lift.c: 49: while(RA2==1);
	goto	l1036
	
l1037:	
	
l1036:	
	btfsc	(42/8),(42)&7
	goto	u71
	goto	u70
u71:
	goto	l1036
u70:
	
l1038:	
	line	50
;lift.c: 50: if(RA3==1)
	btfss	(43/8),(43)&7
	goto	u81
	goto	u80
u81:
	goto	l1040
u80:
	line	52
	
l1455:	
;lift.c: 51: {
;lift.c: 52: RD0=1;
	bsf	(64/8),(64)&7
	line	53
;lift.c: 53: RD1=0;
	bcf	(65/8),(65)&7
	goto	l1040
	line	54
	
l1039:	
	line	55
;lift.c: 54: }
;lift.c: 55: while(RA3==1);
	goto	l1040
	
l1041:	
	
l1040:	
	btfsc	(43/8),(43)&7
	goto	u91
	goto	u90
u91:
	goto	l1040
u90:
	goto	l1026
	
l1042:	
	line	56
	
l1026:	
	line	103
;lift.c: 56: }
;lift.c: 103: if(RC4==1)
	btfss	(60/8),(60)&7
	goto	u101
	goto	u100
u101:
	goto	l1445
u100:
	line	104
	
l1457:	
;lift.c: 104: {if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u111
	goto	u110
u111:
	goto	l1044
u110:
	line	106
	
l1459:	
;lift.c: 105: {
;lift.c: 106: RD0=0;
	bcf	(64/8),(64)&7
	line	107
;lift.c: 107: RD1=1;
	bsf	(65/8),(65)&7
	line	108
;lift.c: 108: while(RA0==1);}
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(40/8),(40)&7
	goto	u121
	goto	u120
u121:
	goto	l1045
u120:
	goto	l1044
	
l1047:	
	
l1044:	
	line	110
;lift.c: 110: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u131
	goto	u130
u131:
	goto	l1048
u130:
	line	112
	
l1461:	
;lift.c: 111: {
;lift.c: 112: RD0=0;
	bcf	(64/8),(64)&7
	line	113
;lift.c: 113: RD1=1;
	bsf	(65/8),(65)&7
	line	114
;lift.c: 114: while(RA1==1);
	goto	l1049
	
l1050:	
	
l1049:	
	btfsc	(41/8),(41)&7
	goto	u141
	goto	u140
u141:
	goto	l1049
u140:
	goto	l1048
	
l1051:	
	line	115
	
l1048:	
	line	117
;lift.c: 115: }
;lift.c: 117: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u151
	goto	u150
u151:
	goto	l1052
u150:
	line	119
	
l1463:	
;lift.c: 118: {
;lift.c: 119: RD0=0;
	bcf	(64/8),(64)&7
	line	120
;lift.c: 120: RD1=1;
	bsf	(65/8),(65)&7
	line	121
;lift.c: 121: while(RA2==1);
	goto	l1053
	
l1054:	
	
l1053:	
	btfsc	(42/8),(42)&7
	goto	u161
	goto	u160
u161:
	goto	l1053
u160:
	goto	l1052
	
l1055:	
	line	122
	
l1052:	
	line	124
;lift.c: 122: }
;lift.c: 124: if(RA3==1)
	btfss	(43/8),(43)&7
	goto	u171
	goto	u170
u171:
	goto	l1445
u170:
	line	126
	
l1465:	
;lift.c: 125: {
;lift.c: 126: RD0=0;
	bcf	(64/8),(64)&7
	line	127
;lift.c: 127: RD1=0;
	bcf	(65/8),(65)&7
	line	128
;lift.c: 128: while(RA3==1);
	goto	l1057
	
l1058:	
	
l1057:	
	btfsc	(43/8),(43)&7
	goto	u181
	goto	u180
u181:
	goto	l1057
u180:
	goto	l1445
	
l1059:	
	goto	l1445
	line	129
	
l1056:	
	goto	l1445
	line	130
	
l1043:	
	goto	l1445
	line	131
	
l1060:	
	line	28
	goto	l1445
	
l1061:	
	line	132
	
l1062:	
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
