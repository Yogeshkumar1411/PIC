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
	global	main@F1609
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\segment\clock\clock.c"
	line	15

;initializer for main@F1609
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
	global	_PORTC
_PORTC	set	7
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
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	file	"clock.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\segment\clock\clock.c"
main@F1609:
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
main@a:	; 2 bytes @ 0x14
	ds	2
	global	main@c
main@c:	; 2 bytes @ 0x16
	ds	2
	global	main@e
main@e:	; 2 bytes @ 0x18
	ds	2
	global	main@f
main@f:	; 2 bytes @ 0x1A
	ds	2
	global	main@b
main@b:	; 2 bytes @ 0x1C
	ds	2
	global	main@d
main@d:	; 2 bytes @ 0x1E
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x20
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x22
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
;; (0) _main                                                42    42      0    1007
;;                                              9 COMMON     4     4      0
;;                                              0 BANK0     36    36      0
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
;;DATA                 0      0      46      12        0.0%
;;ABS                  0      0      45       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
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
;;		line 13 in file "D:\Embedded\pic\code\software\segment\clock\clock.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  seg            20    0[BANK0 ] unsigned char [20]
;;  i               2   34[BANK0 ] int 
;;  l               2   32[BANK0 ] int 
;;  d               2   30[BANK0 ] int 
;;  b               2   28[BANK0 ] int 
;;  f               2   26[BANK0 ] int 
;;  e               2   24[BANK0 ] int 
;;  c               2   22[BANK0 ] int 
;;  a               2   20[BANK0 ] int 
;;  k               2    0        int 
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
;;      Locals:         0      36       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      36       0       0       0
;;Total ram usage:       40 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\segment\clock\clock.c"
	line	13
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	15
	
l2403:	
;clock.c: 14: int i,a,b,c,d,e,f,l,k;
;clock.c: 15: char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	movlw	(main@seg)&0ffh
	movwf	fsr0
	movlw	low(main@F1609)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	20
	movwf	((??_main+0)+0+2)
u2380:
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
	goto	u2380
	line	16
	
l2405:	
;clock.c: 16: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	17
	
l2407:	
;clock.c: 17: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	18
	
l2409:	
;clock.c: 18: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	19
	
l2411:	
;clock.c: 19: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	goto	l2413
	line	20
;clock.c: 20: while(1)
	
l1029:	
	line	23
	
l2413:	
;clock.c: 21: {
;clock.c: 23: for(i=0;i<=1440;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2415:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05A1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2395
	movlw	low(05A1h)
	subwf	(main@i),w
u2395:

	skipc
	goto	u2391
	goto	u2390
u2391:
	goto	l2419
u2390:
	goto	l2413
	
l2417:	
	goto	l2413
	line	24
	
l1030:	
	line	25
	
l2419:	
;clock.c: 24: {
;clock.c: 25: a=i/600;
	movlw	low(0258h)
	movwf	(?___awdiv)
	movlw	high(0258h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@i),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@a+1)
	addwf	(main@a+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@a)
	addwf	(main@a)

	line	26
;clock.c: 26: b=i%600;
	movlw	low(0258h)
	movwf	(?___awmod)
	movlw	high(0258h)
	movwf	((?___awmod))+1
	movf	(main@i+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@i),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@b+1)
	addwf	(main@b+1)
	movf	(0+(?___awmod)),w
	clrf	(main@b)
	addwf	(main@b)

	line	27
;clock.c: 27: c=b/60;
	movlw	low(03Ch)
	movwf	(?___awdiv)
	movlw	high(03Ch)
	movwf	((?___awdiv))+1
	movf	(main@b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@c+1)
	addwf	(main@c+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@c)
	addwf	(main@c)

	line	28
;clock.c: 28: d=b%60;
	movlw	low(03Ch)
	movwf	(?___awmod)
	movlw	high(03Ch)
	movwf	((?___awmod))+1
	movf	(main@b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@d+1)
	addwf	(main@d+1)
	movf	(0+(?___awmod)),w
	clrf	(main@d)
	addwf	(main@d)

	line	29
;clock.c: 29: e=d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@e+1)
	addwf	(main@e+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@e)
	addwf	(main@e)

	line	30
;clock.c: 30: f=d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@f+1)
	addwf	(main@f+1)
	movf	(0+(?___awmod)),w
	clrf	(main@f)
	addwf	(main@f)

	line	33
	
l2421:	
;clock.c: 33: for(l=0;l<50;l++)
	clrf	(main@l)
	clrf	(main@l+1)
	
l2423:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(032h)
	subwf	(main@l),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l1032
u2400:
	goto	l2469
	
l2425:	
	goto	l2469
	line	34
	
l1032:	
	line	35
;clock.c: 34: {
;clock.c: 35: RD0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(64/8),(64)&7
	line	36
;clock.c: 36: RD1=1;
	bsf	(65/8),(65)&7
	line	37
;clock.c: 37: RD2=1;
	bsf	(66/8),(66)&7
	line	38
;clock.c: 38: RD3=1;
	bsf	(67/8),(67)&7
	line	39
	
l2427:	
;clock.c: 39: PORTC=seg[a];
	movf	(main@a),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	40
	
l2429:	
;clock.c: 40: _delay((unsigned long)((12)*(6000000/4000.0)));
	opt asmopt_off
movlw	24
movwf	((??_main+0)+0+1),f
	movlw	95
movwf	((??_main+0)+0),f
u2437:
	decfsz	((??_main+0)+0),f
	goto	u2437
	decfsz	((??_main+0)+0+1),f
	goto	u2437
opt asmopt_on

	line	41
	
l2431:	
;clock.c: 41: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	42
	
l2433:	
;clock.c: 42: RD1=0;
	bcf	(65/8),(65)&7
	line	43
	
l2435:	
;clock.c: 43: RD2=1;
	bsf	(66/8),(66)&7
	line	44
	
l2437:	
;clock.c: 44: RD3=1;
	bsf	(67/8),(67)&7
	line	45
	
l2439:	
;clock.c: 45: PORTC=seg[c];
	movf	(main@c),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	46
;clock.c: 46: _delay((unsigned long)((12)*(6000000/4000.0)));
	opt asmopt_off
movlw	24
movwf	((??_main+0)+0+1),f
	movlw	95
movwf	((??_main+0)+0),f
u2447:
	decfsz	((??_main+0)+0),f
	goto	u2447
	decfsz	((??_main+0)+0+1),f
	goto	u2447
opt asmopt_on

	line	47
	
l2441:	
;clock.c: 47: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	48
	
l2443:	
;clock.c: 48: RD1=1;
	bsf	(65/8),(65)&7
	line	49
	
l2445:	
;clock.c: 49: RD2=0;
	bcf	(66/8),(66)&7
	line	50
	
l2447:	
;clock.c: 50: RD3=1;
	bsf	(67/8),(67)&7
	line	51
	
l2449:	
;clock.c: 51: PORTC=seg[e];
	movf	(main@e),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	52
	
l2451:	
;clock.c: 52: _delay((unsigned long)((12)*(6000000/4000.0)));
	opt asmopt_off
movlw	24
movwf	((??_main+0)+0+1),f
	movlw	95
movwf	((??_main+0)+0),f
u2457:
	decfsz	((??_main+0)+0),f
	goto	u2457
	decfsz	((??_main+0)+0+1),f
	goto	u2457
opt asmopt_on

	line	55
	
l2453:	
;clock.c: 55: RD0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(64/8),(64)&7
	line	56
	
l2455:	
;clock.c: 56: RD1=1;
	bsf	(65/8),(65)&7
	line	57
	
l2457:	
;clock.c: 57: RD2=1;
	bsf	(66/8),(66)&7
	line	58
	
l2459:	
;clock.c: 58: RD3=0;
	bcf	(67/8),(67)&7
	line	59
;clock.c: 59: PORTC=seg[f];
	movf	(main@f),w
	addlw	main@seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(7)	;volatile
	line	60
	
l2461:	
;clock.c: 60: _delay((unsigned long)((12)*(6000000/4000.0)));
	opt asmopt_off
movlw	24
movwf	((??_main+0)+0+1),f
	movlw	95
movwf	((??_main+0)+0),f
u2467:
	decfsz	((??_main+0)+0),f
	goto	u2467
	decfsz	((??_main+0)+0+1),f
	goto	u2467
opt asmopt_on

	line	61
	
l2463:	
;clock.c: 61: _delay((unsigned long)((32)*(6000000/4000.0)));
	opt asmopt_off
movlw	63
movwf	((??_main+0)+0+1),f
	movlw	85
movwf	((??_main+0)+0),f
u2477:
	decfsz	((??_main+0)+0),f
	goto	u2477
	decfsz	((??_main+0)+0+1),f
	goto	u2477
opt asmopt_on

	line	33
	
l2465:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(01h)
	addwf	(main@l+1),f
	
l2467:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(032h)
	subwf	(main@l),w
u2415:

	skipc
	goto	u2411
	goto	u2410
u2411:
	goto	l1032
u2410:
	goto	l2469
	
l1033:	
	line	23
	
l2469:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2471:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05A1h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2425
	movlw	low(05A1h)
	subwf	(main@i),w
u2425:

	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2419
u2420:
	goto	l2413
	
l1031:	
	goto	l2413
	line	66
	
l1034:	
	line	20
	goto	l2413
	
l1035:	
	line	68
	
l1036:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	___awmod
psect	text83,local,class=CODE,delta=2
global __ptext83
__ptext83:

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
psect	text83
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2369:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2291
	goto	u2290
u2291:
	goto	l2373
u2290:
	line	10
	
l2371:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2373
	line	12
	
l1253:	
	line	13
	
l2373:	
	btfss	(___awmod@divisor+1),7
	goto	u2301
	goto	u2300
u2301:
	goto	l2377
u2300:
	line	14
	
l2375:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2377
	
l1254:	
	line	15
	
l2377:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2311
	goto	u2310
u2311:
	goto	l2395
u2310:
	line	16
	
l2379:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2385
	
l1257:	
	line	18
	
l2381:	
	movlw	01h
	
u2325:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2325
	line	19
	
l2383:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2385
	line	20
	
l1256:	
	line	17
	
l2385:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l2381
u2330:
	goto	l2387
	
l1258:	
	goto	l2387
	line	21
	
l1259:	
	line	22
	
l2387:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2345
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2345:
	skipc
	goto	u2341
	goto	u2340
u2341:
	goto	l2391
u2340:
	line	23
	
l2389:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2391
	
l1260:	
	line	24
	
l2391:	
	movlw	01h
	
u2355:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2355
	line	25
	
l2393:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2361
	goto	u2360
u2361:
	goto	l2387
u2360:
	goto	l2395
	
l1261:	
	goto	l2395
	line	26
	
l1255:	
	line	27
	
l2395:	
	movf	(___awmod@sign),w
	skipz
	goto	u2370
	goto	l2399
u2370:
	line	28
	
l2397:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2399
	
l1262:	
	line	29
	
l2399:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1263
	
l2401:	
	line	30
	
l1263:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text84,local,class=CODE,delta=2
global __ptext84
__ptext84:

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
psect	text84
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2329:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2191
	goto	u2190
u2191:
	goto	l2333
u2190:
	line	11
	
l2331:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2333
	line	13
	
l1185:	
	line	14
	
l2333:	
	btfss	(___awdiv@dividend+1),7
	goto	u2201
	goto	u2200
u2201:
	goto	l2339
u2200:
	line	15
	
l2335:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2337:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2339
	line	17
	
l1186:	
	line	18
	
l2339:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2341:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2211
	goto	u2210
u2211:
	goto	l2361
u2210:
	line	20
	
l2343:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2349
	
l1189:	
	line	22
	
l2345:	
	movlw	01h
	
u2225:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2225
	line	23
	
l2347:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2349
	line	24
	
l1188:	
	line	21
	
l2349:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l2345
u2230:
	goto	l2351
	
l1190:	
	goto	l2351
	line	25
	
l1191:	
	line	26
	
l2351:	
	movlw	01h
	
u2245:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2245
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2255
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2255:
	skipc
	goto	u2251
	goto	u2250
u2251:
	goto	l2357
u2250:
	line	28
	
l2353:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2355:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2357
	line	30
	
l1192:	
	line	31
	
l2357:	
	movlw	01h
	
u2265:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2265
	line	32
	
l2359:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2271
	goto	u2270
u2271:
	goto	l2351
u2270:
	goto	l2361
	
l1193:	
	goto	l2361
	line	33
	
l1187:	
	line	34
	
l2361:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2280
	goto	l2365
u2280:
	line	35
	
l2363:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2365
	
l1194:	
	line	36
	
l2365:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1195
	
l2367:	
	line	37
	
l1195:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
