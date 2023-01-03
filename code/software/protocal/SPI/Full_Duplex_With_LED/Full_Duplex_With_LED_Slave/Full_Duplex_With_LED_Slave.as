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
	FNCALL	_main,_slave
	FNCALL	_main,_master
	FNROOT	_main
	global	_count
	global	_z
	global	_PORTA
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
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
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_BF
_BF	set	1184
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"Full_Duplex_With_LED_Slave.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

_z:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_master
?_master:	; 0 bytes @ 0x0
	global	?_slave
?_slave:	; 0 bytes @ 0x0
	global	??_slave
??_slave:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	master@num
master@num:	; 2 bytes @ 0x0
	ds	2
	global	??_master
??_master:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_slave
;;   _main->_master
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
;;                              _slave
;;                             _master
;; ---------------------------------------------------------------------------------
;; (1) _slave                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (1) _master                                               2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _slave
;;   _master
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
;;ABS                  0      0       6       3        0.0%
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
;;DATA                 0      0       7      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 57 in file "D:\Embedded\pic\code\software\protocal\SPI\Full_Duplex_With_LED\Full_Duplex_With_LED_Slave\Full_Duplex_With_LED_Slave.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_slave
;;		_master
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_Duplex_With_LED\Full_Duplex_With_LED_Slave\Full_Duplex_With_LED_Slave.c"
	line	57
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	58
	
l2213:	
;Full_Duplex_With_LED_Slave.c: 58: TRISC=0X18;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	59
	
l2215:	
;Full_Duplex_With_LED_Slave.c: 59: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	60
	
l2217:	
;Full_Duplex_With_LED_Slave.c: 60: TRISA=0X20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	61
;Full_Duplex_With_LED_Slave.c: 61: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	62
;Full_Duplex_With_LED_Slave.c: 62: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	63
;Full_Duplex_With_LED_Slave.c: 63: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	64
;Full_Duplex_With_LED_Slave.c: 64: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	65
;Full_Duplex_With_LED_Slave.c: 65: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	66
	
l2219:	
;Full_Duplex_With_LED_Slave.c: 66: SSPCON=0X25;
	movlw	(025h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	67
	
l2221:	
;Full_Duplex_With_LED_Slave.c: 67: SSPSTAT=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	goto	l2223
	line	68
;Full_Duplex_With_LED_Slave.c: 68: while(1)
	
l1044:	
	line	70
	
l2223:	
;Full_Duplex_With_LED_Slave.c: 69: {
;Full_Duplex_With_LED_Slave.c: 70: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l2227
u2210:
	line	72
	
l2225:	
;Full_Duplex_With_LED_Slave.c: 71: {
;Full_Duplex_With_LED_Slave.c: 72: count=1;
	movlw	low(01h)
	movwf	(_count)
	movlw	high(01h)
	movwf	((_count))+1
	goto	l2227
	line	73
	
l1045:	
	line	74
	
l2227:	
;Full_Duplex_With_LED_Slave.c: 73: }
;Full_Duplex_With_LED_Slave.c: 74: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l2231
u2220:
	line	76
	
l2229:	
;Full_Duplex_With_LED_Slave.c: 75: {
;Full_Duplex_With_LED_Slave.c: 76: count=2;
	movlw	low(02h)
	movwf	(_count)
	movlw	high(02h)
	movwf	((_count))+1
	goto	l2231
	line	77
	
l1046:	
	line	78
	
l2231:	
;Full_Duplex_With_LED_Slave.c: 77: }
;Full_Duplex_With_LED_Slave.c: 78: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2235
u2230:
	line	80
	
l2233:	
;Full_Duplex_With_LED_Slave.c: 79: {
;Full_Duplex_With_LED_Slave.c: 80: count=3;
	movlw	low(03h)
	movwf	(_count)
	movlw	high(03h)
	movwf	((_count))+1
	goto	l2235
	line	81
	
l1047:	
	line	82
	
l2235:	
;Full_Duplex_With_LED_Slave.c: 81: }
;Full_Duplex_With_LED_Slave.c: 82: if(RA3==1)
	btfss	(43/8),(43)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l2239
u2240:
	line	84
	
l2237:	
;Full_Duplex_With_LED_Slave.c: 83: {
;Full_Duplex_With_LED_Slave.c: 84: count=4;
	movlw	low(04h)
	movwf	(_count)
	movlw	high(04h)
	movwf	((_count))+1
	goto	l2239
	line	85
	
l1048:	
	line	86
	
l2239:	
;Full_Duplex_With_LED_Slave.c: 85: }
;Full_Duplex_With_LED_Slave.c: 86: if(RA4==1)
	btfss	(44/8),(44)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l2243
u2250:
	line	88
	
l2241:	
;Full_Duplex_With_LED_Slave.c: 87: {
;Full_Duplex_With_LED_Slave.c: 88: count=5;
	movlw	low(05h)
	movwf	(_count)
	movlw	high(05h)
	movwf	((_count))+1
	goto	l2243
	line	89
	
l1049:	
	line	90
	
l2243:	
;Full_Duplex_With_LED_Slave.c: 89: }
;Full_Duplex_With_LED_Slave.c: 90: slave();
	fcall	_slave
	line	91
	
l2245:	
;Full_Duplex_With_LED_Slave.c: 91: master(count);
	movf	(_count+1),w
	clrf	(?_master+1)
	addwf	(?_master+1)
	movf	(_count),w
	clrf	(?_master)
	addwf	(?_master)

	fcall	_master
	goto	l2223
	line	92
	
l1050:	
	line	68
	goto	l2223
	
l1051:	
	line	93
	
l1052:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_slave
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _slave *****************
;; Defined at:
;;		line 20 in file "D:\Embedded\pic\code\software\protocal\SPI\Full_Duplex_With_LED\Full_Duplex_With_LED_Slave\Full_Duplex_With_LED_Slave.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text73
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_Duplex_With_LED\Full_Duplex_With_LED_Slave\Full_Duplex_With_LED_Slave.c"
	line	20
	global	__size_of_slave
	__size_of_slave	equ	__end_of_slave-_slave
	
_slave:	
	opt	stack 7
; Regs used in _slave: [wreg]
	line	21
	
l1423:	
;Full_Duplex_With_LED_Slave.c: 21: if(BF==1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u21
	goto	u20
u21:
	goto	l1041
u20:
	line	23
	
l1425:	
;Full_Duplex_With_LED_Slave.c: 22: {
;Full_Duplex_With_LED_Slave.c: 23: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	24
	
l1427:	
;Full_Duplex_With_LED_Slave.c: 24: z=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_slave+0)+0
	clrf	(??_slave+0)+0+1
	movf	0+(??_slave+0)+0,w
	movwf	(_z)
	movf	1+(??_slave+0)+0,w
	movwf	(_z+1)
	line	25
;Full_Duplex_With_LED_Slave.c: 25: if(z==1)
	movlw	01h
	xorwf	(_z),w
	iorwf	(_z+1),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1431
u30:
	line	27
	
l1429:	
;Full_Duplex_With_LED_Slave.c: 26: {
;Full_Duplex_With_LED_Slave.c: 27: RD0=1;
	bsf	(64/8),(64)&7
	line	28
;Full_Duplex_With_LED_Slave.c: 28: RD1=RD2=RD3=RD4=0;
	bcf	(68/8),(68)&7
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	goto	l1431
	line	29
	
l1036:	
	line	30
	
l1431:	
;Full_Duplex_With_LED_Slave.c: 29: }
;Full_Duplex_With_LED_Slave.c: 30: if(z==2)
	movlw	02h
	xorwf	(_z),w
	iorwf	(_z+1),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l1435
u40:
	line	32
	
l1433:	
;Full_Duplex_With_LED_Slave.c: 31: {
;Full_Duplex_With_LED_Slave.c: 32: RD1=1;
	bsf	(65/8),(65)&7
	line	33
;Full_Duplex_With_LED_Slave.c: 33: RD0=RD2=RD3=RD4=0;
	bcf	(68/8),(68)&7
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(64/8),(64)&7
	goto	l1435
	line	34
	
l1037:	
	line	35
	
l1435:	
;Full_Duplex_With_LED_Slave.c: 34: }
;Full_Duplex_With_LED_Slave.c: 35: if(z==3)
	movlw	03h
	xorwf	(_z),w
	iorwf	(_z+1),w
	skipz
	goto	u51
	goto	u50
u51:
	goto	l1439
u50:
	line	37
	
l1437:	
;Full_Duplex_With_LED_Slave.c: 36: {
;Full_Duplex_With_LED_Slave.c: 37: RD2=1;
	bsf	(66/8),(66)&7
	line	38
;Full_Duplex_With_LED_Slave.c: 38: RD1=RD0=RD3=RD4=0;
	bcf	(68/8),(68)&7
	bcf	(67/8),(67)&7
	bcf	(64/8),(64)&7
	bcf	(65/8),(65)&7
	goto	l1439
	line	39
	
l1038:	
	line	40
	
l1439:	
;Full_Duplex_With_LED_Slave.c: 39: }
;Full_Duplex_With_LED_Slave.c: 40: if(z==4)
	movlw	04h
	xorwf	(_z),w
	iorwf	(_z+1),w
	skipz
	goto	u61
	goto	u60
u61:
	goto	l1443
u60:
	line	42
	
l1441:	
;Full_Duplex_With_LED_Slave.c: 41: {
;Full_Duplex_With_LED_Slave.c: 42: RD3=1;
	bsf	(67/8),(67)&7
	line	43
;Full_Duplex_With_LED_Slave.c: 43: RD1=RD2=RD0=RD4=0;
	bcf	(68/8),(68)&7
	bcf	(64/8),(64)&7
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	goto	l1443
	line	44
	
l1039:	
	line	45
	
l1443:	
;Full_Duplex_With_LED_Slave.c: 44: }
;Full_Duplex_With_LED_Slave.c: 45: if(z==5)
	movlw	05h
	xorwf	(_z),w
	iorwf	(_z+1),w
	skipz
	goto	u71
	goto	u70
u71:
	goto	l1041
u70:
	line	47
	
l1445:	
;Full_Duplex_With_LED_Slave.c: 46: {
;Full_Duplex_With_LED_Slave.c: 47: RD4=1;
	bsf	(68/8),(68)&7
	line	48
;Full_Duplex_With_LED_Slave.c: 48: RD1=RD2=RD3=RD0=0;
	bcf	(64/8),(64)&7
	bcf	(67/8),(67)&7
	bcf	(66/8),(66)&7
	bcf	(65/8),(65)&7
	goto	l1041
	line	49
	
l1040:	
	goto	l1041
	line	51
	
l1035:	
	line	53
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_slave
	__end_of_slave:
;; =============== function _slave ends ============

	signat	_slave,88
	global	_master
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _master *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\software\protocal\SPI\Full_Duplex_With_LED\Full_Duplex_With_LED_Slave\Full_Duplex_With_LED_Slave.c"
;; Parameters:    Size  Location     Type
;;  num             2    0[COMMON] int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text74
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_Duplex_With_LED\Full_Duplex_With_LED_Slave\Full_Duplex_With_LED_Slave.c"
	line	14
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 7
; Regs used in _master: [wreg]
	line	15
	
l1421:	
;Full_Duplex_With_LED_Slave.c: 15: SSPBUF=num;
	movf	(master@num),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	16
;Full_Duplex_With_LED_Slave.c: 16: while(SSPIF==0);
	goto	l1029
	
l1030:	
	
l1029:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l1029
u10:
	
l1031:	
	line	17
;Full_Duplex_With_LED_Slave.c: 17: SSPIF=0;
	bcf	(99/8),(99)&7
	line	18
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,4216
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
