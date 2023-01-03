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
	FNCALL	_main,_operation
	FNROOT	_main
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\lift\lift.c"
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
	global	_button
	global	_floor
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
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
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
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

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_button:
       ds      2

_floor:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\lift\lift.c"
_seg:
       ds      20

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
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
	global	??_operation
??_operation:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_operation
?_operation:	; 2 bytes @ 0x0
	global	operation@GFF
operation@GFF:	; 2 bytes @ 0x0
	ds	2
	global	operation@GFR
operation@GFR:	; 2 bytes @ 0x2
	ds	2
	global	operation@FFF
operation@FFF:	; 2 bytes @ 0x4
	ds	2
	global	operation@FFR
operation@FFR:	; 2 bytes @ 0x6
	ds	2
	global	operation@SFF
operation@SFF:	; 2 bytes @ 0x8
	ds	2
	global	operation@SFR
operation@SFR:	; 2 bytes @ 0xA
	ds	2
	global	operation@TFF
operation@TFF:	; 2 bytes @ 0xC
	ds	2
	global	operation@TFR
operation@TFR:	; 2 bytes @ 0xE
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
;; BANK0           80     16      40
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
;;   _main->_operation
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
;; (0) _main                                                 0     0      0     176
;;                          _operation
;; ---------------------------------------------------------------------------------
;; (1) _operation                                           16     0     16     176
;;                                              0 BANK0     16     0     16
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _operation
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
;;DATA                 0      0      29      12        0.0%
;;ABS                  0      0      28       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     10      28       5       50.0%
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
;;		line 88 in file "D:\Embedded\pic\code\software\lift\lift.c"
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
;;		_operation
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\lift\lift.c"
	line	88
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	89
	
l2311:	
;lift.c: 89: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	90
	
l2313:	
;lift.c: 90: TRISA=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	91
	
l2315:	
;lift.c: 91: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	92
;lift.c: 92: TRISC=0XF0;
	movlw	(0F0h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	93
	
l2317:	
;lift.c: 93: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	94
	
l2319:	
;lift.c: 94: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	95
	
l2321:	
;lift.c: 95: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	96
	
l2323:	
;lift.c: 96: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	97
	
l2325:	
;lift.c: 97: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	98
	
l2327:	
;lift.c: 98: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2329
	line	102
;lift.c: 102: while(1)
	
l1047:	
	line	105
	
l2329:	
;lift.c: 103: {
;lift.c: 105: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l2333
u2630:
	line	107
	
l2331:	
;lift.c: 106: {
;lift.c: 107: button=1;
	movlw	low(01h)
	movwf	(_button)
	movlw	high(01h)
	movwf	((_button))+1
	goto	l2333
	line	108
	
l1048:	
	line	109
	
l2333:	
;lift.c: 108: }
;lift.c: 109: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l2337
u2640:
	line	111
	
l2335:	
;lift.c: 110: {
;lift.c: 111: button=2;
	movlw	low(02h)
	movwf	(_button)
	movlw	high(02h)
	movwf	((_button))+1
	goto	l2337
	line	112
	
l1049:	
	line	113
	
l2337:	
;lift.c: 112: }
;lift.c: 113: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l2341
u2650:
	line	115
	
l2339:	
;lift.c: 114: {
;lift.c: 115: button=3;
	movlw	low(03h)
	movwf	(_button)
	movlw	high(03h)
	movwf	((_button))+1
	goto	l2341
	line	116
	
l1050:	
	line	117
	
l2341:	
;lift.c: 116: }
;lift.c: 117: if(RA3==1)
	btfss	(43/8),(43)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l1051
u2660:
	line	119
	
l2343:	
;lift.c: 118: {
;lift.c: 119: button=4;
	movlw	low(04h)
	movwf	(_button)
	movlw	high(04h)
	movwf	((_button))+1
	line	120
	
l1051:	
	line	121
;lift.c: 120: }
;lift.c: 121: if(button==1)
	movlw	01h
	xorwf	(_button),w
	iorwf	(_button+1),w
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l2347
u2670:
	line	123
	
l2345:	
;lift.c: 122: {
;lift.c: 123: operation(0,0,0,1,0,1,0,1);
	movlw	low(0)
	movwf	(?_operation)
	movlw	high(0)
	movwf	((?_operation))+1
	movlw	low(0)
	movwf	0+(?_operation)+02h
	movlw	high(0)
	movwf	(0+(?_operation)+02h)+1
	movlw	low(0)
	movwf	0+(?_operation)+04h
	movlw	high(0)
	movwf	(0+(?_operation)+04h)+1
	movlw	low(01h)
	movwf	0+(?_operation)+06h
	movlw	high(01h)
	movwf	(0+(?_operation)+06h)+1
	movlw	low(0)
	movwf	0+(?_operation)+08h
	movlw	high(0)
	movwf	(0+(?_operation)+08h)+1
	movlw	low(01h)
	movwf	0+(?_operation)+0Ah
	movlw	high(01h)
	movwf	(0+(?_operation)+0Ah)+1
	movlw	low(0)
	movwf	0+(?_operation)+0Ch
	movlw	high(0)
	movwf	(0+(?_operation)+0Ch)+1
	movlw	low(01h)
	movwf	0+(?_operation)+0Eh
	movlw	high(01h)
	movwf	(0+(?_operation)+0Eh)+1
	fcall	_operation
	goto	l2347
	line	124
	
l1052:	
	line	125
	
l2347:	
;lift.c: 124: }
;lift.c: 125: if(button==2)
	movlw	02h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_button),w
	iorwf	(_button+1),w
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l2351
u2680:
	line	127
	
l2349:	
;lift.c: 126: {
;lift.c: 127: operation(1,0,0,0,0,1,0,1);
	movlw	low(01h)
	movwf	(?_operation)
	movlw	high(01h)
	movwf	((?_operation))+1
	movlw	low(0)
	movwf	0+(?_operation)+02h
	movlw	high(0)
	movwf	(0+(?_operation)+02h)+1
	movlw	low(0)
	movwf	0+(?_operation)+04h
	movlw	high(0)
	movwf	(0+(?_operation)+04h)+1
	movlw	low(0)
	movwf	0+(?_operation)+06h
	movlw	high(0)
	movwf	(0+(?_operation)+06h)+1
	movlw	low(0)
	movwf	0+(?_operation)+08h
	movlw	high(0)
	movwf	(0+(?_operation)+08h)+1
	movlw	low(01h)
	movwf	0+(?_operation)+0Ah
	movlw	high(01h)
	movwf	(0+(?_operation)+0Ah)+1
	movlw	low(0)
	movwf	0+(?_operation)+0Ch
	movlw	high(0)
	movwf	(0+(?_operation)+0Ch)+1
	movlw	low(01h)
	movwf	0+(?_operation)+0Eh
	movlw	high(01h)
	movwf	(0+(?_operation)+0Eh)+1
	fcall	_operation
	goto	l2351
	line	128
	
l1053:	
	line	129
	
l2351:	
;lift.c: 128: }
;lift.c: 129: if(button==3)
	movlw	03h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_button),w
	iorwf	(_button+1),w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2355
u2690:
	line	131
	
l2353:	
;lift.c: 130: {
;lift.c: 131: operation(1,0,1,0,0,0,0,1);
	movlw	low(01h)
	movwf	(?_operation)
	movlw	high(01h)
	movwf	((?_operation))+1
	movlw	low(0)
	movwf	0+(?_operation)+02h
	movlw	high(0)
	movwf	(0+(?_operation)+02h)+1
	movlw	low(01h)
	movwf	0+(?_operation)+04h
	movlw	high(01h)
	movwf	(0+(?_operation)+04h)+1
	movlw	low(0)
	movwf	0+(?_operation)+06h
	movlw	high(0)
	movwf	(0+(?_operation)+06h)+1
	movlw	low(0)
	movwf	0+(?_operation)+08h
	movlw	high(0)
	movwf	(0+(?_operation)+08h)+1
	movlw	low(0)
	movwf	0+(?_operation)+0Ah
	movlw	high(0)
	movwf	(0+(?_operation)+0Ah)+1
	movlw	low(0)
	movwf	0+(?_operation)+0Ch
	movlw	high(0)
	movwf	(0+(?_operation)+0Ch)+1
	movlw	low(01h)
	movwf	0+(?_operation)+0Eh
	movlw	high(01h)
	movwf	(0+(?_operation)+0Eh)+1
	fcall	_operation
	goto	l2355
	line	132
	
l1054:	
	line	133
	
l2355:	
;lift.c: 132: }
;lift.c: 133: if(button==4)
	movlw	04h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_button),w
	iorwf	(_button+1),w
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2329
u2700:
	line	135
	
l2357:	
;lift.c: 134: {
;lift.c: 135: operation(1,0,1,0,1,0,0,0);
	movlw	low(01h)
	movwf	(?_operation)
	movlw	high(01h)
	movwf	((?_operation))+1
	movlw	low(0)
	movwf	0+(?_operation)+02h
	movlw	high(0)
	movwf	(0+(?_operation)+02h)+1
	movlw	low(01h)
	movwf	0+(?_operation)+04h
	movlw	high(01h)
	movwf	(0+(?_operation)+04h)+1
	movlw	low(0)
	movwf	0+(?_operation)+06h
	movlw	high(0)
	movwf	(0+(?_operation)+06h)+1
	movlw	low(01h)
	movwf	0+(?_operation)+08h
	movlw	high(01h)
	movwf	(0+(?_operation)+08h)+1
	movlw	low(0)
	movwf	0+(?_operation)+0Ah
	movlw	high(0)
	movwf	(0+(?_operation)+0Ah)+1
	movlw	low(0)
	movwf	0+(?_operation)+0Ch
	movlw	high(0)
	movwf	(0+(?_operation)+0Ch)+1
	movlw	low(0)
	movwf	0+(?_operation)+0Eh
	movlw	high(0)
	movwf	(0+(?_operation)+0Eh)+1
	fcall	_operation
	goto	l2329
	line	136
	
l1055:	
	goto	l2329
	line	137
	
l1056:	
	line	102
	goto	l2329
	
l1057:	
	line	138
	
l1058:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_operation
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _operation *****************
;; Defined at:
;;		line 35 in file "D:\Embedded\pic\code\software\lift\lift.c"
;; Parameters:    Size  Location     Type
;;  GFF             2    0[BANK0 ] int 
;;  GFR             2    2[BANK0 ] int 
;;  FFF             2    4[BANK0 ] int 
;;  FFR             2    6[BANK0 ] int 
;;  SFF             2    8[BANK0 ] int 
;;  SFR             2   10[BANK0 ] int 
;;  TFF             2   12[BANK0 ] int 
;;  TFR             2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2    0[BANK0 ] int 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0      16       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0      16       0       0       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text88
	file	"D:\Embedded\pic\code\software\lift\lift.c"
	line	35
	global	__size_of_operation
	__size_of_operation	equ	__end_of_operation-_operation
	
_operation:	
	opt	stack 7
; Regs used in _operation: [wreg]
	line	52
	
l2279:	
;lift.c: 52: if(RC4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(60/8),(60)&7
	goto	u2431
	goto	u2430
u2431:
	goto	l2287
u2430:
	line	54
	
l2281:	
;lift.c: 53: {
;lift.c: 54: PORTD=seg[0];
	movf	(_seg),w
	movwf	(8)	;volatile
	line	55
	
l2283:	
;lift.c: 55: RB0=GFF;
	btfsc	(operation@GFF),0
	goto	u2441
	goto	u2440
	
u2441:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u2454
u2440:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u2454:
	line	56
	
l2285:	
;lift.c: 56: RB1=GFR;
	btfsc	(operation@GFR),0
	goto	u2461
	goto	u2460
	
u2461:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u2474
u2460:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u2474:
	line	57
;lift.c: 57: floor=1;
	movlw	low(01h)
	movwf	(_floor)
	movlw	high(01h)
	movwf	((_floor))+1
	goto	l2287
	line	58
	
l1037:	
	line	59
	
l2287:	
;lift.c: 58: }
;lift.c: 59: if(RC5==1)
	btfss	(61/8),(61)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l2295
u2480:
	line	61
	
l2289:	
;lift.c: 60: {
;lift.c: 61: PORTD=seg[1];
	movf	0+(_seg)+01h,w
	movwf	(8)	;volatile
	line	62
	
l2291:	
;lift.c: 62: RB0=FFF;
	btfsc	(operation@FFF),0
	goto	u2491
	goto	u2490
	
u2491:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u2504
u2490:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u2504:
	line	63
	
l2293:	
;lift.c: 63: RB1=FFR;
	btfsc	(operation@FFR),0
	goto	u2511
	goto	u2510
	
u2511:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u2524
u2510:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u2524:
	line	64
;lift.c: 64: floor=2;
	movlw	low(02h)
	movwf	(_floor)
	movlw	high(02h)
	movwf	((_floor))+1
	goto	l2295
	line	65
	
l1038:	
	line	66
	
l2295:	
;lift.c: 65: }
;lift.c: 66: if(RC6==1)
	btfss	(62/8),(62)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2303
u2530:
	line	68
	
l2297:	
;lift.c: 67: {
;lift.c: 68: PORTD=seg[2];
	movf	0+(_seg)+02h,w
	movwf	(8)	;volatile
	line	69
	
l2299:	
;lift.c: 69: RB0=SFF;
	btfsc	(operation@SFF),0
	goto	u2541
	goto	u2540
	
u2541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u2554
u2540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u2554:
	line	70
	
l2301:	
;lift.c: 70: RB1=SFR;
	btfsc	(operation@SFR),0
	goto	u2561
	goto	u2560
	
u2561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u2574
u2560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u2574:
	line	71
;lift.c: 71: floor=3;
	movlw	low(03h)
	movwf	(_floor)
	movlw	high(03h)
	movwf	((_floor))+1
	goto	l2303
	line	72
	
l1039:	
	line	73
	
l2303:	
;lift.c: 72: }
;lift.c: 73: if(RC7==1)
	btfss	(63/8),(63)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l1041
u2580:
	line	75
	
l2305:	
;lift.c: 74: {
;lift.c: 75: PORTD=seg[3];
	movf	0+(_seg)+03h,w
	movwf	(8)	;volatile
	line	76
	
l2307:	
;lift.c: 76: RB0=TFF;
	btfsc	(operation@TFF),0
	goto	u2591
	goto	u2590
	
u2591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	goto	u2604
u2590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
u2604:
	line	77
	
l2309:	
;lift.c: 77: RB1=TFR;
	btfsc	(operation@TFR),0
	goto	u2611
	goto	u2610
	
u2611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u2624
u2610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u2624:
	line	78
;lift.c: 78: floor=4;
	movlw	low(04h)
	movwf	(_floor)
	movlw	high(04h)
	movwf	((_floor))+1
	goto	l1041
	line	79
	
l1040:	
	line	80
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_operation
	__end_of_operation:
;; =============== function _operation ends ============

	signat	_operation,32890
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
