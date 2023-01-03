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
	FNCALL	_main,_div
	FNCALL	_main,_mod
	FNCALL	_main,_delay
	FNCALL	_mod,___awmod
	FNCALL	_div,___awdiv
	FNROOT	_main
	global	main@F1614
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
	line	31

;initializer for main@F1614
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
	file	"add_sub.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
main@F1614:
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
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
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
	global	?_mod
?_mod:	; 2 bytes @ 0x7
	global	mod@y
mod@y:	; 2 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_mod
??_mod:	; 0 bytes @ 0x9
	global	?_div
?_div:	; 2 bytes @ 0x9
	global	div@x
div@x:	; 2 bytes @ 0x9
	global	mod@n
mod@n:	; 2 bytes @ 0x9
	ds	2
	global	??_div
??_div:	; 0 bytes @ 0xB
	global	div@m
div@m:	; 2 bytes @ 0xB
	ds	2
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??_main
??_main:	; 0 bytes @ 0x0
	ds	4
	global	main@seg
main@seg:	; 20 bytes @ 0x4
	ds	20
	global	main@count1
main@count1:	; 2 bytes @ 0x18
	ds	2
	global	main@m1
main@m1:	; 2 bytes @ 0x1A
	ds	2
	global	main@n1
main@n1:	; 2 bytes @ 0x1C
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x1E
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x20
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x22
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80     36      56
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_mod	int  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?_div	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_div
;;   _mod->___awmod
;;   _div->___awdiv
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
;; (0) _main                                                36    36      0    1124
;;                                              0 BANK0     36    36      0
;;                                _div
;;                                _mod
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _mod                                                  4     2      2     341
;;                                              7 COMMON     4     2      2
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _div                                                  4     2      2     345
;;                                              9 COMMON     4     2      2
;;                            ___awdiv
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _div
;;     ___awdiv
;;   _mod
;;     ___awmod
;;   _delay
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
;;DATA                 0      0      47      12        0.0%
;;ABS                  0      0      45       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     24      38       5       70.0%
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
;;		line 29 in file "D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seg            20    4[BANK0 ] unsigned char [20]
;;  j               2   34[BANK0 ] int 
;;  i               2   32[BANK0 ] int 
;;  count           2   30[BANK0 ] int 
;;  n1              2   28[BANK0 ] int 
;;  m1              2   26[BANK0 ] int 
;;  count1          2   24[BANK0 ] int 
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
;;      Locals:         0      32       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      36       0       0       0
;;Total ram usage:       36 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_div
;;		_mod
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
	line	29
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	30
	
l2403:	
;add_sub.c: 30: int i=0,j=0,count=0,count1=0,m1,n1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	clrf	(main@j)
	clrf	(main@j+1)
	clrf	(main@count)
	clrf	(main@count+1)
	clrf	(main@count1)
	clrf	(main@count1+1)
	line	31
	
l2405:	
;add_sub.c: 31: char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	movlw	(main@seg)&0ffh
	movwf	fsr0
	movlw	low(main@F1614)
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
	line	32
	
l2407:	
;add_sub.c: 32: PORTC=0X00;
	clrf	(7)	;volatile
	line	33
	
l2409:	
;add_sub.c: 33: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	34
	
l2411:	
;add_sub.c: 34: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	35
	
l2413:	
;add_sub.c: 35: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	36
	
l2415:	
;add_sub.c: 36: TRISA=0X1F;
	movlw	(01Fh)
	movwf	(133)^080h	;volatile
	line	37
	
l2417:	
;add_sub.c: 37: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	38
	
l2419:	
;add_sub.c: 38: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	39
	
l2421:	
;add_sub.c: 39: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2423
	line	40
;add_sub.c: 40: while(1)
	
l1039:	
	line	42
	
l2423:	
;add_sub.c: 41: {
;add_sub.c: 42: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2471
	goto	u2470
u2471:
	goto	l1040
u2470:
	line	44
	
l2425:	
;add_sub.c: 43: {
;add_sub.c: 44: i+=i+1;
	movf	(main@i),w
	addlw	low(01h)
	movwf	(??_main+0)+0
	movf	(main@i+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movf	(??_main+0)+1,w
	addwf	(main@i+1),f
	line	45
;add_sub.c: 45: while(RA0==1);
	goto	l1041
	
l1042:	
	
l1041:	
	btfsc	(40/8),(40)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l1041
u2480:
	goto	l1040
	
l1043:	
	line	46
	
l1040:	
	line	47
;add_sub.c: 46: }
;add_sub.c: 47: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2491
	goto	u2490
u2491:
	goto	l1044
u2490:
	line	49
	
l2427:	
;add_sub.c: 48: {
;add_sub.c: 49: j+=j+1;
	movf	(main@j),w
	addlw	low(01h)
	movwf	(??_main+0)+0
	movf	(main@j+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movf	(??_main+0)+1,w
	addwf	(main@j+1),f
	line	50
;add_sub.c: 50: while(RA1==1);
	goto	l1045
	
l1046:	
	
l1045:	
	btfsc	(41/8),(41)&7
	goto	u2501
	goto	u2500
u2501:
	goto	l1045
u2500:
	goto	l1044
	
l1047:	
	line	51
	
l1044:	
	line	52
;add_sub.c: 51: }
;add_sub.c: 52: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l2433
u2510:
	line	55
	
l2429:	
;add_sub.c: 53: {
;add_sub.c: 55: count=i+j;
	movf	(main@j),w
	addwf	(main@i),w
	movwf	(main@count)
	movf	(main@j+1),w
	skipnc
	incf	(main@j+1),w
	addwf	(main@i+1),w
	movwf	1+(main@count)
	line	56
;add_sub.c: 56: while(RA2==1);
	goto	l1049
	
l1050:	
	
l1049:	
	btfsc	(42/8),(42)&7
	goto	u2521
	goto	u2520
u2521:
	goto	l1049
u2520:
	goto	l2431
	
l1051:	
	line	58
	
l2431:	
;add_sub.c: 58: m1=div(count);
	movf	(main@count+1),w
	clrf	(?_div+1)
	addwf	(?_div+1)
	movf	(main@count),w
	clrf	(?_div)
	addwf	(?_div)

	fcall	_div
	movf	(1+(?_div)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@m1+1)
	addwf	(main@m1+1)
	movf	(0+(?_div)),w
	clrf	(main@m1)
	addwf	(main@m1)

	line	59
;add_sub.c: 59: n1=mod(count);
	movf	(main@count+1),w
	clrf	(?_mod+1)
	addwf	(?_mod+1)
	movf	(main@count),w
	clrf	(?_mod)
	addwf	(?_mod)

	fcall	_mod
	movf	(1+(?_mod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@n1+1)
	addwf	(main@n1+1)
	movf	(0+(?_mod)),w
	clrf	(main@n1)
	addwf	(main@n1)

	goto	l2433
	line	61
	
l1048:	
	line	64
	
l2433:	
;add_sub.c: 61: }
;add_sub.c: 64: RD0=0;
	bcf	(64/8),(64)&7
	line	65
	
l2435:	
;add_sub.c: 65: RD1=1;
	bsf	(65/8),(65)&7
	line	66
	
l2437:	
;add_sub.c: 66: PORTC=seg[m1];
	movf	(main@m1),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	67
	
l2439:	
;add_sub.c: 67: delay(2900);
	movlw	low(0B54h)
	movwf	(?_delay)
	movlw	high(0B54h)
	movwf	((?_delay))+1
	fcall	_delay
	line	68
	
l2441:	
;add_sub.c: 68: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	69
	
l2443:	
;add_sub.c: 69: RD1=0;
	bcf	(65/8),(65)&7
	line	70
;add_sub.c: 70: PORTC=seg[n1];
	movf	(main@n1),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	71
	
l2445:	
;add_sub.c: 71: delay(2900);
	movlw	low(0B54h)
	movwf	(?_delay)
	movlw	high(0B54h)
	movwf	((?_delay))+1
	fcall	_delay
	line	74
	
l2447:	
;add_sub.c: 74: if(RA3==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7
	goto	u2531
	goto	u2530
u2531:
	goto	l2453
u2530:
	line	77
	
l2449:	
;add_sub.c: 76: {
;add_sub.c: 77: count1=i-j;
	comf	(main@j),w
	movwf	(??_main+0)+0
	comf	(main@j+1),w
	movwf	((??_main+0)+0+1)
	incf	(??_main+0)+0,f
	skipnz
	incf	((??_main+0)+0+1),f
	movf	(main@i),w
	addwf	0+(??_main+0)+0,w
	movwf	(main@count1)
	movf	(main@i+1),w
	skipnc
	incf	(main@i+1),w
	addwf	1+(??_main+0)+0,w
	movwf	1+(main@count1)
	line	78
;add_sub.c: 78: while(RA3==1);
	goto	l1053
	
l1054:	
	
l1053:	
	btfsc	(43/8),(43)&7
	goto	u2541
	goto	u2540
u2541:
	goto	l1053
u2540:
	goto	l2451
	
l1055:	
	line	79
	
l2451:	
;add_sub.c: 79: m1=div(count1);
	movf	(main@count1+1),w
	clrf	(?_div+1)
	addwf	(?_div+1)
	movf	(main@count1),w
	clrf	(?_div)
	addwf	(?_div)

	fcall	_div
	movf	(1+(?_div)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@m1+1)
	addwf	(main@m1+1)
	movf	(0+(?_div)),w
	clrf	(main@m1)
	addwf	(main@m1)

	line	80
;add_sub.c: 80: n1=mod(count1);
	movf	(main@count1+1),w
	clrf	(?_mod+1)
	addwf	(?_mod+1)
	movf	(main@count1),w
	clrf	(?_mod)
	addwf	(?_mod)

	fcall	_mod
	movf	(1+(?_mod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@n1+1)
	addwf	(main@n1+1)
	movf	(0+(?_mod)),w
	clrf	(main@n1)
	addwf	(main@n1)

	goto	l2453
	line	81
	
l1052:	
	line	83
	
l2453:	
;add_sub.c: 81: }
;add_sub.c: 83: RD0=0;
	bcf	(64/8),(64)&7
	line	84
	
l2455:	
;add_sub.c: 84: RD1=1;
	bsf	(65/8),(65)&7
	line	85
	
l2457:	
;add_sub.c: 85: PORTC=seg[m1];
	movf	(main@m1),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	86
	
l2459:	
;add_sub.c: 86: delay(2900);
	movlw	low(0B54h)
	movwf	(?_delay)
	movlw	high(0B54h)
	movwf	((?_delay))+1
	fcall	_delay
	line	87
	
l2461:	
;add_sub.c: 87: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	88
	
l2463:	
;add_sub.c: 88: RD1=0;
	bcf	(65/8),(65)&7
	line	89
;add_sub.c: 89: PORTC=seg[n1];
	movf	(main@n1),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	90
	
l2465:	
;add_sub.c: 90: delay(2900);
	movlw	low(0B54h)
	movwf	(?_delay)
	movlw	high(0B54h)
	movwf	((?_delay))+1
	fcall	_delay
	line	92
	
l2467:	
;add_sub.c: 92: if(RA4==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(44/8),(44)&7
	goto	u2551
	goto	u2550
u2551:
	goto	l2423
u2550:
	line	94
	
l2469:	
;add_sub.c: 93: {
;add_sub.c: 94: i=0;
	clrf	(main@i)
	clrf	(main@i+1)
	line	95
;add_sub.c: 95: j=0;
	clrf	(main@j)
	clrf	(main@j+1)
	line	96
;add_sub.c: 96: count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	97
;add_sub.c: 97: while(RA4==1);
	goto	l1057
	
l1058:	
	
l1057:	
	btfsc	(44/8),(44)&7
	goto	u2561
	goto	u2560
u2561:
	goto	l1057
u2560:
	goto	l2423
	
l1059:	
	goto	l2423
	line	98
	
l1056:	
	goto	l2423
	line	99
	
l1060:	
	line	40
	goto	l2423
	
l1061:	
	line	100
	
l1062:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_mod
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:

;; *************** function _mod *****************
;; Defined at:
;;		line 23 in file "D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
;; Parameters:    Size  Location     Type
;;  y               2    7[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  n               2    9[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    7[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awmod
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text119
	file	"D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
	line	23
	global	__size_of_mod
	__size_of_mod	equ	__end_of_mod-_mod
	
_mod:	
	opt	stack 6
; Regs used in _mod: [wreg+status,2+status,0+pclath+cstack]
	line	25
	
l2397:	
;add_sub.c: 24: int n;
;add_sub.c: 25: n=y%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(mod@y+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(mod@y),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	clrf	(mod@n+1)
	addwf	(mod@n+1)
	movf	(0+(?___awmod)),w
	clrf	(mod@n)
	addwf	(mod@n)

	line	26
	
l2399:	
;add_sub.c: 26: return n;
	movf	(mod@n+1),w
	clrf	(?_mod+1)
	addwf	(?_mod+1)
	movf	(mod@n),w
	clrf	(?_mod)
	addwf	(?_mod)

	goto	l1034
	
l2401:	
	line	27
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_mod
	__end_of_mod:
;; =============== function _mod ends ============

	signat	_mod,4218
	global	_div
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

;; *************** function _div *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
;; Parameters:    Size  Location     Type
;;  x               2    9[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  m               2   11[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2    9[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text120
	file	"D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
	line	17
	global	__size_of_div
	__size_of_div	equ	__end_of_div-_div
	
_div:	
	opt	stack 6
; Regs used in _div: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2391:	
;add_sub.c: 18: int m;
;add_sub.c: 19: m=x/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(div@x+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(div@x),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	clrf	(div@m+1)
	addwf	(div@m+1)
	movf	(0+(?___awdiv)),w
	clrf	(div@m)
	addwf	(div@m)

	line	20
	
l2393:	
;add_sub.c: 20: return m;
	movf	(div@m+1),w
	clrf	(?_div+1)
	addwf	(?_div+1)
	movf	(div@m),w
	clrf	(?_div)
	addwf	(?_div)

	goto	l1031
	
l2395:	
	line	21
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_div
	__end_of_div:
;; =============== function _div ends ============

	signat	_div,4218
	global	___awmod
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

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
;;		_mod
;; This function uses a non-reentrant model
;;
psect	text121
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2357:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2371
	goto	u2370
u2371:
	goto	l2361
u2370:
	line	10
	
l2359:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2361
	line	12
	
l1279:	
	line	13
	
l2361:	
	btfss	(___awmod@divisor+1),7
	goto	u2381
	goto	u2380
u2381:
	goto	l2365
u2380:
	line	14
	
l2363:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2365
	
l1280:	
	line	15
	
l2365:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2391
	goto	u2390
u2391:
	goto	l2383
u2390:
	line	16
	
l2367:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2373
	
l1283:	
	line	18
	
l2369:	
	movlw	01h
	
u2405:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2405
	line	19
	
l2371:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2373
	line	20
	
l1282:	
	line	17
	
l2373:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2369
u2410:
	goto	l2375
	
l1284:	
	goto	l2375
	line	21
	
l1285:	
	line	22
	
l2375:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2425
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2425:
	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2379
u2420:
	line	23
	
l2377:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2379
	
l1286:	
	line	24
	
l2379:	
	movlw	01h
	
u2435:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2435
	line	25
	
l2381:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2441
	goto	u2440
u2441:
	goto	l2375
u2440:
	goto	l2383
	
l1287:	
	goto	l2383
	line	26
	
l1281:	
	line	27
	
l2383:	
	movf	(___awmod@sign),w
	skipz
	goto	u2450
	goto	l2387
u2450:
	line	28
	
l2385:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2387
	
l1288:	
	line	29
	
l2387:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1289
	
l2389:	
	line	30
	
l1289:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

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
;;		_div
;; This function uses a non-reentrant model
;;
psect	text122
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2317:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2271
	goto	u2270
u2271:
	goto	l2321
u2270:
	line	11
	
l2319:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2321
	line	13
	
l1211:	
	line	14
	
l2321:	
	btfss	(___awdiv@dividend+1),7
	goto	u2281
	goto	u2280
u2281:
	goto	l2327
u2280:
	line	15
	
l2323:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2325:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2327
	line	17
	
l1212:	
	line	18
	
l2327:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2329:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2291
	goto	u2290
u2291:
	goto	l2349
u2290:
	line	20
	
l2331:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2337
	
l1215:	
	line	22
	
l2333:	
	movlw	01h
	
u2305:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2305
	line	23
	
l2335:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2337
	line	24
	
l1214:	
	line	21
	
l2337:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l2333
u2310:
	goto	l2339
	
l1216:	
	goto	l2339
	line	25
	
l1217:	
	line	26
	
l2339:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2325
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2335
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2335:
	skipc
	goto	u2331
	goto	u2330
u2331:
	goto	l2345
u2330:
	line	28
	
l2341:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2343:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2345
	line	30
	
l1218:	
	line	31
	
l2345:	
	movlw	01h
	
u2345:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2345
	line	32
	
l2347:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2351
	goto	u2350
u2351:
	goto	l2339
u2350:
	goto	l2349
	
l1219:	
	goto	l2349
	line	33
	
l1213:	
	line	34
	
l2349:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2360
	goto	l2353
u2360:
	line	35
	
l2351:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2353
	
l1220:	
	line	36
	
l2353:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1221
	
l2355:	
	line	37
	
l1221:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:

;; *************** function _delay *****************
;; Defined at:
;;		line 13 in file "D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] unsigned int 
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
psect	text123
	file	"D:\Embedded\pic\code\software\segment\add_sub\add_sub.c"
	line	13
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	14
	
l2313:	
;add_sub.c: 14: while(a--);
	goto	l2315
	
l1026:	
	goto	l2315
	
l1025:	
	
l2315:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u2265
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u2265:

	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l2315
u2260:
	goto	l1028
	
l1027:	
	line	15
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text124,local,class=CODE,delta=2
global __ptext124
__ptext124:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
