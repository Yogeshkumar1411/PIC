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
	FNCALL	_main,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	main@F1610
	global	main@F1606
	global	main@F1608
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
	line	34

;initializer for main@F1610
	retlw	052h
	retlw	065h
	retlw	064h
	retlw	069h
	retlw	061h
	retlw	06Ch
	retlw	06Ch
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	0
	line	32

;initializer for main@F1606
	retlw	063h
	retlw	061h
	retlw	06Ch
	retlw	06Ch
	retlw	069h
	retlw	06Eh
	retlw	067h
	retlw	0
	line	33

;initializer for main@F1608
	retlw	049h
	retlw	06Eh
	retlw	076h
	retlw	061h
	retlw	06Ch
	retlw	069h
	retlw	064h
	retlw	0
	global	_PORTA
_PORTA	set	5
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
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
	global	_RA5
_RA5	set	45
	global	_RA6
_RA6	set	46
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_TRISA
_TRISA	set	133
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"lcd_mobile.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
	line	34
main@F1610:
       ds      11

psect	dataBANK0
	file	"D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
	line	32
main@F1606:
       ds      8

psect	dataBANK0
	file	"D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
	line	33
main@F1608:
       ds      8

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
	movlw low(__pdataBANK0+27)
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
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	ds	1
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@c
main@c:	; 11 bytes @ 0x0
	ds	11
	global	main@a
main@a:	; 8 bytes @ 0xB
	ds	8
	global	main@b
main@b:	; 8 bytes @ 0x13
	ds	8
	global	main@d
main@d:	; 10 bytes @ 0x1B
	ds	10
	global	main@z
main@z:	; 2 bytes @ 0x25
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x27
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x29
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0x2B
	ds	2
	global	main@i
main@i:	; 2 bytes @ 0x2D
	ds	2
;;Data sizes: Strings 0, constant 0, data 27, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80     47      74
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_cmd
;;   _lcd_cmd->_delay
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
;; (0) _main                                                53    53      0     903
;;                                              5 COMMON     4     4      0
;;                                              0 BANK0     47    47      0
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     1      2      88
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
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
;;DATA                 0      0      55      12        0.0%
;;ABS                  0      0      53       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       2       2        0.0%
;;BANK0               50     2F      4A       5       92.5%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 31 in file "D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  c              11    0[BANK0 ] unsigned char [11]
;;  d              10   27[BANK0 ] unsigned char [10]
;;  b               8   19[BANK0 ] unsigned char [8]
;;  a               8   11[BANK0 ] unsigned char [8]
;;  i               2   45[BANK0 ] int 
;;  l               2   43[BANK0 ] int 
;;  k               2   41[BANK0 ] int 
;;  j               2   39[BANK0 ] int 
;;  z               2   37[BANK0 ] int 
;;  m               2    0        int 
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
;;      Locals:         0      47       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      47       0       0       0
;;Total ram usage:       51 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	32
	
l2395:	
;lcd_mobile.c: 32: char a[]="calling";
	movlw	(main@a)&0ffh
	movwf	fsr0
	movlw	low(main@F1606)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2570:
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
	goto	u2570
	line	33
;lcd_mobile.c: 33: char b[]="Invalid";
	movlw	(main@b)&0ffh
	movwf	fsr0
	movlw	low(main@F1608)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	8
	movwf	((??_main+0)+0+2)
u2580:
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
	goto	u2580
	line	34
;lcd_mobile.c: 34: char c[]="Redialling";
	movlw	(main@c)&0ffh
	movwf	fsr0
	movlw	low(main@F1610)
	movwf	(??_main+0)+0
	movf	fsr0,w
	movwf	((??_main+0)+0+1)
	movlw	11
	movwf	((??_main+0)+0+2)
u2590:
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
	goto	u2590
	line	36
	
l2397:	
;lcd_mobile.c: 35: char d[10];
;lcd_mobile.c: 36: int i,j,k,l,m,z=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@z)
	clrf	(main@z+1)
	line	37
	
l2399:	
;lcd_mobile.c: 37: PORTA=0X00;
	clrf	(5)	;volatile
	line	38
	
l2401:	
;lcd_mobile.c: 38: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	39
	
l2403:	
;lcd_mobile.c: 39: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	40
	
l2405:	
;lcd_mobile.c: 40: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	41
	
l2407:	
;lcd_mobile.c: 41: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	42
	
l2409:	
;lcd_mobile.c: 42: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	43
	
l2411:	
;lcd_mobile.c: 43: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	44
	
l2413:	
;lcd_mobile.c: 44: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	45
	
l2415:	
;lcd_mobile.c: 45: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	46
	
l2417:	
;lcd_mobile.c: 46: lcd_cmd(0,0,0X0F);
	clrf	(?_lcd_cmd)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	47
	
l2419:	
;lcd_mobile.c: 47: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2421
	line	48
;lcd_mobile.c: 48: while(1)
	
l1040:	
	line	50
	
l2421:	
;lcd_mobile.c: 49: {
;lcd_mobile.c: 50: RA3=1;RA4=RA5=RA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	
l2423:	
	bcf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	line	51
	
l2425:	
;lcd_mobile.c: 51: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2601
	goto	u2600
u2601:
	goto	l1041
u2600:
	line	53
	
l2427:	
;lcd_mobile.c: 52: {
;lcd_mobile.c: 53: lcd_cmd(1,0,0X30+1);
	clrf	(?_lcd_cmd)
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	54
	
l2429:	
;lcd_mobile.c: 54: d[i]=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	55
	
l2431:	
;lcd_mobile.c: 55: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	56
;lcd_mobile.c: 56: while(RA0==1);
	goto	l1042
	
l1043:	
	
l1042:	
	btfsc	(40/8),(40)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1042
u2610:
	goto	l1041
	
l1044:	
	line	57
	
l1041:	
	line	58
;lcd_mobile.c: 57: }
;lcd_mobile.c: 58: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l1045
u2620:
	line	60
	
l2433:	
;lcd_mobile.c: 59: {
;lcd_mobile.c: 60: lcd_cmd(1,0,0X30+2);
	clrf	(?_lcd_cmd)
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	61
	
l2435:	
;lcd_mobile.c: 61: d[i]=2;
	movlw	(02h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	62
	
l2437:	
;lcd_mobile.c: 62: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	63
;lcd_mobile.c: 63: while(RA1==1);
	goto	l1046
	
l1047:	
	
l1046:	
	btfsc	(41/8),(41)&7
	goto	u2631
	goto	u2630
u2631:
	goto	l1046
u2630:
	goto	l1045
	
l1048:	
	line	64
	
l1045:	
	line	65
;lcd_mobile.c: 64: }
;lcd_mobile.c: 65: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1049
u2640:
	line	67
	
l2439:	
;lcd_mobile.c: 66: {
;lcd_mobile.c: 67: lcd_cmd(1,0,0X30+3);
	clrf	(?_lcd_cmd)
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	68
	
l2441:	
;lcd_mobile.c: 68: d[i]=3;
	movlw	(03h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	69
	
l2443:	
;lcd_mobile.c: 69: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	70
;lcd_mobile.c: 70: while(RA2==1);
	goto	l1050
	
l1051:	
	
l1050:	
	btfsc	(42/8),(42)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1050
u2650:
	goto	l1049
	
l1052:	
	line	71
	
l1049:	
	line	72
;lcd_mobile.c: 71: }
;lcd_mobile.c: 72: RA4=1;RA3=RA5=RA6=0;
	bsf	(44/8),(44)&7
	bcf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(43/8),(43)&7
	line	73
;lcd_mobile.c: 73: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l1053
u2660:
	line	75
	
l2445:	
;lcd_mobile.c: 74: {
;lcd_mobile.c: 75: lcd_cmd(1,0,0X30+4);
	clrf	(?_lcd_cmd)
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	76
	
l2447:	
;lcd_mobile.c: 76: d[i]=4;
	movlw	(04h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	77
	
l2449:	
;lcd_mobile.c: 77: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	78
;lcd_mobile.c: 78: while(RA0==1);
	goto	l1054
	
l1055:	
	
l1054:	
	btfsc	(40/8),(40)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1054
u2670:
	goto	l1053
	
l1056:	
	line	79
	
l1053:	
	line	80
;lcd_mobile.c: 79: }
;lcd_mobile.c: 80: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1057
u2680:
	line	82
	
l2451:	
;lcd_mobile.c: 81: {
;lcd_mobile.c: 82: lcd_cmd(1,0,0X30+5);
	clrf	(?_lcd_cmd)
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	83
	
l2453:	
;lcd_mobile.c: 83: d[i]=5;
	movlw	(05h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	84
	
l2455:	
;lcd_mobile.c: 84: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	85
;lcd_mobile.c: 85: while(RA1==1);
	goto	l1058
	
l1059:	
	
l1058:	
	btfsc	(41/8),(41)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1058
u2690:
	goto	l1057
	
l1060:	
	line	86
	
l1057:	
	line	87
;lcd_mobile.c: 86: }
;lcd_mobile.c: 87: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1061
u2700:
	line	89
	
l2457:	
;lcd_mobile.c: 88: {
;lcd_mobile.c: 89: lcd_cmd(1,0,0X30+6);
	clrf	(?_lcd_cmd)
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	90
	
l2459:	
;lcd_mobile.c: 90: d[i]=6;
	movlw	(06h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	91
	
l2461:	
;lcd_mobile.c: 91: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	92
;lcd_mobile.c: 92: while(RA2==1);
	goto	l1062
	
l1063:	
	
l1062:	
	btfsc	(42/8),(42)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1062
u2710:
	goto	l1061
	
l1064:	
	line	93
	
l1061:	
	line	94
;lcd_mobile.c: 93: }
;lcd_mobile.c: 94: RA5=1;RA3=RA4=RA6=0;
	bsf	(45/8),(45)&7
	bcf	(46/8),(46)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	line	95
;lcd_mobile.c: 95: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1065
u2720:
	line	97
	
l2463:	
;lcd_mobile.c: 96: {
;lcd_mobile.c: 97: lcd_cmd(1,0,0X30+7);
	clrf	(?_lcd_cmd)
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	98
	
l2465:	
;lcd_mobile.c: 98: d[i]=7;
	movlw	(07h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	99
	
l2467:	
;lcd_mobile.c: 99: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	100
;lcd_mobile.c: 100: while(RA0==1);
	goto	l1066
	
l1067:	
	
l1066:	
	btfsc	(40/8),(40)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1066
u2730:
	goto	l1065
	
l1068:	
	line	101
	
l1065:	
	line	102
;lcd_mobile.c: 101: }
;lcd_mobile.c: 102: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l1069
u2740:
	line	104
	
l2469:	
;lcd_mobile.c: 103: {
;lcd_mobile.c: 104: lcd_cmd(1,0,0X30+8);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	105
	
l2471:	
;lcd_mobile.c: 105: d[i]=8;
	movlw	(08h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	106
	
l2473:	
;lcd_mobile.c: 106: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	107
;lcd_mobile.c: 107: while(RA1==1);
	goto	l1070
	
l1071:	
	
l1070:	
	btfsc	(41/8),(41)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1070
u2750:
	goto	l1069
	
l1072:	
	line	108
	
l1069:	
	line	109
;lcd_mobile.c: 108: }
;lcd_mobile.c: 109: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l1073
u2760:
	line	111
	
l2475:	
;lcd_mobile.c: 110: {
;lcd_mobile.c: 111: lcd_cmd(1,0,0X30+9);
	clrf	(?_lcd_cmd)
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	112
	
l2477:	
;lcd_mobile.c: 112: d[i]=9;
	movlw	(09h)
	movwf	(??_main+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	113
	
l2479:	
;lcd_mobile.c: 113: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	114
;lcd_mobile.c: 114: while(RA2==1);
	goto	l1074
	
l1075:	
	
l1074:	
	btfsc	(42/8),(42)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l1074
u2770:
	goto	l1073
	
l1076:	
	line	115
	
l1073:	
	line	116
;lcd_mobile.c: 115: }
;lcd_mobile.c: 116: RA6=1;RA3=RA4=RA5=0;
	bsf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	line	117
;lcd_mobile.c: 117: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1077
u2780:
	line	119
	
l2481:	
;lcd_mobile.c: 118: {
;lcd_mobile.c: 119: if(i==10)
	movlw	0Ah
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipz
	goto	u2791
	goto	u2790
u2791:
	goto	l1078
u2790:
	line	121
	
l2483:	
;lcd_mobile.c: 120: {
;lcd_mobile.c: 121: lcd_cmd(0,0,0XC0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	122
;lcd_mobile.c: 122: while(a[j]!='\0')
	goto	l2489
	
l1080:	
	line	124
	
l2485:	
;lcd_mobile.c: 123: {
;lcd_mobile.c: 124: lcd_cmd(1,0,a[j]);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	125
	
l2487:	
;lcd_mobile.c: 125: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2489
	line	126
	
l1079:	
	line	122
	
l2489:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@j),w
	addlw	main@a&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2801
	goto	u2800
u2801:
	goto	l2485
u2800:
	goto	l2491
	
l1081:	
	line	127
	
l2491:	
;lcd_mobile.c: 126: }
;lcd_mobile.c: 127: z++;
	movlw	low(01h)
	addwf	(main@z),f
	skipnc
	incf	(main@z+1),f
	movlw	high(01h)
	addwf	(main@z+1),f
	line	128
	
l1078:	
	line	129
;lcd_mobile.c: 128: }
;lcd_mobile.c: 129: if(i!=10)
	movlw	0Ah
	xorwf	(main@i),w
	iorwf	(main@i+1),w
	skipnz
	goto	u2811
	goto	u2810
u2811:
	goto	l1086
u2810:
	line	131
	
l2493:	
;lcd_mobile.c: 130: {
;lcd_mobile.c: 131: lcd_cmd(0,0,0XC0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	133
;lcd_mobile.c: 133: while(b[k]!='\0')
	goto	l2499
	
l1084:	
	line	136
	
l2495:	
;lcd_mobile.c: 134: {
;lcd_mobile.c: 136: lcd_cmd(1,0,b[k]);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@k),w
	addlw	main@b&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	137
	
l2497:	
;lcd_mobile.c: 137: k++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	goto	l2499
	line	138
	
l1083:	
	line	133
	
l2499:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@k),w
	addlw	main@b&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2821
	goto	u2820
u2821:
	goto	l2495
u2820:
	goto	l2501
	
l1085:	
	line	139
	
l2501:	
;lcd_mobile.c: 138: }
;lcd_mobile.c: 139: lcd_cmd(0,0,0X1C);
	clrf	(?_lcd_cmd)
	movlw	(01Ch)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	140
	
l2503:	
;lcd_mobile.c: 140: z++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@z),f
	skipnc
	incf	(main@z+1),f
	movlw	high(01h)
	addwf	(main@z+1),f
	goto	l1086
	line	141
	
l1082:	
	line	142
;lcd_mobile.c: 141: }
;lcd_mobile.c: 142: while(RA0==1);
	goto	l1086
	
l1087:	
	
l1086:	
	btfsc	(40/8),(40)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l1086
u2830:
	goto	l1077
	
l1088:	
	line	143
	
l1077:	
	line	144
;lcd_mobile.c: 143: }
;lcd_mobile.c: 144: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l1089
u2840:
	line	146
	
l2505:	
;lcd_mobile.c: 145: {
;lcd_mobile.c: 146: lcd_cmd(1,0,0X30);
	clrf	(?_lcd_cmd)
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	147
	
l2507:	
;lcd_mobile.c: 147: d[i]=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@d&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	148
	
l2509:	
;lcd_mobile.c: 148: i++;
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	line	149
;lcd_mobile.c: 149: while(RA1==1);
	goto	l1090
	
l1091:	
	
l1090:	
	btfsc	(41/8),(41)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l1090
u2850:
	goto	l1089
	
l1092:	
	line	150
	
l1089:	
	line	151
;lcd_mobile.c: 150: }
;lcd_mobile.c: 151: if(RA2==1&&z==1)
	btfss	(42/8),(42)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l2421
u2860:
	
l2511:	
	movlw	01h
	xorwf	(main@z),w
	iorwf	(main@z+1),w
	skipz
	goto	u2871
	goto	u2870
u2871:
	goto	l2421
u2870:
	line	153
	
l2513:	
;lcd_mobile.c: 152: {
;lcd_mobile.c: 153: lcd_cmd(0,0,0XC0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	154
;lcd_mobile.c: 154: while(c[l]!='\0')
	goto	l2519
	
l1095:	
	line	156
	
l2515:	
;lcd_mobile.c: 155: {
;lcd_mobile.c: 156: lcd_cmd(1,0,c[l]);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@l),w
	addlw	main@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	157
	
l2517:	
;lcd_mobile.c: 157: l++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(01h)
	addwf	(main@l+1),f
	goto	l2519
	line	158
	
l1094:	
	line	154
	
l2519:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@l),w
	addlw	main@c&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2881
	goto	u2880
u2881:
	goto	l2515
u2880:
	goto	l1097
	
l1096:	
	line	159
;lcd_mobile.c: 158: }
;lcd_mobile.c: 159: while(RA2==1);
	goto	l1097
	
l1098:	
	
l1097:	
	btfsc	(42/8),(42)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l1097
u2890:
	goto	l2421
	
l1099:	
	goto	l2421
	line	160
	
l1093:	
	goto	l2421
	line	161
	
l1100:	
	line	48
	goto	l2421
	
l1101:	
	line	162
	
l1102:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_cmd
psect	text97,local,class=CODE,delta=2
global __ptext97
__ptext97:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 21 in file "D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] unsigned char 
;;  c               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text97
	file	"D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
	line	21
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	22
	
l2383:	
;lcd_mobile.c: 22: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2531
	goto	u2530
	
u2531:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2544
u2530:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2544:
	line	23
;lcd_mobile.c: 23: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2551
	goto	u2550
	
u2551:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2564
u2550:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2564:
	line	24
	
l2385:	
;lcd_mobile.c: 24: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	25
	
l2387:	
;lcd_mobile.c: 25: RE2=1;
	bsf	(74/8),(74)&7
	line	26
	
l2389:	
;lcd_mobile.c: 26: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	27
	
l2391:	
;lcd_mobile.c: 27: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	28
	
l2393:	
;lcd_mobile.c: 28: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_delay
psect	text98,local,class=CODE,delta=2
global __ptext98
__ptext98:

;; *************** function _delay *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
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
;;		_lcd_cmd
;; This function uses a non-reentrant model
;;
psect	text98
	file	"D:\Embedded\pic\code\software\LCD\lcd_mobile\lcd_mobile.c"
	line	17
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	18
	
l2379:	
;lcd_mobile.c: 18: while(a--);
	goto	l2381
	
l1026:	
	goto	l2381
	
l1025:	
	
l2381:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u2525
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u2525:

	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l2381
u2520:
	goto	l1028
	
l1027:	
	line	19
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text99,local,class=CODE,delta=2
global __ptext99
__ptext99:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
