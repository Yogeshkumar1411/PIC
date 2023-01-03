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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNROOT	_main
	global	main@F1602
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\keypad\Addition\addition.c"
	line	18

;initializer for main@F1602
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
	global	_PORTE
_PORTE	set	9
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
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_TRISB
_TRISB	set	134
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"addition.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\keypad\Addition\addition.c"
main@F1602:
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
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x9
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
	global	main@sum
main@sum:	; 2 bytes @ 0x1E
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x20
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x22
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x24
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x26
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     40      60
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->___awdiv
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
;; (0) _main                                                44    44      0    2218
;;                                              9 COMMON     4     4      0
;;                                              0 BANK0     40    40      0
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   ___awdiv
;;   ___awmod
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
;;DATA                 0      0      4A      12        0.0%
;;ABS                  0      0      49       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50     28      3C       5       75.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\keypad\Addition\addition.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seg            20    0[BANK0 ] unsigned char [20]
;;  a              10   20[BANK0 ] unsigned char [10]
;;  c               2   38[BANK0 ] int 
;;  b               2   36[BANK0 ] int 
;;  i               2   34[BANK0 ] int 
;;  j               2   32[BANK0 ] int 
;;  sum             2   30[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      40       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      40       0       0       0
;;Total ram usage:       44 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\keypad\Addition\addition.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	18
	
l2627:	
;addition.c: 18: char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	movlw	(main@seg)&0ffh
	movwf	fsr0
	movlw	low(main@F1602)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2610:
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
	goto	u2610
	line	20
	
l2629:	
;addition.c: 19: char a[10];
;addition.c: 20: int sum=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@sum)
	clrf	(main@sum+1)
	line	21
	
l2631:	
;addition.c: 21: int b,c,i=0,j;
	clrf	(main@i)
	clrf	(main@i+1)
	line	22
	
l2633:	
;addition.c: 22: PORTB=0X00;
	clrf	(6)	;volatile
	line	23
	
l2635:	
;addition.c: 23: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	24
	
l2637:	
;addition.c: 24: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	25
	
l2639:	
;addition.c: 25: TRISD=0X0F;
	movlw	(0Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(136)^080h	;volatile
	line	26
	
l2641:	
;addition.c: 26: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	27
	
l2643:	
;addition.c: 27: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	28
	
l2645:	
;addition.c: 28: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	29
	
l2647:	
;addition.c: 29: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2649
	line	30
;addition.c: 30: while(1)
	
l1035:	
	line	32
	
l2649:	
;addition.c: 31: {
;addition.c: 32: RD4=1;RD5=RD6=RD7=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	
l2651:	
	bcf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	line	33
	
l2653:	
;addition.c: 33: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l1036
u2620:
	line	35
	
l2655:	
;addition.c: 34: {
;addition.c: 35: b=1/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	36
	
l2657:	
;addition.c: 36: c=1%10;
	movlw	low(01h)
	movwf	(main@c)
	movlw	high(01h)
	movwf	((main@c))+1
	line	37
	
l2659:	
;addition.c: 37: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2661:	
	bcf	(73/8),(73)&7
	line	38
	
l2663:	
;addition.c: 38: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	39
	
l2665:	
;addition.c: 39: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2887:
	decfsz	((??_main+0)+0),f
	goto	u2887
	decfsz	((??_main+0)+0+1),f
	goto	u2887
	decfsz	((??_main+0)+0+2),f
	goto	u2887
	clrwdt
opt asmopt_on

	line	40
	
l2667:	
;addition.c: 40: RE1=0;RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	
l2669:	
	bsf	(72/8),(72)&7
	line	41
	
l2671:	
;addition.c: 41: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	42
	
l2673:	
;addition.c: 42: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2897:
	decfsz	((??_main+0)+0),f
	goto	u2897
	decfsz	((??_main+0)+0+1),f
	goto	u2897
	decfsz	((??_main+0)+0+2),f
	goto	u2897
	clrwdt
opt asmopt_on

	line	43
	
l2675:	
;addition.c: 43: a[i]=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	44
	
l2677:	
;addition.c: 44: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	45
;addition.c: 45: while(RD0==1);
	goto	l1037
	
l1038:	
	
l1037:	
	btfsc	(64/8),(64)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1037
u2630:
	goto	l1036
	
l1039:	
	line	46
	
l1036:	
	line	47
;addition.c: 46: }
;addition.c: 47: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1040
u2640:
	line	49
	
l2679:	
;addition.c: 48: {
;addition.c: 49: b=2/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	50
	
l2681:	
;addition.c: 50: c=2%10;
	movlw	low(02h)
	movwf	(main@c)
	movlw	high(02h)
	movwf	((main@c))+1
	line	51
	
l2683:	
;addition.c: 51: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2685:	
	bcf	(73/8),(73)&7
	line	52
	
l2687:	
;addition.c: 52: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	53
	
l2689:	
;addition.c: 53: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2907:
	decfsz	((??_main+0)+0),f
	goto	u2907
	decfsz	((??_main+0)+0+1),f
	goto	u2907
	decfsz	((??_main+0)+0+2),f
	goto	u2907
	clrwdt
opt asmopt_on

	line	54
	
l2691:	
;addition.c: 54: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2693:	
	bsf	(73/8),(73)&7
	line	55
	
l2695:	
;addition.c: 55: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	56
	
l2697:	
;addition.c: 56: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2917:
	decfsz	((??_main+0)+0),f
	goto	u2917
	decfsz	((??_main+0)+0+1),f
	goto	u2917
	decfsz	((??_main+0)+0+2),f
	goto	u2917
	clrwdt
opt asmopt_on

	line	57
	
l2699:	
;addition.c: 57: a[i]=2;
	movlw	(02h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	58
	
l2701:	
;addition.c: 58: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	59
;addition.c: 59: while(RD1==1);
	goto	l1041
	
l1042:	
	
l1041:	
	btfsc	(65/8),(65)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1041
u2650:
	goto	l1040
	
l1043:	
	line	60
	
l1040:	
	line	61
;addition.c: 60: }
;addition.c: 61: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l1044
u2660:
	line	63
	
l2703:	
;addition.c: 62: {
;addition.c: 63: b=3/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	64
	
l2705:	
;addition.c: 64: c=3%10;
	movlw	low(03h)
	movwf	(main@c)
	movlw	high(03h)
	movwf	((main@c))+1
	line	65
	
l2707:	
;addition.c: 65: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2709:	
	bcf	(73/8),(73)&7
	line	66
	
l2711:	
;addition.c: 66: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	67
	
l2713:	
;addition.c: 67: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2927:
	decfsz	((??_main+0)+0),f
	goto	u2927
	decfsz	((??_main+0)+0+1),f
	goto	u2927
	decfsz	((??_main+0)+0+2),f
	goto	u2927
	clrwdt
opt asmopt_on

	line	68
	
l2715:	
;addition.c: 68: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2717:	
	bsf	(73/8),(73)&7
	line	69
	
l2719:	
;addition.c: 69: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	70
	
l2721:	
;addition.c: 70: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2937:
	decfsz	((??_main+0)+0),f
	goto	u2937
	decfsz	((??_main+0)+0+1),f
	goto	u2937
	decfsz	((??_main+0)+0+2),f
	goto	u2937
	clrwdt
opt asmopt_on

	line	71
	
l2723:	
;addition.c: 71: a[i]=3;
	movlw	(03h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	72
	
l2725:	
;addition.c: 72: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	73
;addition.c: 73: while(RD2==1);
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(66/8),(66)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1045
u2670:
	goto	l1044
	
l1047:	
	line	74
	
l1044:	
	line	76
;addition.c: 74: }
;addition.c: 76: if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1048
u2680:
	line	78
	
l2727:	
;addition.c: 77: {
;addition.c: 78: b=4/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	79
	
l2729:	
;addition.c: 79: c=4%10;
	movlw	low(04h)
	movwf	(main@c)
	movlw	high(04h)
	movwf	((main@c))+1
	line	80
	
l2731:	
;addition.c: 80: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2733:	
	bcf	(73/8),(73)&7
	line	81
	
l2735:	
;addition.c: 81: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	82
	
l2737:	
;addition.c: 82: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2947:
	decfsz	((??_main+0)+0),f
	goto	u2947
	decfsz	((??_main+0)+0+1),f
	goto	u2947
	decfsz	((??_main+0)+0+2),f
	goto	u2947
	clrwdt
opt asmopt_on

	line	83
	
l2739:	
;addition.c: 83: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2741:	
	bsf	(73/8),(73)&7
	line	84
	
l2743:	
;addition.c: 84: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	85
	
l2745:	
;addition.c: 85: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2957:
	decfsz	((??_main+0)+0),f
	goto	u2957
	decfsz	((??_main+0)+0+1),f
	goto	u2957
	decfsz	((??_main+0)+0+2),f
	goto	u2957
	clrwdt
opt asmopt_on

	line	86
	
l2747:	
;addition.c: 86: a[i]=4;
	movlw	(04h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	87
	
l2749:	
;addition.c: 87: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	88
;addition.c: 88: while(RD3==1);
	goto	l1049
	
l1050:	
	
l1049:	
	btfsc	(67/8),(67)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1049
u2690:
	goto	l1048
	
l1051:	
	line	89
	
l1048:	
	line	91
;addition.c: 89: }
;addition.c: 91: RD5=1;RD4=RD6=RD7=0;
	bsf	(69/8),(69)&7
	bcf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(68/8),(68)&7
	line	92
;addition.c: 92: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1052
u2700:
	line	94
	
l2751:	
;addition.c: 93: {
;addition.c: 94: b=5/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	95
	
l2753:	
;addition.c: 95: c=5%10;
	movlw	low(05h)
	movwf	(main@c)
	movlw	high(05h)
	movwf	((main@c))+1
	line	96
	
l2755:	
;addition.c: 96: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2757:	
	bcf	(73/8),(73)&7
	line	97
	
l2759:	
;addition.c: 97: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	98
	
l2761:	
;addition.c: 98: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2967:
	decfsz	((??_main+0)+0),f
	goto	u2967
	decfsz	((??_main+0)+0+1),f
	goto	u2967
	decfsz	((??_main+0)+0+2),f
	goto	u2967
	clrwdt
opt asmopt_on

	line	99
	
l2763:	
;addition.c: 99: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2765:	
	bsf	(73/8),(73)&7
	line	100
	
l2767:	
;addition.c: 100: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	101
	
l2769:	
;addition.c: 101: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2977:
	decfsz	((??_main+0)+0),f
	goto	u2977
	decfsz	((??_main+0)+0+1),f
	goto	u2977
	decfsz	((??_main+0)+0+2),f
	goto	u2977
	clrwdt
opt asmopt_on

	line	102
	
l2771:	
;addition.c: 102: a[i]=5;
	movlw	(05h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	103
	
l2773:	
;addition.c: 103: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	104
;addition.c: 104: while(RD0==1);
	goto	l1053
	
l1054:	
	
l1053:	
	btfsc	(64/8),(64)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1053
u2710:
	goto	l1052
	
l1055:	
	line	105
	
l1052:	
	line	106
;addition.c: 105: }
;addition.c: 106: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1056
u2720:
	line	108
	
l2775:	
;addition.c: 107: {
;addition.c: 108: b=6/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	109
	
l2777:	
;addition.c: 109: c=6%10;
	movlw	low(06h)
	movwf	(main@c)
	movlw	high(06h)
	movwf	((main@c))+1
	line	110
	
l2779:	
;addition.c: 110: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2781:	
	bcf	(73/8),(73)&7
	line	111
	
l2783:	
;addition.c: 111: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	112
	
l2785:	
;addition.c: 112: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2987:
	decfsz	((??_main+0)+0),f
	goto	u2987
	decfsz	((??_main+0)+0+1),f
	goto	u2987
	decfsz	((??_main+0)+0+2),f
	goto	u2987
	clrwdt
opt asmopt_on

	line	113
	
l2787:	
;addition.c: 113: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2789:	
	bsf	(73/8),(73)&7
	line	114
	
l2791:	
;addition.c: 114: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	115
	
l2793:	
;addition.c: 115: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u2997:
	decfsz	((??_main+0)+0),f
	goto	u2997
	decfsz	((??_main+0)+0+1),f
	goto	u2997
	decfsz	((??_main+0)+0+2),f
	goto	u2997
	clrwdt
opt asmopt_on

	line	116
	
l2795:	
;addition.c: 116: a[i]=6;
	movlw	(06h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	117
	
l2797:	
;addition.c: 117: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	119
;addition.c: 119: while(RD1==1);
	goto	l1057
	
l1058:	
	
l1057:	
	btfsc	(65/8),(65)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1057
u2730:
	goto	l1056
	
l1059:	
	line	120
	
l1056:	
	line	121
;addition.c: 120: }
;addition.c: 121: if(RD2==1)
	btfss	(66/8),(66)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l1060
u2740:
	line	123
	
l2799:	
;addition.c: 122: {
;addition.c: 123: b=7/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	124
	
l2801:	
;addition.c: 124: c=7%10;
	movlw	low(07h)
	movwf	(main@c)
	movlw	high(07h)
	movwf	((main@c))+1
	line	125
	
l2803:	
;addition.c: 125: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2805:	
	bcf	(73/8),(73)&7
	line	126
	
l2807:	
;addition.c: 126: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	127
	
l2809:	
;addition.c: 127: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3007:
	decfsz	((??_main+0)+0),f
	goto	u3007
	decfsz	((??_main+0)+0+1),f
	goto	u3007
	decfsz	((??_main+0)+0+2),f
	goto	u3007
	clrwdt
opt asmopt_on

	line	128
	
l2811:	
;addition.c: 128: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2813:	
	bsf	(73/8),(73)&7
	line	129
	
l2815:	
;addition.c: 129: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	130
	
l2817:	
;addition.c: 130: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3017:
	decfsz	((??_main+0)+0),f
	goto	u3017
	decfsz	((??_main+0)+0+1),f
	goto	u3017
	decfsz	((??_main+0)+0+2),f
	goto	u3017
	clrwdt
opt asmopt_on

	line	131
	
l2819:	
;addition.c: 131: a[i]=7;
	movlw	(07h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	132
	
l2821:	
;addition.c: 132: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	134
;addition.c: 134: while(RD2==1);
	goto	l1061
	
l1062:	
	
l1061:	
	btfsc	(66/8),(66)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1061
u2750:
	goto	l1060
	
l1063:	
	line	135
	
l1060:	
	line	136
;addition.c: 135: }
;addition.c: 136: if(RD3==1)
	btfss	(67/8),(67)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l1064
u2760:
	line	138
	
l2823:	
;addition.c: 137: {
;addition.c: 138: b=8/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	139
	
l2825:	
;addition.c: 139: c=8%10;
	movlw	low(08h)
	movwf	(main@c)
	movlw	high(08h)
	movwf	((main@c))+1
	line	140
	
l2827:	
;addition.c: 140: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2829:	
	bcf	(73/8),(73)&7
	line	141
	
l2831:	
;addition.c: 141: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	142
	
l2833:	
;addition.c: 142: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3027:
	decfsz	((??_main+0)+0),f
	goto	u3027
	decfsz	((??_main+0)+0+1),f
	goto	u3027
	decfsz	((??_main+0)+0+2),f
	goto	u3027
	clrwdt
opt asmopt_on

	line	143
	
l2835:	
;addition.c: 143: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2837:	
	bsf	(73/8),(73)&7
	line	144
	
l2839:	
;addition.c: 144: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	145
	
l2841:	
;addition.c: 145: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3037:
	decfsz	((??_main+0)+0),f
	goto	u3037
	decfsz	((??_main+0)+0+1),f
	goto	u3037
	decfsz	((??_main+0)+0+2),f
	goto	u3037
	clrwdt
opt asmopt_on

	line	146
	
l2843:	
;addition.c: 146: a[i]=8;
	movlw	(08h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	147
	
l2845:	
;addition.c: 147: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	148
;addition.c: 148: while(RD3==1);
	goto	l1065
	
l1066:	
	
l1065:	
	btfsc	(67/8),(67)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l1065
u2770:
	goto	l1064
	
l1067:	
	line	149
	
l1064:	
	line	153
;addition.c: 149: }
;addition.c: 153: RD6=1;RD4=RD5=RD7=0;
	bsf	(70/8),(70)&7
	bcf	(71/8),(71)&7
	bcf	(69/8),(69)&7
	bcf	(68/8),(68)&7
	line	154
;addition.c: 154: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1068
u2780:
	line	156
	
l2847:	
;addition.c: 155: {
;addition.c: 156: b=9/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	157
	
l2849:	
;addition.c: 157: c=9%10;
	movlw	low(09h)
	movwf	(main@c)
	movlw	high(09h)
	movwf	((main@c))+1
	line	158
	
l2851:	
;addition.c: 158: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2853:	
	bcf	(73/8),(73)&7
	line	159
	
l2855:	
;addition.c: 159: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	160
	
l2857:	
;addition.c: 160: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3047:
	decfsz	((??_main+0)+0),f
	goto	u3047
	decfsz	((??_main+0)+0+1),f
	goto	u3047
	decfsz	((??_main+0)+0+2),f
	goto	u3047
	clrwdt
opt asmopt_on

	line	161
	
l2859:	
;addition.c: 161: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2861:	
	bsf	(73/8),(73)&7
	line	162
	
l2863:	
;addition.c: 162: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	163
	
l2865:	
;addition.c: 163: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3057:
	decfsz	((??_main+0)+0),f
	goto	u3057
	decfsz	((??_main+0)+0+1),f
	goto	u3057
	decfsz	((??_main+0)+0+2),f
	goto	u3057
	clrwdt
opt asmopt_on

	line	164
	
l2867:	
;addition.c: 164: a[i]=9;
	movlw	(09h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	165
	
l2869:	
;addition.c: 165: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	167
;addition.c: 167: while(RD0==1);
	goto	l1069
	
l1070:	
	
l1069:	
	btfsc	(64/8),(64)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l1069
u2790:
	goto	l1068
	
l1071:	
	line	168
	
l1068:	
	line	169
;addition.c: 168: }
;addition.c: 169: if(RD1==1)
	btfss	(65/8),(65)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1072
u2800:
	line	171
	
l2871:	
;addition.c: 170: {
;addition.c: 171: b=0/10;
	clrf	(main@b)
	clrf	(main@b+1)
	line	172
;addition.c: 172: c=0%10;
	clrf	(main@c)
	clrf	(main@c+1)
	line	173
	
l2873:	
;addition.c: 173: RE0=1;RE1=0;
	bsf	(72/8),(72)&7
	
l2875:	
	bcf	(73/8),(73)&7
	line	174
	
l2877:	
;addition.c: 174: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	175
	
l2879:	
;addition.c: 175: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3067:
	decfsz	((??_main+0)+0),f
	goto	u3067
	decfsz	((??_main+0)+0+1),f
	goto	u3067
	decfsz	((??_main+0)+0+2),f
	goto	u3067
	clrwdt
opt asmopt_on

	line	176
	
l2881:	
;addition.c: 176: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2883:	
	bsf	(73/8),(73)&7
	line	177
	
l2885:	
;addition.c: 177: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	178
	
l2887:	
;addition.c: 178: _delay((unsigned long)((250)*(4000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	68
movwf	((??_main+0)+0+1),f
	movlw	169
movwf	((??_main+0)+0),f
u3077:
	decfsz	((??_main+0)+0),f
	goto	u3077
	decfsz	((??_main+0)+0+1),f
	goto	u3077
	decfsz	((??_main+0)+0+2),f
	goto	u3077
	clrwdt
opt asmopt_on

	line	179
	
l2889:	
;addition.c: 179: a[i]=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	180
	
l2891:	
;addition.c: 180: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	182
;addition.c: 182: while(RD1==1);
	goto	l1073
	
l1074:	
	
l1073:	
	btfsc	(65/8),(65)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l1073
u2810:
	goto	l1072
	
l1075:	
	line	183
	
l1072:	
	line	202
;addition.c: 183: }
;addition.c: 202: RD7=1;RD4=RD5=RD6=0;
	bsf	(71/8),(71)&7
	bcf	(70/8),(70)&7
	bcf	(69/8),(69)&7
	bcf	(68/8),(68)&7
	line	203
;addition.c: 203: if(RD0==1)
	btfss	(64/8),(64)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l1076
u2820:
	line	205
	
l2893:	
;addition.c: 204: {
;addition.c: 205: sum=a[0]+a[1];
	movf	(main@a),w
	addwf	0+(main@a)+01h,w
	movwf	(main@sum)
	clrf	(main@sum)+1
	rlf	1+(main@sum),f
	
	line	206
	
l2895:	
;addition.c: 206: b=sum/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@sum+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@sum),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@b)
	addwf	(main@b)

	line	207
	
l2897:	
;addition.c: 207: c=sum%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@sum+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@sum),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awmod)),w
	clrf	(main@c)
	addwf	(main@c)

	line	208
	
l2899:	
;addition.c: 208: for(j=0;j<500;j++)
	clrf	(main@j)
	clrf	(main@j+1)
	
l2901:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2835
	movlw	low(01F4h)
	subwf	(main@j),w
u2835:

	skipc
	goto	u2831
	goto	u2830
u2831:
	goto	l1077
u2830:
	goto	l1076
	
l2903:	
	goto	l1076
	line	209
	
l1077:	
	line	210
;addition.c: 209: {
;addition.c: 210: RE0=1;RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	bcf	(73/8),(73)&7
	line	211
	
l2905:	
;addition.c: 211: PORTB=seg[b];
	movf	(main@b),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	212
	
l2907:	
;addition.c: 212: _delay((unsigned long)((60)*(4000000/4000.0)));
	opt asmopt_off
movlw	78
movwf	((??_main+0)+0+1),f
	movlw	235
movwf	((??_main+0)+0),f
u3087:
	decfsz	((??_main+0)+0),f
	goto	u3087
	decfsz	((??_main+0)+0+1),f
	goto	u3087
opt asmopt_on

	line	213
	
l2909:	
;addition.c: 213: RE0=0;RE1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	
l2911:	
	bsf	(73/8),(73)&7
	line	214
	
l2913:	
;addition.c: 214: PORTB=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(6)	;volatile
	line	215
;addition.c: 215: _delay((unsigned long)((60)*(4000000/4000.0)));
	opt asmopt_off
movlw	78
movwf	((??_main+0)+0+1),f
	movlw	235
movwf	((??_main+0)+0),f
u3097:
	decfsz	((??_main+0)+0),f
	goto	u3097
	decfsz	((??_main+0)+0+1),f
	goto	u3097
opt asmopt_on

	line	216
;addition.c: 216: while(RD0==1);
	goto	l1079
	
l1080:	
	
l1079:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(64/8),(64)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l1079
u2840:
	goto	l2915
	
l1081:	
	line	208
	
l2915:	
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l2917:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01F4h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2855
	movlw	low(01F4h)
	subwf	(main@j),w
u2855:

	skipc
	goto	u2851
	goto	u2850
u2851:
	goto	l1077
u2850:
	goto	l1076
	
l1078:	
	line	218
	
l1076:	
	line	234
;addition.c: 217: }
;addition.c: 218: }
;addition.c: 234: if(RD2==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(66/8),(66)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l2649
u2860:
	line	236
	
l2919:	
;addition.c: 235: {
;addition.c: 236: i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	238
;addition.c: 238: while(RD2==1);
	goto	l1083
	
l1084:	
	
l1083:	
	btfsc	(66/8),(66)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l1083
u2870:
	goto	l2649
	
l1085:	
	goto	l2649
	line	239
	
l1082:	
	goto	l2649
	line	240
	
l1086:	
	line	30
	goto	l2649
	
l1087:	
	line	241
	
l1088:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awmod
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text84
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2593:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2521
	goto	u2520
u2521:
	goto	l2597
u2520:
	line	10
	
l2595:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2597
	line	12
	
l1305:	
	line	13
	
l2597:	
	btfss	(___awmod@divisor+1),7
	goto	u2531
	goto	u2530
u2531:
	goto	l2601
u2530:
	line	14
	
l2599:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2601
	
l1306:	
	line	15
	
l2601:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2541
	goto	u2540
u2541:
	goto	l2619
u2540:
	line	16
	
l2603:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2609
	
l1309:	
	line	18
	
l2605:	
	movlw	01h
	
u2555:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2555
	line	19
	
l2607:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2609
	line	20
	
l1308:	
	line	17
	
l2609:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l2605
u2560:
	goto	l2611
	
l1310:	
	goto	l2611
	line	21
	
l1311:	
	line	22
	
l2611:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2575
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2575:
	skipc
	goto	u2571
	goto	u2570
u2571:
	goto	l2615
u2570:
	line	23
	
l2613:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2615
	
l1312:	
	line	24
	
l2615:	
	movlw	01h
	
u2585:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2585
	line	25
	
l2617:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2591
	goto	u2590
u2591:
	goto	l2611
u2590:
	goto	l2619
	
l1313:	
	goto	l2619
	line	26
	
l1307:	
	line	27
	
l2619:	
	movf	(___awmod@sign),w
	skipz
	goto	u2600
	goto	l2623
u2600:
	line	28
	
l2621:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2623
	
l1314:	
	line	29
	
l2623:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1315
	
l2625:	
	line	30
	
l1315:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text85
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2553:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2421
	goto	u2420
u2421:
	goto	l2557
u2420:
	line	11
	
l2555:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2557
	line	13
	
l1237:	
	line	14
	
l2557:	
	btfss	(___awdiv@dividend+1),7
	goto	u2431
	goto	u2430
u2431:
	goto	l2563
u2430:
	line	15
	
l2559:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2561:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2563
	line	17
	
l1238:	
	line	18
	
l2563:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2565:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2441
	goto	u2440
u2441:
	goto	l2585
u2440:
	line	20
	
l2567:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2573
	
l1241:	
	line	22
	
l2569:	
	movlw	01h
	
u2455:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2455
	line	23
	
l2571:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2573
	line	24
	
l1240:	
	line	21
	
l2573:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2461
	goto	u2460
u2461:
	goto	l2569
u2460:
	goto	l2575
	
l1242:	
	goto	l2575
	line	25
	
l1243:	
	line	26
	
l2575:	
	movlw	01h
	
u2475:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2475
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2485
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2485:
	skipc
	goto	u2481
	goto	u2480
u2481:
	goto	l2581
u2480:
	line	28
	
l2577:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2579:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2581
	line	30
	
l1244:	
	line	31
	
l2581:	
	movlw	01h
	
u2495:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2495
	line	32
	
l2583:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2501
	goto	u2500
u2501:
	goto	l2575
u2500:
	goto	l2585
	
l1245:	
	goto	l2585
	line	33
	
l1239:	
	line	34
	
l2585:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2510
	goto	l2589
u2510:
	line	35
	
l2587:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2589
	
l1246:	
	line	36
	
l2589:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1247
	
l2591:	
	line	37
	
l1247:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
