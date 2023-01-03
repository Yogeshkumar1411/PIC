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
	FNCALL	_main,_display
	FNCALL	_main,_timer
	FNCALL	_main,_num
	FNCALL	_num,_lcd_cmd
	FNCALL	_display,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_z
	global	_a
	global	_b
	global	_c
	global	_e
	global	_f
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	20

;initializer for _z
	retlw	031h
	retlw	032h
	retlw	033h
	retlw	034h
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
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	line	17

;initializer for _a
	retlw	057h
	retlw	065h
	retlw	06Ch
	retlw	063h
	retlw	06Fh
	retlw	06Dh
	retlw	065h
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
	retlw	0
	retlw	0
	retlw	0
	line	18

;initializer for _b
	retlw	053h
	retlw	042h
	retlw	049h
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
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	line	19

;initializer for _c
	retlw	045h
	retlw	06Eh
	retlw	074h
	retlw	065h
	retlw	072h
	retlw	020h
	retlw	074h
	retlw	068h
	retlw	065h
	retlw	020h
	retlw	04Eh
	retlw	061h
	retlw	06Dh
	retlw	065h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
psect	idataBANK1
	line	22

;initializer for _e
	retlw	045h
	retlw	06Eh
	retlw	074h
	retlw	065h
	retlw	072h
	retlw	020h
	retlw	070h
	retlw	069h
	retlw	06Eh
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
	retlw	0
	line	23

;initializer for _f
	retlw	049h
	retlw	06Eh
	retlw	076h
	retlw	061h
	retlw	06Ch
	retlw	069h
	retlw	064h
	retlw	020h
	retlw	06Eh
	retlw	061h
	retlw	06Dh
	retlw	065h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_cmp
	global	_i
	global	_j
	global	_k
	global	_l
	global	_m
	global	_n
	global	_ptr
	global	_count
	global	_pass
	global	_d
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_T1CON
_T1CON	set	16
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_TMR1IF
_TMR1IF	set	96
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"bank.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

_pass:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_cmp:
       ds      2

_i:
       ds      2

_j:
       ds      2

_k:
       ds      2

_l:
       ds      2

_m:
       ds      2

_n:
       ds      2

_ptr:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	17
_a:
       ds      20

psect	dataBANK0
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	18
_b:
       ds      20

psect	dataBANK0
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	19
_c:
       ds      20

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_d:
       ds      20

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	20
_z:
       ds      20

psect	dataBANK1
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	22
_e:
       ds      20

psect	dataBANK1
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	23
_f:
       ds      20

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+010h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+014h)
	fcall	clear_ram
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+60)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	movlw low(__pdataBANK0+60)
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
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_timer
?_timer:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	timer@sec
timer@sec:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	??_timer
??_timer:	; 0 bytes @ 0x2
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
	global	??_display
??_display:	; 0 bytes @ 0x5
	global	?_num
?_num:	; 0 bytes @ 0x5
	global	num@y
num@y:	; 2 bytes @ 0x5
	ds	1
	global	display@ptr1
display@ptr1:	; 1 bytes @ 0x6
	ds	1
	global	??_num
??_num:	; 0 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
;;Data sizes: Strings 0, constant 0, data 120, bss 40, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9      13
;; BANK0           80      0      76
;; BANK1           80      0      80
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ptr	PTR unsigned char  size(2) Largest target is 512
;;		 -> NULL(NULL[0]), RAM(DATA[512]), 
;;
;; display@ptr1	PTR unsigned char  size(1) Largest target is 20
;;		 -> f(BANK1[20]), e(BANK1[20]), c(BANK0[20]), b(BANK0[20]), 
;;		 -> a(BANK0[20]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_num
;;   _num->_lcd_cmd
;;   _display->_lcd_cmd
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
;; (0) _main                                                 1     1      0     354
;;                                              8 COMMON     1     1      0
;;                            _lcd_cmd
;;                            _display
;;                              _timer
;;                                _num
;; ---------------------------------------------------------------------------------
;; (1) _num                                                  3     1      2     110
;;                                              5 COMMON     3     1      2
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _display                                              2     2      0     133
;;                                              5 COMMON     2     2      0
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              3     1      2      88
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _timer                                                2     0      2      23
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _display
;;     _lcd_cmd
;;       _delay
;;   _timer
;;   _num
;;     _lcd_cmd
;;       _delay
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
;;BANK1               50      0      50       7      100.0%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      AC      12        0.0%
;;ABS                  0      0      A9       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0      4C       5       95.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      9       D       1       92.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 84 in file "D:\Embedded\pic\code\software\Bank1\bank.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;;		_display
;;		_timer
;;		_num
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	84
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	85
	
l2461:	
;bank.c: 85: TRISC=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	86
	
l2463:	
;bank.c: 86: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	87
	
l2465:	
;bank.c: 87: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	88
	
l2467:	
;bank.c: 88: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	89
	
l2469:	
;bank.c: 89: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	90
	
l2471:	
;bank.c: 90: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	91
	
l2473:	
;bank.c: 91: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	92
	
l2475:	
;bank.c: 92: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	93
	
l2477:	
;bank.c: 93: T1CON=0X31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	94
	
l2479:	
;bank.c: 94: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	95
	
l2481:	
;bank.c: 95: lcd_cmd(0,0,0X0F);
	clrf	(?_lcd_cmd)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	96
	
l2483:	
;bank.c: 96: ptr=0XC0;
	movlw	low(0C0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_ptr)
	movlw	high(0C0h)
	movwf	((_ptr))+1
	goto	l2485
	line	97
;bank.c: 97: while(1)
	
l1085:	
	line	99
	
l2485:	
;bank.c: 98: {
;bank.c: 99: lcd_cmd(0,0,0X84);
	clrf	(?_lcd_cmd)
	movlw	(084h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	100
	
l2487:	
;bank.c: 100: display(a);
	movlw	(_a)&0ffh
	fcall	_display
	line	101
	
l2489:	
;bank.c: 101: lcd_cmd(0,0,0XC6);
	clrf	(?_lcd_cmd)
	movlw	(0C6h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	102
	
l2491:	
;bank.c: 102: display(b);
	movlw	(_b)&0ffh
	fcall	_display
	line	103
	
l2493:	
;bank.c: 103: timer(5);
	movlw	low(05h)
	movwf	(?_timer)
	movlw	high(05h)
	movwf	((?_timer))+1
	fcall	_timer
	line	104
	
l2495:	
;bank.c: 104: lcd_cmd(0,0,0X01);
	clrf	(?_lcd_cmd)
	clrf	0+(?_lcd_cmd)+01h
	bsf	status,0
	rlf	0+(?_lcd_cmd)+01h,f
	movlw	(0)
	fcall	_lcd_cmd
	line	105
	
l2497:	
;bank.c: 105: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	106
	
l2499:	
;bank.c: 106: display(c);
	movlw	(_c)&0ffh
	fcall	_display
	line	107
	
l2501:	
;bank.c: 107: lcd_cmd(0,0,0X01);
	clrf	(?_lcd_cmd)
	clrf	0+(?_lcd_cmd)+01h
	bsf	status,0
	rlf	0+(?_lcd_cmd)+01h,f
	movlw	(0)
	fcall	_lcd_cmd
	line	109
	
l2503:	
;bank.c: 109: RC3=1;RC4=RC5=RC6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(59/8),(59)&7
	
l2505:	
	bcf	(62/8),(62)&7
	bcf	(61/8),(61)&7
	bcf	(60/8),(60)&7
	line	110
	
l2507:	
;bank.c: 110: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u2591
	goto	u2590
u2591:
	goto	l1086
u2590:
	line	112
	
l2509:	
;bank.c: 111: {
;bank.c: 112: num(1);
	movlw	low(01h)
	movwf	(?_num)
	movlw	high(01h)
	movwf	((?_num))+1
	fcall	_num
	line	113
	
l2511:	
;bank.c: 113: if(pass==0)
	movf	((_pass+1)),w
	iorwf	((_pass)),w
	skipz
	goto	u2601
	goto	u2600
u2601:
	goto	l1088
u2600:
	line	115
	
l2513:	
;bank.c: 114: {
;bank.c: 115: pass=1;
	movlw	low(01h)
	movwf	(_pass)
	movlw	high(01h)
	movwf	((_pass))+1
	goto	l1088
	line	116
	
l1087:	
	line	117
;bank.c: 116: }
;bank.c: 117: while(RC0==1);
	goto	l1088
	
l1089:	
	
l1088:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2611
	goto	u2610
u2611:
	goto	l1088
u2610:
	goto	l1086
	
l1090:	
	line	118
	
l1086:	
	line	119
;bank.c: 118: }
;bank.c: 119: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u2621
	goto	u2620
u2621:
	goto	l1091
u2620:
	line	121
	
l2515:	
;bank.c: 120: {
;bank.c: 121: num(2);
	movlw	low(02h)
	movwf	(?_num)
	movlw	high(02h)
	movwf	((?_num))+1
	fcall	_num
	line	122
	
l2517:	
;bank.c: 122: if(pass==1)
	movlw	01h
	xorwf	(_pass),w
	iorwf	(_pass+1),w
	skipz
	goto	u2631
	goto	u2630
u2631:
	goto	l1093
u2630:
	line	124
	
l2519:	
;bank.c: 123: {
;bank.c: 124: pass=1+2;
	movlw	low(03h)
	movwf	(_pass)
	movlw	high(03h)
	movwf	((_pass))+1
	goto	l1093
	line	125
	
l1092:	
	line	126
;bank.c: 125: }
;bank.c: 126: while(RC1==1);
	goto	l1093
	
l1094:	
	
l1093:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u2641
	goto	u2640
u2641:
	goto	l1093
u2640:
	goto	l1091
	
l1095:	
	line	127
	
l1091:	
	line	128
;bank.c: 127: }
;bank.c: 128: if(RC2==1)
	btfss	(58/8),(58)&7
	goto	u2651
	goto	u2650
u2651:
	goto	l1096
u2650:
	line	130
	
l2521:	
;bank.c: 129: {
;bank.c: 130: num(3);
	movlw	low(03h)
	movwf	(?_num)
	movlw	high(03h)
	movwf	((?_num))+1
	fcall	_num
	line	131
	
l2523:	
;bank.c: 131: if(pass==3)
	movlw	03h
	xorwf	(_pass),w
	iorwf	(_pass+1),w
	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l1098
u2660:
	line	133
	
l2525:	
;bank.c: 132: {
;bank.c: 133: pass=3+3;
	movlw	low(06h)
	movwf	(_pass)
	movlw	high(06h)
	movwf	((_pass))+1
	goto	l1098
	line	134
	
l1097:	
	line	135
;bank.c: 134: }
;bank.c: 135: while(RC2==1);
	goto	l1098
	
l1099:	
	
l1098:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(58/8),(58)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1098
u2670:
	goto	l1096
	
l1100:	
	line	136
	
l1096:	
	line	137
;bank.c: 136: }
;bank.c: 137: RC4=1;RC3=RC5=RC6=0;
	bsf	(60/8),(60)&7
	bcf	(62/8),(62)&7
	bcf	(61/8),(61)&7
	bcf	(59/8),(59)&7
	line	138
;bank.c: 138: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1101
u2680:
	line	140
	
l2527:	
;bank.c: 139: {
;bank.c: 140: num(4);
	movlw	low(04h)
	movwf	(?_num)
	movlw	high(04h)
	movwf	((?_num))+1
	fcall	_num
	line	141
	
l2529:	
;bank.c: 141: if(pass==6)
	movlw	06h
	xorwf	(_pass),w
	iorwf	(_pass+1),w
	skipz
	goto	u2691
	goto	u2690
u2691:
	goto	l1103
u2690:
	line	143
	
l2531:	
;bank.c: 142: {
;bank.c: 143: pass=6+4;
	movlw	low(0Ah)
	movwf	(_pass)
	movlw	high(0Ah)
	movwf	((_pass))+1
	goto	l1103
	line	144
	
l1102:	
	line	145
;bank.c: 144: }
;bank.c: 145: while(RC0==1);
	goto	l1103
	
l1104:	
	
l1103:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1103
u2700:
	goto	l1101
	
l1105:	
	line	146
	
l1101:	
	line	147
;bank.c: 146: }
;bank.c: 147: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1106
u2710:
	line	149
	
l2533:	
;bank.c: 148: {
;bank.c: 149: num(5);
	movlw	low(05h)
	movwf	(?_num)
	movlw	high(05h)
	movwf	((?_num))+1
	fcall	_num
	line	150
;bank.c: 150: while(RC1==1);
	goto	l1107
	
l1108:	
	
l1107:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1107
u2720:
	goto	l1106
	
l1109:	
	line	151
	
l1106:	
	line	152
;bank.c: 151: }
;bank.c: 152: if(RC2==1)
	btfss	(58/8),(58)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1110
u2730:
	line	154
	
l2535:	
;bank.c: 153: {
;bank.c: 154: num(6);
	movlw	low(06h)
	movwf	(?_num)
	movlw	high(06h)
	movwf	((?_num))+1
	fcall	_num
	line	155
;bank.c: 155: while(RC2==1);
	goto	l1111
	
l1112:	
	
l1111:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(58/8),(58)&7
	goto	u2741
	goto	u2740
u2741:
	goto	l1111
u2740:
	goto	l1110
	
l1113:	
	line	156
	
l1110:	
	line	157
;bank.c: 156: }
;bank.c: 157: RC5=1;RC4=RC3=RC6=0;
	bsf	(61/8),(61)&7
	bcf	(62/8),(62)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	line	158
;bank.c: 158: if(RC0==1)
	btfss	(56/8),(56)&7
	goto	u2751
	goto	u2750
u2751:
	goto	l1114
u2750:
	line	160
	
l2537:	
;bank.c: 159: {
;bank.c: 160: num(7);
	movlw	low(07h)
	movwf	(?_num)
	movlw	high(07h)
	movwf	((?_num))+1
	fcall	_num
	line	161
;bank.c: 161: while(RC0==1);
	goto	l1115
	
l1116:	
	
l1115:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2761
	goto	u2760
u2761:
	goto	l1115
u2760:
	goto	l1114
	
l1117:	
	line	162
	
l1114:	
	line	163
;bank.c: 162: }
;bank.c: 163: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u2771
	goto	u2770
u2771:
	goto	l1118
u2770:
	line	165
	
l2539:	
;bank.c: 164: {
;bank.c: 165: num(8);
	movlw	low(08h)
	movwf	(?_num)
	movlw	high(08h)
	movwf	((?_num))+1
	fcall	_num
	line	166
;bank.c: 166: while(RC1==1);
	goto	l1119
	
l1120:	
	
l1119:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u2781
	goto	u2780
u2781:
	goto	l1119
u2780:
	goto	l1118
	
l1121:	
	line	167
	
l1118:	
	line	168
;bank.c: 167: }
;bank.c: 168: if(RC2==1)
	btfss	(58/8),(58)&7
	goto	u2791
	goto	u2790
u2791:
	goto	l1122
u2790:
	line	170
	
l2541:	
;bank.c: 169: {
;bank.c: 170: num(9);
	movlw	low(09h)
	movwf	(?_num)
	movlw	high(09h)
	movwf	((?_num))+1
	fcall	_num
	line	171
;bank.c: 171: while(RC2==1);
	goto	l1123
	
l1124:	
	
l1123:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(58/8),(58)&7
	goto	u2801
	goto	u2800
u2801:
	goto	l1123
u2800:
	goto	l1122
	
l1125:	
	line	172
	
l1122:	
	line	173
;bank.c: 172: }
;bank.c: 173: RC6=1;RC4=RC3=RC5=0;
	bsf	(62/8),(62)&7
	bcf	(61/8),(61)&7
	bcf	(59/8),(59)&7
	bcf	(60/8),(60)&7
	line	174
;bank.c: 174: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u2811
	goto	u2810
u2811:
	goto	l1126
u2810:
	line	176
	
l2543:	
;bank.c: 175: {
;bank.c: 176: num(0);
	movlw	low(0)
	movwf	(?_num)
	movlw	high(0)
	movwf	((?_num))+1
	fcall	_num
	line	177
;bank.c: 177: while(RC1==1);
	goto	l1127
	
l1128:	
	
l1127:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(57/8),(57)&7
	goto	u2821
	goto	u2820
u2821:
	goto	l1127
u2820:
	goto	l1126
	
l1129:	
	line	178
	
l1126:	
	line	181
;bank.c: 178: }
;bank.c: 181: if(RC0==1&&pass==10)
	btfss	(56/8),(56)&7
	goto	u2831
	goto	u2830
u2831:
	goto	l2551
u2830:
	
l2545:	
	movlw	0Ah
	xorwf	(_pass),w
	iorwf	(_pass+1),w
	skipz
	goto	u2841
	goto	u2840
u2841:
	goto	l2551
u2840:
	line	183
	
l2547:	
;bank.c: 182: {
;bank.c: 183: lcd_cmd(0,0,0X01);
	clrf	(?_lcd_cmd)
	clrf	0+(?_lcd_cmd)+01h
	bsf	status,0
	rlf	0+(?_lcd_cmd)+01h,f
	movlw	(0)
	fcall	_lcd_cmd
	line	184
;bank.c: 184: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	185
	
l2549:	
;bank.c: 185: display(e);
	movlw	(_e)&0ffh
	fcall	_display
	goto	l2551
	line	188
	
l1130:	
	line	189
	
l2551:	
;bank.c: 188: }
;bank.c: 189: if(RC0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2851
	goto	u2850
u2851:
	goto	l2485
u2850:
	line	191
	
l2553:	
;bank.c: 190: {
;bank.c: 191: lcd_cmd(0,0,0X01);
	clrf	(?_lcd_cmd)
	clrf	0+(?_lcd_cmd)+01h
	bsf	status,0
	rlf	0+(?_lcd_cmd)+01h,f
	movlw	(0)
	fcall	_lcd_cmd
	line	192
;bank.c: 192: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	193
	
l2555:	
;bank.c: 193: display(f);
	movlw	(_f)&0ffh
	fcall	_display
	goto	l2485
	line	194
	
l1131:	
	goto	l2485
	line	196
	
l1132:	
	line	97
	goto	l2485
	
l1133:	
	line	197
	
l1134:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_num
psect	text169,local,class=CODE,delta=2
global __ptext169
__ptext169:

;; *************** function _num *****************
;; Defined at:
;;		line 59 in file "D:\Embedded\pic\code\software\Bank1\bank.c"
;; Parameters:    Size  Location     Type
;;  y               2    5[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text169
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	59
	global	__size_of_num
	__size_of_num	equ	__end_of_num-_num
	
_num:	
	opt	stack 5
; Regs used in _num: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	61
	
l2451:	
;bank.c: 61: lcd_cmd(1,0,*ptr);
	clrf	(?_lcd_cmd)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_ptr),w
	movwf	fsr0
	bsf	status,7
	btfss	(_ptr+1),0
	bcf	status,7
	movf	indf,w
	movwf	(??_num+0)+0
	movf	(??_num+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	62
	
l2453:	
;bank.c: 62: lcd_cmd(1,0,'*');
	clrf	(?_lcd_cmd)
	movlw	(02Ah)
	movwf	(??_num+0)+0
	movf	(??_num+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	63
	
l2455:	
;bank.c: 63: d[l]=y;
	movf	(num@y),w
	movwf	(??_num+0)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_l),w
	addlw	_d&0ffh
	movwf	fsr0
	movf	(??_num+0)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	64
	
l2457:	
;bank.c: 64: l++;
	movlw	low(01h)
	addwf	(_l),f
	skipnc
	incf	(_l+1),f
	movlw	high(01h)
	addwf	(_l+1),f
	line	65
	
l2459:	
;bank.c: 65: *ptr++;
	movlw	low(01h)
	addwf	(_ptr),f
	skipnc
	incf	(_ptr+1),f
	movlw	high(01h)
	addwf	(_ptr+1),f
	line	66
	
l1074:	
	return
	opt stack 0
GLOBAL	__end_of_num
	__end_of_num:
;; =============== function _num ends ============

	signat	_num,4216
	global	_display
psect	text170,local,class=CODE,delta=2
global __ptext170
__ptext170:

;; *************** function _display *****************
;; Defined at:
;;		line 50 in file "D:\Embedded\pic\code\software\Bank1\bank.c"
;; Parameters:    Size  Location     Type
;;  ptr1            1    wreg     PTR unsigned char 
;;		 -> f(20), e(20), c(20), b(20), 
;;		 -> a(20), 
;; Auto vars:     Size  Location     Type
;;  ptr1            1    6[COMMON] PTR unsigned char 
;;		 -> f(20), e(20), c(20), b(20), 
;;		 -> a(20), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text170
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	50
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;display@ptr1 stored from wreg
	movwf	(display@ptr1)
	line	51
	
l2443:	
;bank.c: 51: while(*ptr1!='\0')
	goto	l2449
	
l1069:	
	line	53
	
l2445:	
;bank.c: 52: {
;bank.c: 53: lcd_cmd(1,0,*ptr1);
	clrf	(?_lcd_cmd)
	movf	(display@ptr1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_display+0)+0
	movf	(??_display+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	54
	
l2447:	
;bank.c: 54: *ptr1++;
	movlw	(01h)
	movwf	(??_display+0)+0
	movf	(??_display+0)+0,w
	addwf	(display@ptr1),f
	goto	l2449
	line	55
	
l1068:	
	line	51
	
l2449:	
	movf	(display@ptr1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2581
	goto	u2580
u2581:
	goto	l2445
u2580:
	goto	l1071
	
l1070:	
	line	56
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,4216
	global	_lcd_cmd
psect	text171,local,class=CODE,delta=2
global __ptext171
__ptext171:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 40 in file "D:\Embedded\pic\code\software\Bank1\bank.c"
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
;;		_display
;;		_num
;;		_main
;; This function uses a non-reentrant model
;;
psect	text171
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	40
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 5
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	41
	
l2431:	
;bank.c: 41: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2541
	goto	u2540
	
u2541:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2554
u2540:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2554:
	line	42
;bank.c: 42: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2561
	goto	u2560
	
u2561:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2574
u2560:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2574:
	line	43
	
l2433:	
;bank.c: 43: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	44
	
l2435:	
;bank.c: 44: RE2=1;
	bsf	(74/8),(74)&7
	line	45
	
l2437:	
;bank.c: 45: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	46
	
l2439:	
;bank.c: 46: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	47
	
l2441:	
;bank.c: 47: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	48
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_timer
psect	text172,local,class=CODE,delta=2
global __ptext172
__ptext172:

;; *************** function _timer *****************
;; Defined at:
;;		line 68 in file "D:\Embedded\pic\code\software\Bank1\bank.c"
;; Parameters:    Size  Location     Type
;;  sec             2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
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
psect	text172
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	68
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 7
; Regs used in _timer: [wreg+status,2+btemp+1]
	line	69
	
l2419:	
;bank.c: 69: while(0<sec)
	goto	l2429
	
l1078:	
	line	71
;bank.c: 70: {
;bank.c: 71: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u2511
	goto	u2510
u2511:
	goto	l2423
u2510:
	line	73
	
l2421:	
;bank.c: 72: {
;bank.c: 73: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l2423
	line	74
	
l1079:	
	line	75
	
l2423:	
;bank.c: 74: }
;bank.c: 75: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	76
;bank.c: 76: if(count==2)
	movlw	02h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u2521
	goto	u2520
u2521:
	goto	l2429
u2520:
	line	78
	
l2425:	
;bank.c: 77: {
;bank.c: 78: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	79
	
l2427:	
;bank.c: 79: sec--;
	movlw	low(-1)
	addwf	(timer@sec),f
	skipnc
	incf	(timer@sec+1),f
	movlw	high(-1)
	addwf	(timer@sec+1),f
	goto	l2429
	line	80
	
l1080:	
	goto	l2429
	line	81
	
l1077:	
	line	69
	
l2429:	
	movf	(timer@sec+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2535
	movlw	low(01h)
	subwf	(timer@sec),w
u2535:

	skipnc
	goto	u2531
	goto	u2530
u2531:
	goto	l1078
u2530:
	goto	l1082
	
l1081:	
	line	82
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,4216
	global	_delay
psect	text173,local,class=CODE,delta=2
global __ptext173
__ptext173:

;; *************** function _delay *****************
;; Defined at:
;;		line 36 in file "D:\Embedded\pic\code\software\Bank1\bank.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
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
psect	text173
	file	"D:\Embedded\pic\code\software\Bank1\bank.c"
	line	36
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	37
	
l2415:	
;bank.c: 37: while(ms--);
	goto	l2417
	
l1060:	
	goto	l2417
	
l1059:	
	
l2417:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2505
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2505:

	skipz
	goto	u2501
	goto	u2500
u2501:
	goto	l2417
u2500:
	goto	l1062
	
l1061:	
	line	38
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text174,local,class=CODE,delta=2
global __ptext174
__ptext174:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
