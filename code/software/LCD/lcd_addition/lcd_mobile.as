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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_d
	global	_a
	global	_b
	global	_i
	global	_sum
	global	_PORTA
psect	text118,local,class=CODE,delta=2
global __ptext118
__ptext118:
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

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

_sum:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_d:
       ds      10

_a:
       ds      2

_b:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
	clrf	((__pbssBANK0)+9)&07Fh
	clrf	((__pbssBANK0)+10)&07Fh
	clrf	((__pbssBANK0)+11)&07Fh
	clrf	((__pbssBANK0)+12)&07Fh
	clrf	((__pbssBANK0)+13)&07Fh
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
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
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
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 18, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      14
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 1     1      0     684
;;                                              9 COMMON     1     1      0
;;                            _lcd_cmd
;;                            ___awdiv
;;                            ___awmod
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     1      2      88
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (1) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
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
;;   ___awdiv
;;   ___awmod
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      A       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      1C       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       E       5       17.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1E      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 34 in file "D:\Embedded\pic\code\software\LCD\lcd_addition\lcd_mobile.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;;		___awdiv
;;		___awmod
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\LCD\lcd_addition\lcd_mobile.c"
	line	34
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	36
	
l2470:	
;lcd_mobile.c: 36: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	37
	
l2472:	
;lcd_mobile.c: 37: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	38
	
l2474:	
;lcd_mobile.c: 38: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	39
	
l2476:	
;lcd_mobile.c: 39: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	40
	
l2478:	
;lcd_mobile.c: 40: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	41
	
l2480:	
;lcd_mobile.c: 41: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	42
	
l2482:	
;lcd_mobile.c: 42: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	43
	
l2484:	
;lcd_mobile.c: 43: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	44
	
l2486:	
;lcd_mobile.c: 44: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	45
	
l2488:	
;lcd_mobile.c: 45: lcd_cmd(0,0,0X0F);
	clrf	(?_lcd_cmd)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	46
	
l2490:	
;lcd_mobile.c: 46: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2492
	line	47
;lcd_mobile.c: 47: while(1)
	
l1044:	
	line	49
	
l2492:	
;lcd_mobile.c: 48: {
;lcd_mobile.c: 49: RA3=1;RA4=RA5=RA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	
l2494:	
	bcf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	line	50
	
l2496:	
;lcd_mobile.c: 50: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1045
u2670:
	line	52
	
l2498:	
;lcd_mobile.c: 51: {
;lcd_mobile.c: 52: lcd_cmd(1,0,0X30+1);
	clrf	(?_lcd_cmd)
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	53
	
l2500:	
;lcd_mobile.c: 53: d[i]=1;
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	bsf	status,0
	rlf	indf,f
	line	54
	
l2502:	
;lcd_mobile.c: 54: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	55
;lcd_mobile.c: 55: while(RA0==1);
	goto	l1046
	
l1047:	
	
l1046:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1046
u2680:
	goto	l1045
	
l1048:	
	line	56
	
l1045:	
	line	57
;lcd_mobile.c: 56: }
;lcd_mobile.c: 57: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1049
u2690:
	line	59
	
l2504:	
;lcd_mobile.c: 58: {
;lcd_mobile.c: 59: lcd_cmd(1,0,0X30+2);
	clrf	(?_lcd_cmd)
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	60
	
l2506:	
;lcd_mobile.c: 60: d[i]=2;
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	61
	
l2508:	
;lcd_mobile.c: 61: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	62
;lcd_mobile.c: 62: while(RA1==1);
	goto	l1050
	
l1051:	
	
l1050:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1050
u2700:
	goto	l1049
	
l1052:	
	line	63
	
l1049:	
	line	64
;lcd_mobile.c: 63: }
;lcd_mobile.c: 64: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1053
u2710:
	line	66
	
l2510:	
;lcd_mobile.c: 65: {
;lcd_mobile.c: 66: lcd_cmd(1,0,0X30+3);
	clrf	(?_lcd_cmd)
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	67
	
l2512:	
;lcd_mobile.c: 67: d[i]=3;
	movlw	(03h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	68
	
l2514:	
;lcd_mobile.c: 68: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	69
;lcd_mobile.c: 69: while(RA2==1);
	goto	l1054
	
l1055:	
	
l1054:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1054
u2720:
	goto	l1053
	
l1056:	
	line	70
	
l1053:	
	line	71
;lcd_mobile.c: 70: }
;lcd_mobile.c: 71: RA4=1;RA3=RA5=RA6=0;
	bsf	(44/8),(44)&7
	bcf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(43/8),(43)&7
	line	72
;lcd_mobile.c: 72: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1057
u2730:
	line	74
	
l2516:	
;lcd_mobile.c: 73: {
;lcd_mobile.c: 74: lcd_cmd(1,0,0X30+4);
	clrf	(?_lcd_cmd)
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	75
	
l2518:	
;lcd_mobile.c: 75: d[i]=4;
	movlw	(04h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	76
	
l2520:	
;lcd_mobile.c: 76: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	77
;lcd_mobile.c: 77: while(RA0==1);
	goto	l1058
	
l1059:	
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l1058
u2740:
	goto	l1057
	
l1060:	
	line	78
	
l1057:	
	line	79
;lcd_mobile.c: 78: }
;lcd_mobile.c: 79: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1061
u2750:
	line	81
	
l2522:	
;lcd_mobile.c: 80: {
;lcd_mobile.c: 81: lcd_cmd(1,0,0X30+5);
	clrf	(?_lcd_cmd)
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	82
	
l2524:	
;lcd_mobile.c: 82: d[i]=5;
	movlw	(05h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	83
	
l2526:	
;lcd_mobile.c: 83: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	84
;lcd_mobile.c: 84: while(RA1==1);
	goto	l1062
	
l1063:	
	
l1062:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l1062
u2760:
	goto	l1061
	
l1064:	
	line	85
	
l1061:	
	line	86
;lcd_mobile.c: 85: }
;lcd_mobile.c: 86: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l1065
u2770:
	line	88
	
l2528:	
;lcd_mobile.c: 87: {
;lcd_mobile.c: 88: lcd_cmd(1,0,0X30+6);
	clrf	(?_lcd_cmd)
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	89
	
l2530:	
;lcd_mobile.c: 89: d[i]=6;
	movlw	(06h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	90
	
l2532:	
;lcd_mobile.c: 90: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	91
;lcd_mobile.c: 91: while(RA2==1);
	goto	l1066
	
l1067:	
	
l1066:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1066
u2780:
	goto	l1065
	
l1068:	
	line	92
	
l1065:	
	line	93
;lcd_mobile.c: 92: }
;lcd_mobile.c: 93: RA5=1;RA3=RA4=RA6=0;
	bsf	(45/8),(45)&7
	bcf	(46/8),(46)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	line	94
;lcd_mobile.c: 94: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l1069
u2790:
	line	96
	
l2534:	
;lcd_mobile.c: 95: {
;lcd_mobile.c: 96: lcd_cmd(1,0,0X30+7);
	clrf	(?_lcd_cmd)
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	97
	
l2536:	
;lcd_mobile.c: 97: d[i]=7;
	movlw	(07h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	98
	
l2538:	
;lcd_mobile.c: 98: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	99
;lcd_mobile.c: 99: while(RA0==1);
	goto	l1070
	
l1071:	
	
l1070:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1070
u2800:
	goto	l1069
	
l1072:	
	line	100
	
l1069:	
	line	101
;lcd_mobile.c: 100: }
;lcd_mobile.c: 101: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l1073
u2810:
	line	103
	
l2540:	
;lcd_mobile.c: 102: {
;lcd_mobile.c: 103: lcd_cmd(1,0,0X30+8);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	104
	
l2542:	
;lcd_mobile.c: 104: d[i]=8;
	movlw	(08h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	105
	
l2544:	
;lcd_mobile.c: 105: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	106
;lcd_mobile.c: 106: while(RA1==1);
	goto	l1074
	
l1075:	
	
l1074:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l1074
u2820:
	goto	l1073
	
l1076:	
	line	107
	
l1073:	
	line	108
;lcd_mobile.c: 107: }
;lcd_mobile.c: 108: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l1077
u2830:
	line	110
	
l2546:	
;lcd_mobile.c: 109: {
;lcd_mobile.c: 110: lcd_cmd(1,0,0X30+9);
	clrf	(?_lcd_cmd)
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	111
	
l2548:	
;lcd_mobile.c: 111: d[i]=9;
	movlw	(09h)
	movwf	(??_main+0)+0
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_main+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	112
	
l2550:	
;lcd_mobile.c: 112: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	113
;lcd_mobile.c: 113: while(RA2==1);
	goto	l1078
	
l1079:	
	
l1078:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2841
	goto	u2840
u2841:
	goto	l1078
u2840:
	goto	l1077
	
l1080:	
	line	114
	
l1077:	
	line	115
;lcd_mobile.c: 114: }
;lcd_mobile.c: 115: RA6=1;RA3=RA4=RA5=0;
	bsf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	line	116
;lcd_mobile.c: 116: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l1081
u2850:
	line	118
	
l2552:	
;lcd_mobile.c: 117: {
;lcd_mobile.c: 118: sum=d[0]+d[1];
	movf	(_d),w
	addwf	0+(_d)+01h,w
	movwf	(_sum)
	clrf	(_sum)+1
	rlf	1+(_sum),f
	
	line	125
	
l2554:	
;lcd_mobile.c: 125: a=sum/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_sum+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_sum),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	126
	
l2556:	
;lcd_mobile.c: 126: b=sum%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_sum+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_sum),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	line	127
	
l2558:	
;lcd_mobile.c: 127: lcd_cmd(0,0,0xc0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	128
	
l2560:	
;lcd_mobile.c: 128: lcd_cmd(1,0,0x30+a);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_a),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	129
	
l2562:	
;lcd_mobile.c: 129: lcd_cmd(1,0,0x30+b);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_b),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	131
;lcd_mobile.c: 131: while(RA0==1);
	goto	l1082
	
l1083:	
	
l1082:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2861
	goto	u2860
u2861:
	goto	l1082
u2860:
	goto	l1081
	
l1084:	
	line	132
	
l1081:	
	line	137
;lcd_mobile.c: 132: }
;lcd_mobile.c: 137: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2871
	goto	u2870
u2871:
	goto	l1085
u2870:
	line	139
	
l2564:	
;lcd_mobile.c: 138: {
;lcd_mobile.c: 139: lcd_cmd(1,0,0X30);
	clrf	(?_lcd_cmd)
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	140
	
l2566:	
;lcd_mobile.c: 140: d[i]=0;
	movf	(_i),w
	addlw	_d&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	clrf	indf
	line	141
	
l2568:	
;lcd_mobile.c: 141: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	line	142
;lcd_mobile.c: 142: while(RA1==1);
	goto	l1086
	
l1087:	
	
l1086:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2881
	goto	u2880
u2881:
	goto	l1086
u2880:
	goto	l1085
	
l1088:	
	line	143
	
l1085:	
	line	144
;lcd_mobile.c: 143: }
;lcd_mobile.c: 144: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2891
	goto	u2890
u2891:
	goto	l2492
u2890:
	line	146
	
l2570:	
;lcd_mobile.c: 145: {
;lcd_mobile.c: 146: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	147
;lcd_mobile.c: 147: while(RA2==1);
	goto	l1090
	
l1091:	
	
l1090:	
	btfsc	(42/8),(42)&7
	goto	u2901
	goto	u2900
u2901:
	goto	l1090
u2900:
	goto	l2492
	
l1092:	
	goto	l2492
	line	148
	
l1089:	
	goto	l2492
	line	149
	
l1093:	
	line	47
	goto	l2492
	
l1094:	
	line	150
	
l1095:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_cmd
psect	text119,local,class=CODE,delta=2
global __ptext119
__ptext119:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 24 in file "D:\Embedded\pic\code\software\LCD\lcd_addition\lcd_mobile.c"
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
psect	text119
	file	"D:\Embedded\pic\code\software\LCD\lcd_addition\lcd_mobile.c"
	line	24
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	25
	
l2458:	
;lcd_mobile.c: 25: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2631
	goto	u2630
	
u2631:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2644
u2630:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2644:
	line	26
;lcd_mobile.c: 26: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2651
	goto	u2650
	
u2651:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2664
u2650:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2664:
	line	27
	
l2460:	
;lcd_mobile.c: 27: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	28
	
l2462:	
;lcd_mobile.c: 28: RE2=1;
	bsf	(74/8),(74)&7
	line	29
	
l2464:	
;lcd_mobile.c: 29: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	30
	
l2466:	
;lcd_mobile.c: 30: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	31
	
l2468:	
;lcd_mobile.c: 31: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	32
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	___awmod
psect	text120,local,class=CODE,delta=2
global __ptext120
__ptext120:

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
psect	text120
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2424:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2541
	goto	u2540
u2541:
	goto	l2428
u2540:
	line	10
	
l2426:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2428
	line	12
	
l1312:	
	line	13
	
l2428:	
	btfss	(___awmod@divisor+1),7
	goto	u2551
	goto	u2550
u2551:
	goto	l2432
u2550:
	line	14
	
l2430:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2432
	
l1313:	
	line	15
	
l2432:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2561
	goto	u2560
u2561:
	goto	l2450
u2560:
	line	16
	
l2434:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2440
	
l1316:	
	line	18
	
l2436:	
	movlw	01h
	
u2575:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2575
	line	19
	
l2438:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2440
	line	20
	
l1315:	
	line	17
	
l2440:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2581
	goto	u2580
u2581:
	goto	l2436
u2580:
	goto	l2442
	
l1317:	
	goto	l2442
	line	21
	
l1318:	
	line	22
	
l2442:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2595
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2595:
	skipc
	goto	u2591
	goto	u2590
u2591:
	goto	l2446
u2590:
	line	23
	
l2444:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2446
	
l1319:	
	line	24
	
l2446:	
	movlw	01h
	
u2605:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2605
	line	25
	
l2448:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2611
	goto	u2610
u2611:
	goto	l2442
u2610:
	goto	l2450
	
l1320:	
	goto	l2450
	line	26
	
l1314:	
	line	27
	
l2450:	
	movf	(___awmod@sign),w
	skipz
	goto	u2620
	goto	l2454
u2620:
	line	28
	
l2452:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2454
	
l1321:	
	line	29
	
l2454:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1322
	
l2456:	
	line	30
	
l1322:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text121,local,class=CODE,delta=2
global __ptext121
__ptext121:

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
psect	text121
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2384:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2441
	goto	u2440
u2441:
	goto	l2388
u2440:
	line	11
	
l2386:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2388
	line	13
	
l1244:	
	line	14
	
l2388:	
	btfss	(___awdiv@dividend+1),7
	goto	u2451
	goto	u2450
u2451:
	goto	l2394
u2450:
	line	15
	
l2390:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2392:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2394
	line	17
	
l1245:	
	line	18
	
l2394:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2396:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2461
	goto	u2460
u2461:
	goto	l2416
u2460:
	line	20
	
l2398:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2404
	
l1248:	
	line	22
	
l2400:	
	movlw	01h
	
u2475:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2475
	line	23
	
l2402:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2404
	line	24
	
l1247:	
	line	21
	
l2404:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2481
	goto	u2480
u2481:
	goto	l2400
u2480:
	goto	l2406
	
l1249:	
	goto	l2406
	line	25
	
l1250:	
	line	26
	
l2406:	
	movlw	01h
	
u2495:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2495
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2505
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2505:
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2412
u2500:
	line	28
	
l2408:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2410:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2412
	line	30
	
l1251:	
	line	31
	
l2412:	
	movlw	01h
	
u2515:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2515
	line	32
	
l2414:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2521
	goto	u2520
u2521:
	goto	l2406
u2520:
	goto	l2416
	
l1252:	
	goto	l2416
	line	33
	
l1246:	
	line	34
	
l2416:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2530
	goto	l2420
u2530:
	line	35
	
l2418:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2420
	
l1253:	
	line	36
	
l2420:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1254
	
l2422:	
	line	37
	
l1254:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	_delay
psect	text122,local,class=CODE,delta=2
global __ptext122
__ptext122:

;; *************** function _delay *****************
;; Defined at:
;;		line 20 in file "D:\Embedded\pic\code\software\LCD\lcd_addition\lcd_mobile.c"
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
psect	text122
	file	"D:\Embedded\pic\code\software\LCD\lcd_addition\lcd_mobile.c"
	line	20
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	21
	
l2380:	
;lcd_mobile.c: 21: while(a--);
	goto	l2382
	
l1036:	
	goto	l2382
	
l1035:	
	
l2382:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u2435
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u2435:

	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l2382
u2430:
	goto	l1038
	
l1037:	
	line	22
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text123,local,class=CODE,delta=2
global __ptext123
__ptext123:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
