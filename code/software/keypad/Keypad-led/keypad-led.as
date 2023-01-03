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
	global	main@F1600
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\keypad\Keypad-led\keypad-led.c"
	line	14

;initializer for main@F1600
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
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
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
	file	"keypad-led.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\keypad\Keypad-led\keypad-led.c"
main@F1600:
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
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@seg
main@seg:	; 20 bytes @ 0x0
	ds	20
	global	main@a
main@a:	; 10 bytes @ 0x14
	ds	10
	global	main@i
main@i:	; 2 bytes @ 0x1E
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      4       4
;; BANK0           80     32      52
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
;;Main: autosize = 0, tempsize = 4, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                36    36      0     859
;;                                              0 COMMON     4     4      0
;;                                              0 BANK0     32    32      0
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
;;DATA                 0      0      38      12        0.0%
;;ABS                  0      0      38       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       0       2        0.0%
;;BANK0               50     20      34       5       65.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      4       4       1       28.6%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 13 in file "D:\Embedded\pic\code\software\keypad\Keypad-led\keypad-led.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seg            20    0[BANK0 ] unsigned char [20]
;;  a              10   20[BANK0 ] unsigned char [10]
;;  i               2   30[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      32       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      32       0       0       0
;;Total ram usage:       36 bytes
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\keypad\Keypad-led\keypad-led.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 8
; Regs used in _main: [wreg-fsr0h+status,2+status,0]
	line	14
	
l2326:	
;keypad-led.c: 14: char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	movlw	(main@seg)&0ffh
	movwf	fsr0
	movlw	low(main@F1600)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2460:
	movf	(??_main+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_main+0)+0+3)
	incf	(??_main+0)+0,f
	movf	((??_main+0)+0+1),w
	movwf	fsr0
	
	movf	((??_main+0)+0+3),w
	movwf	indf
	incf	((??_main+0)+0+1),f
	decfsz	((??_main+0)+0+2),f
	goto	u2460
	line	16
	
l2328:	
;keypad-led.c: 15: char a[10];
;keypad-led.c: 16: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	17
	
l2330:	
;keypad-led.c: 17: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	18
	
l2332:	
;keypad-led.c: 18: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	19
	
l2334:	
;keypad-led.c: 19: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	20
	
l2336:	
;keypad-led.c: 20: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	21
	
l2338:	
;keypad-led.c: 21: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	22
	
l2340:	
;keypad-led.c: 22: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	23
	
l2342:	
;keypad-led.c: 23: TRISD=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	24
	
l2344:	
;keypad-led.c: 24: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2346
	line	25
;keypad-led.c: 25: while(1)
	
l1027:	
	line	27
	
l2346:	
;keypad-led.c: 26: {
;keypad-led.c: 27: RD3=1;RD4=RD5=RD6=0;
	bsf	(67/8),(67)&7
	
l2348:	
	bcf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	bcf	(68/8),(68)&7
	line	28
	
l2350:	
;keypad-led.c: 28: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l1028
u2470:
	line	30
	
l2352:	
;keypad-led.c: 29: {
;keypad-led.c: 30: PORTA=seg[1];
	movf	0+(main@seg)+01h,w
	movwf	(5)	;volatile
	line	31
	
l2354:	
;keypad-led.c: 31: a[i]=1;
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	32
	
l2356:	
;keypad-led.c: 32: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	33
;keypad-led.c: 33: while(RD0==1);
	goto	l1029
	
l1030:	
	
l1029:	
	btfsc	(64/8),(64)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l1029
u2480:
	goto	l1028
	
l1031:	
	line	34
	
l1028:	
	line	35
;keypad-led.c: 34: }
;keypad-led.c: 35: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1032
u2490:
	line	37
	
l2358:	
;keypad-led.c: 36: {
;keypad-led.c: 37: PORTA=seg[2];
	movf	0+(main@seg)+02h,w
	movwf	(5)	;volatile
	line	38
	
l2360:	
;keypad-led.c: 38: a[i]=2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	39
	
l2362:	
;keypad-led.c: 39: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	40
;keypad-led.c: 40: while(RD1==1);
	goto	l1033
	
l1034:	
	
l1033:	
	btfsc	(65/8),(65)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l1033
u2500:
	goto	l1032
	
l1035:	
	line	41
	
l1032:	
	line	42
;keypad-led.c: 41: }
;keypad-led.c: 42: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l1036
u2510:
	line	44
	
l2364:	
;keypad-led.c: 43: {
;keypad-led.c: 44: PORTA=seg[3];
	movf	0+(main@seg)+03h,w
	movwf	(5)	;volatile
	line	45
	
l2366:	
;keypad-led.c: 45: a[i]=3;
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	46
	
l2368:	
;keypad-led.c: 46: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	47
;keypad-led.c: 47: while(RD2==1);
	goto	l1037
	
l1038:	
	
l1037:	
	btfsc	(66/8),(66)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1037
u2520:
	goto	l1036
	
l1039:	
	line	48
	
l1036:	
	line	51
;keypad-led.c: 48: }
;keypad-led.c: 51: RD4=1;RD3=RD5=RD6=0;
	bsf	(68/8),(68)&7
	bcf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	bcf	(67/8),(67)&7
	line	52
;keypad-led.c: 52: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l1040
u2530:
	line	54
	
l2370:	
;keypad-led.c: 53: {
;keypad-led.c: 54: PORTA=seg[4];
	movf	0+(main@seg)+04h,w
	movwf	(5)	;volatile
	line	55
	
l2372:	
;keypad-led.c: 55: a[i]=4;
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	56
	
l2374:	
;keypad-led.c: 56: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	57
;keypad-led.c: 57: while(RD0==1);
	goto	l1041
	
l1042:	
	
l1041:	
	btfsc	(64/8),(64)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1041
u2540:
	goto	l1040
	
l1043:	
	line	58
	
l1040:	
	line	59
;keypad-led.c: 58: }
;keypad-led.c: 59: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l1044
u2550:
	line	61
	
l2376:	
;keypad-led.c: 60: {
;keypad-led.c: 61: PORTA=seg[5];
	movf	0+(main@seg)+05h,w
	movwf	(5)	;volatile
	line	62
	
l2378:	
;keypad-led.c: 62: a[i]=5;
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	63
	
l2380:	
;keypad-led.c: 63: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	64
;keypad-led.c: 64: while(RD1==1);
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(65/8),(65)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1045
u2560:
	goto	l1044
	
l1047:	
	line	65
	
l1044:	
	line	66
;keypad-led.c: 65: }
;keypad-led.c: 66: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2571
	goto	u2570
u2571:
	goto	l1048
u2570:
	line	68
	
l2382:	
;keypad-led.c: 67: {
;keypad-led.c: 68: PORTA=seg[6];
	movf	0+(main@seg)+06h,w
	movwf	(5)	;volatile
	line	69
	
l2384:	
;keypad-led.c: 69: a[i]=6;
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	70
	
l2386:	
;keypad-led.c: 70: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	71
;keypad-led.c: 71: while(RD2==1);
	goto	l1049
	
l1050:	
	
l1049:	
	btfsc	(66/8),(66)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l1049
u2580:
	goto	l1048
	
l1051:	
	line	72
	
l1048:	
	line	74
;keypad-led.c: 72: }
;keypad-led.c: 74: RD5=1;RD3=RD4=RD6=0;
	bsf	(69/8),(69)&7
	bcf	(70/8),(70)&7
	bcf	(68/8),(68)&7
	bcf	(67/8),(67)&7
	line	75
;keypad-led.c: 75: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l1052
u2590:
	line	77
	
l2388:	
;keypad-led.c: 76: {
;keypad-led.c: 77: PORTA=seg[7];
	movf	0+(main@seg)+07h,w
	movwf	(5)	;volatile
	line	78
	
l2390:	
;keypad-led.c: 78: a[i]=7;
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	79
	
l2392:	
;keypad-led.c: 79: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	80
;keypad-led.c: 80: while(RD0==1);
	goto	l1053
	
l1054:	
	
l1053:	
	btfsc	(64/8),(64)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l1053
u2600:
	goto	l1052
	
l1055:	
	line	81
	
l1052:	
	line	82
;keypad-led.c: 81: }
;keypad-led.c: 82: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1056
u2610:
	line	84
	
l2394:	
;keypad-led.c: 83: {
;keypad-led.c: 84: PORTA=seg[8];
	movf	0+(main@seg)+08h,w
	movwf	(5)	;volatile
	line	85
	
l2396:	
;keypad-led.c: 85: a[i]=8;
	movlw	(08h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	86
	
l2398:	
;keypad-led.c: 86: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	87
;keypad-led.c: 87: while(RD1==1);
	goto	l1057
	
l1058:	
	
l1057:	
	btfsc	(65/8),(65)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l1057
u2620:
	goto	l1056
	
l1059:	
	line	88
	
l1056:	
	line	89
;keypad-led.c: 88: }
;keypad-led.c: 89: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1060
u2630:
	line	91
	
l2400:	
;keypad-led.c: 90: {
;keypad-led.c: 91: PORTA=seg[9];
	movf	0+(main@seg)+09h,w
	movwf	(5)	;volatile
	line	92
	
l2402:	
;keypad-led.c: 92: a[i]=9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	93
	
l2404:	
;keypad-led.c: 93: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	94
;keypad-led.c: 94: while(RD2==1);
	goto	l1061
	
l1062:	
	
l1061:	
	btfsc	(66/8),(66)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1061
u2640:
	goto	l1060
	
l1063:	
	line	95
	
l1060:	
	line	96
;keypad-led.c: 95: }
;keypad-led.c: 96: RD6=1;RD3=RD4=RD5=0;
	bsf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	bcf	(68/8),(68)&7
	bcf	(67/8),(67)&7
	line	97
;keypad-led.c: 97: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1064
u2650:
	line	99
	
l2406:	
;keypad-led.c: 98: {
;keypad-led.c: 99: if(a[0]==1&&a[1]==2&&a[2]==3)
	movf	(main@a),w
	xorlw	01h
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l2416
u2660:
	
l2408:	
	movf	0+(main@a)+01h,w
	xorlw	02h
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l2416
u2670:
	
l2410:	
	movf	0+(main@a)+02h,w
	xorlw	03h
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l2416
u2680:
	line	101
	
l2412:	
;keypad-led.c: 100: {
;keypad-led.c: 101: PORTC=0X00;
	clrf	(7)	;volatile
	line	102
	
l2414:	
;keypad-led.c: 102: RC0=1;
	bsf	(56/8),(56)&7
	goto	l2416
	line	103
	
l1065:	
	line	104
	
l2416:	
;keypad-led.c: 103: }
;keypad-led.c: 104: if(a[0]==4&&a[1]==5&&a[2]==6)
	movf	(main@a),w
	xorlw	04h
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l2426
u2690:
	
l2418:	
	movf	0+(main@a)+01h,w
	xorlw	05h
	skipz
	goto	u2701
	goto	u2700
u2701:
	goto	l2426
u2700:
	
l2420:	
	movf	0+(main@a)+02h,w
	xorlw	06h
	skipz
	goto	u2711
	goto	u2710
u2711:
	goto	l2426
u2710:
	line	106
	
l2422:	
;keypad-led.c: 105: {
;keypad-led.c: 106: PORTC=0X00;
	clrf	(7)	;volatile
	line	107
	
l2424:	
;keypad-led.c: 107: RC1=1;
	bsf	(57/8),(57)&7
	goto	l2426
	line	108
	
l1066:	
	line	109
	
l2426:	
;keypad-led.c: 108: }
;keypad-led.c: 109: if(a[0]==7&&a[1]==8&&a[2]==9)
	movf	(main@a),w
	xorlw	07h
	skipz
	goto	u2721
	goto	u2720
u2721:
	goto	l1068
u2720:
	
l2428:	
	movf	0+(main@a)+01h,w
	xorlw	08h
	skipz
	goto	u2731
	goto	u2730
u2731:
	goto	l1068
u2730:
	
l2430:	
	movf	0+(main@a)+02h,w
	xorlw	09h
	skipz
	goto	u2741
	goto	u2740
u2741:
	goto	l1068
u2740:
	line	111
	
l2432:	
;keypad-led.c: 110: {
;keypad-led.c: 111: PORTC=0X00;
	clrf	(7)	;volatile
	line	112
	
l2434:	
;keypad-led.c: 112: RC2=1;
	bsf	(58/8),(58)&7
	goto	l1068
	line	113
	
l1067:	
;keypad-led.c: 113: }while(RD0==1);
	goto	l1068
	
l1069:	
	
l1068:	
	btfsc	(64/8),(64)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1068
u2750:
	goto	l1064
	
l1070:	
	line	114
	
l1064:	
	line	115
;keypad-led.c: 114: }
;keypad-led.c: 115: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l2346
u2760:
	line	117
	
l2436:	
;keypad-led.c: 116: {
;keypad-led.c: 117: i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	118
;keypad-led.c: 118: PORTC=0X00;
	clrf	(7)	;volatile
	line	119
	
l2438:	
;keypad-led.c: 119: PORTA=seg[0];
	movf	(main@seg),w
	movwf	(5)	;volatile
	line	120
;keypad-led.c: 120: while(RD2==1);
	goto	l1072
	
l1073:	
	
l1072:	
	btfsc	(66/8),(66)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l1072
u2770:
	goto	l2346
	
l1074:	
	goto	l2346
	line	121
	
l1071:	
	goto	l2346
	line	122
	
l1075:	
	line	25
	goto	l2346
	
l1076:	
	line	123
	
l1077:	
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
