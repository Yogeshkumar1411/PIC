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
	FNCALL	_main,_motor
	FNROOT	_main
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\lift2\lift2.c"
	line	5

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
	global	_i
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
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
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
	file	"lift2.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_i:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\lift2\lift2.c"
_seg:
       ds      20

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
	global	??_motor
??_motor:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	??_main
??_main:	; 0 bytes @ 0x0
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_motor
?_motor:	; 0 bytes @ 0x0
	global	motor@a
motor@a:	; 2 bytes @ 0x0
	ds	2
	global	motor@b
motor@b:	; 2 bytes @ 0x2
	ds	2
	global	motor@c
motor@c:	; 2 bytes @ 0x4
	ds	2
	global	motor@d
motor@d:	; 2 bytes @ 0x6
	ds	2
	global	motor@e
motor@e:	; 2 bytes @ 0x8
	ds	2
	global	motor@f
motor@f:	; 2 bytes @ 0xA
	ds	2
	global	motor@g
motor@g:	; 2 bytes @ 0xC
	ds	2
	global	motor@h
motor@h:	; 2 bytes @ 0xE
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 2, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      0       0
;; BANK0           80     16      38
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
;;   _main->_motor
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
;;                              _motor
;; ---------------------------------------------------------------------------------
;; (1) _motor                                               16     0     16     176
;;                                              0 BANK0     16     0     16
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _motor
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
;;DATA                 0      0      27      12        0.0%
;;ABS                  0      0      26       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     10      26       5       47.5%
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
;;		line 48 in file "D:\Embedded\pic\code\software\lift2\lift2.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
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
;;		_motor
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\lift2\lift2.c"
	line	48
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	49
	
l2266:	
;lift2.c: 49: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	50
	
l2268:	
;lift2.c: 50: TRISA=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	51
	
l2270:	
;lift2.c: 51: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	52
	
l2272:	
;lift2.c: 52: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	53
	
l2274:	
;lift2.c: 53: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	54
	
l2276:	
;lift2.c: 54: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	55
	
l2278:	
;lift2.c: 55: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	56
;lift2.c: 56: TRISB=0X1E;
	movlw	(01Eh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	57
	
l2280:	
;lift2.c: 57: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	58
	
l2282:	
;lift2.c: 58: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2284
	line	59
;lift2.c: 59: while(1)
	
l1048:	
	line	61
	
l2284:	
;lift2.c: 60: {
;lift2.c: 61: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1049
u2700:
	line	63
	
l2286:	
;lift2.c: 62: {
;lift2.c: 63: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	64
	
l2288:	
;lift2.c: 64: PORTD=seg[i];
	movf	(_i),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	65
	
l2290:	
;lift2.c: 65: motor(0,0,1,0,1,0,1,0);
	movlw	low(0)
	movwf	(?_motor)
	movlw	high(0)
	movwf	((?_motor))+1
	movlw	low(0)
	movwf	0+(?_motor)+02h
	movlw	high(0)
	movwf	(0+(?_motor)+02h)+1
	movlw	low(01h)
	movwf	0+(?_motor)+04h
	movlw	high(01h)
	movwf	(0+(?_motor)+04h)+1
	movlw	low(0)
	movwf	0+(?_motor)+06h
	movlw	high(0)
	movwf	(0+(?_motor)+06h)+1
	movlw	low(01h)
	movwf	0+(?_motor)+08h
	movlw	high(01h)
	movwf	(0+(?_motor)+08h)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Ah
	movlw	high(0)
	movwf	(0+(?_motor)+0Ah)+1
	movlw	low(01h)
	movwf	0+(?_motor)+0Ch
	movlw	high(01h)
	movwf	(0+(?_motor)+0Ch)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Eh
	movlw	high(0)
	movwf	(0+(?_motor)+0Eh)+1
	fcall	_motor
	line	66
;lift2.c: 66: while(RA0==1);
	goto	l1050
	
l1051:	
	
l1050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1050
u2710:
	goto	l1049
	
l1052:	
	line	67
	
l1049:	
	line	68
;lift2.c: 67: }
;lift2.c: 68: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1053
u2720:
	line	70
	
l2292:	
;lift2.c: 69: {
;lift2.c: 70: i=1;
	movlw	low(01h)
	movwf	(_i)
	movlw	high(01h)
	movwf	((_i))+1
	line	71
	
l2294:	
;lift2.c: 71: PORTD=seg[i];
	movf	(_i),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	72
	
l2296:	
;lift2.c: 72: motor(0,1,0,0,1,0,1,0);
	movlw	low(0)
	movwf	(?_motor)
	movlw	high(0)
	movwf	((?_motor))+1
	movlw	low(01h)
	movwf	0+(?_motor)+02h
	movlw	high(01h)
	movwf	(0+(?_motor)+02h)+1
	movlw	low(0)
	movwf	0+(?_motor)+04h
	movlw	high(0)
	movwf	(0+(?_motor)+04h)+1
	movlw	low(0)
	movwf	0+(?_motor)+06h
	movlw	high(0)
	movwf	(0+(?_motor)+06h)+1
	movlw	low(01h)
	movwf	0+(?_motor)+08h
	movlw	high(01h)
	movwf	(0+(?_motor)+08h)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Ah
	movlw	high(0)
	movwf	(0+(?_motor)+0Ah)+1
	movlw	low(01h)
	movwf	0+(?_motor)+0Ch
	movlw	high(01h)
	movwf	(0+(?_motor)+0Ch)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Eh
	movlw	high(0)
	movwf	(0+(?_motor)+0Eh)+1
	fcall	_motor
	line	73
;lift2.c: 73: while(RA1==1);
	goto	l1054
	
l1055:	
	
l1054:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1054
u2730:
	goto	l1053
	
l1056:	
	line	74
	
l1053:	
	line	75
;lift2.c: 74: }
;lift2.c: 75: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l1057
u2740:
	line	77
	
l2298:	
;lift2.c: 76: {
;lift2.c: 77: i=2;
	movlw	low(02h)
	movwf	(_i)
	movlw	high(02h)
	movwf	((_i))+1
	line	78
	
l2300:	
;lift2.c: 78: PORTD=seg[i];
	movf	(_i),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	79
	
l2302:	
;lift2.c: 79: motor(0,1,0,1,0,0,1,0);
	movlw	low(0)
	movwf	(?_motor)
	movlw	high(0)
	movwf	((?_motor))+1
	movlw	low(01h)
	movwf	0+(?_motor)+02h
	movlw	high(01h)
	movwf	(0+(?_motor)+02h)+1
	movlw	low(0)
	movwf	0+(?_motor)+04h
	movlw	high(0)
	movwf	(0+(?_motor)+04h)+1
	movlw	low(01h)
	movwf	0+(?_motor)+06h
	movlw	high(01h)
	movwf	(0+(?_motor)+06h)+1
	movlw	low(0)
	movwf	0+(?_motor)+08h
	movlw	high(0)
	movwf	(0+(?_motor)+08h)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Ah
	movlw	high(0)
	movwf	(0+(?_motor)+0Ah)+1
	movlw	low(01h)
	movwf	0+(?_motor)+0Ch
	movlw	high(01h)
	movwf	(0+(?_motor)+0Ch)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Eh
	movlw	high(0)
	movwf	(0+(?_motor)+0Eh)+1
	fcall	_motor
	line	80
;lift2.c: 80: while(RA2==1);
	goto	l1058
	
l1059:	
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1058
u2750:
	goto	l1057
	
l1060:	
	line	81
	
l1057:	
	line	82
;lift2.c: 81: }
;lift2.c: 82: if(RA3==1)
	btfss	(43/8),(43)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l2284
u2760:
	line	84
	
l2304:	
;lift2.c: 83: {
;lift2.c: 84: i=3;
	movlw	low(03h)
	movwf	(_i)
	movlw	high(03h)
	movwf	((_i))+1
	line	85
	
l2306:	
;lift2.c: 85: PORTD=seg[i];
	movf	(_i),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	line	86
	
l2308:	
;lift2.c: 86: motor(0,1,0,1,0,1,0,0);
	movlw	low(0)
	movwf	(?_motor)
	movlw	high(0)
	movwf	((?_motor))+1
	movlw	low(01h)
	movwf	0+(?_motor)+02h
	movlw	high(01h)
	movwf	(0+(?_motor)+02h)+1
	movlw	low(0)
	movwf	0+(?_motor)+04h
	movlw	high(0)
	movwf	(0+(?_motor)+04h)+1
	movlw	low(01h)
	movwf	0+(?_motor)+06h
	movlw	high(01h)
	movwf	(0+(?_motor)+06h)+1
	movlw	low(0)
	movwf	0+(?_motor)+08h
	movlw	high(0)
	movwf	(0+(?_motor)+08h)+1
	movlw	low(01h)
	movwf	0+(?_motor)+0Ah
	movlw	high(01h)
	movwf	(0+(?_motor)+0Ah)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Ch
	movlw	high(0)
	movwf	(0+(?_motor)+0Ch)+1
	movlw	low(0)
	movwf	0+(?_motor)+0Eh
	movlw	high(0)
	movwf	(0+(?_motor)+0Eh)+1
	fcall	_motor
	line	87
;lift2.c: 87: while(RA3==1);
	goto	l1062
	
l1063:	
	
l1062:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(43/8),(43)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l1062
u2770:
	goto	l2284
	
l1064:	
	goto	l2284
	line	88
	
l1061:	
	goto	l2284
	line	89
	
l1065:	
	line	59
	goto	l2284
	
l1066:	
	line	90
	
l1067:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_motor
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function _motor *****************
;; Defined at:
;;		line 18 in file "D:\Embedded\pic\code\software\lift2\lift2.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[BANK0 ] int 
;;  b               2    2[BANK0 ] int 
;;  c               2    4[BANK0 ] int 
;;  d               2    6[BANK0 ] int 
;;  e               2    8[BANK0 ] int 
;;  f               2   10[BANK0 ] int 
;;  g               2   12[BANK0 ] int 
;;  h               2   14[BANK0 ] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
psect	text85
	file	"D:\Embedded\pic\code\software\lift2\lift2.c"
	line	18
	global	__size_of_motor
	__size_of_motor	equ	__end_of_motor-_motor
	
_motor:	
	opt	stack 7
; Regs used in _motor: []
	line	20
	
l2256:	
;lift2.c: 20: if(RB1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l1029
u2460:
	line	22
	
l2258:	
;lift2.c: 21: {
;lift2.c: 22: RC0=a;
	btfsc	(motor@a),0
	goto	u2471
	goto	u2470
	
u2471:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u2484
u2470:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u2484:
	line	23
;lift2.c: 23: RC1=b;
	btfsc	(motor@b),0
	goto	u2491
	goto	u2490
	
u2491:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u2504
u2490:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u2504:
	line	24
;lift2.c: 24: while(RB1==1);
	goto	l1030
	
l1031:	
	
l1030:	
	btfsc	(49/8),(49)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1030
u2510:
	goto	l1029
	
l1032:	
	line	25
	
l1029:	
	line	26
;lift2.c: 25: }
;lift2.c: 26: if(RB2==1)
	btfss	(50/8),(50)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1033
u2520:
	line	28
	
l2260:	
;lift2.c: 27: {
;lift2.c: 28: RC0=c;
	btfsc	(motor@c),0
	goto	u2531
	goto	u2530
	
u2531:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u2544
u2530:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u2544:
	line	29
;lift2.c: 29: RC1=d;
	btfsc	(motor@d),0
	goto	u2551
	goto	u2550
	
u2551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u2564
u2550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u2564:
	line	30
;lift2.c: 30: while(RB2==1);
	goto	l1034
	
l1035:	
	
l1034:	
	btfsc	(50/8),(50)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1034
u2570:
	goto	l1033
	
l1036:	
	line	31
	
l1033:	
	line	32
;lift2.c: 31: }
;lift2.c: 32: if(RB3==1)
	btfss	(51/8),(51)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l1037
u2580:
	line	34
	
l2262:	
;lift2.c: 33: {
;lift2.c: 34: RC0=e;
	btfsc	(motor@e),0
	goto	u2591
	goto	u2590
	
u2591:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u2604
u2590:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u2604:
	line	35
;lift2.c: 35: RC1=f;
	btfsc	(motor@f),0
	goto	u2611
	goto	u2610
	
u2611:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u2624
u2610:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u2624:
	line	36
;lift2.c: 36: while(RB3==1);
	goto	l1038
	
l1039:	
	
l1038:	
	btfsc	(51/8),(51)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1038
u2630:
	goto	l1037
	
l1040:	
	line	37
	
l1037:	
	line	38
;lift2.c: 37: }
;lift2.c: 38: if(RB4==1)
	btfss	(52/8),(52)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1045
u2640:
	line	40
	
l2264:	
;lift2.c: 39: {
;lift2.c: 40: RC0=g;
	btfsc	(motor@g),0
	goto	u2651
	goto	u2650
	
u2651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u2664
u2650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u2664:
	line	41
;lift2.c: 41: RC1=h;
	btfsc	(motor@h),0
	goto	u2671
	goto	u2670
	
u2671:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u2684
u2670:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u2684:
	line	42
;lift2.c: 42: while(RB4==1);
	goto	l1042
	
l1043:	
	
l1042:	
	btfsc	(52/8),(52)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1042
u2690:
	goto	l1045
	
l1044:	
	goto	l1045
	line	43
	
l1041:	
	line	44
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of_motor
	__end_of_motor:
;; =============== function _motor ends ============

	signat	_motor,32888
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
