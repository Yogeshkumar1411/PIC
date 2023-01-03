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
	FNCALL	_main,_display
	FNCALL	_main,_RC
	FNCALL	_RC,_display
	FNCALL	_RC,_TX
	FNCALL	_RC,_strcpy
	FNCALL	_RC,_strcmp
	FNCALL	_TX,_tx1
	FNCALL	_display,_delay
	FNROOT	_main
	global	_n
	global	_m
psect	idataBANK3,class=CODE,space=0,delta=2
global __pidataBANK3
__pidataBANK3:
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	16

;initializer for _n
	retlw	04Fh
	retlw	046h
	retlw	046h
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
	retlw	0
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	15

;initializer for _m
	retlw	04Fh
	retlw	04Eh
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
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_cmp
	global	_cmp1
	global	_e
	global	_q
	global	_i
	global	_p
	global	_o
	global	_data
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RC1
_RC1	set	57
	global	_RCIF
_RCIF	set	101
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_TXIF
_TXIF	set	100
	global	_SPBRG
_SPBRG	set	153
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"receive.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

_p:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_cmp:
       ds      2

_cmp1:
       ds      2

_e:
       ds      2

_q:
       ds      2

_o:
       ds      56

_data:
       ds      4

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
_m:
       ds      78

psect	dataBANK3,class=BANK3,space=1
global __pdataBANK3
__pdataBANK3:
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	16
_n:
       ds      89

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
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+044h)
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
; Initialize objects allocated to BANK3
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK3
	bsf	status, 7	;select IRP bank2
	movlw low(__pdataBANK3+89)
	movwf btemp-1,f
	movlw high(__pidataBANK3)
	movwf btemp,f
	movlw low(__pidataBANK3)
	movwf btemp+1,f
	movlw low(__pdataBANK3)
	movwf fsr,f
	fcall init_ram
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK1+78)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
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
	global	?_tx1
?_tx1:	; 0 bytes @ 0x0
	global	??_tx1
??_tx1:	; 0 bytes @ 0x0
	global	?_RC
?_RC:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_strcpy
?_strcpy:	; 1 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	tx1@b
tx1@b:	; 1 bytes @ 0x0
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 2 bytes @ 0x0
	ds	1
	global	??_strcpy
??_strcpy:	; 0 bytes @ 0x1
	global	?_TX
?_TX:	; 0 bytes @ 0x1
	global	TX@a
TX@a:	; 2 bytes @ 0x1
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_display
?_display:	; 0 bytes @ 0x2
	global	display@b
display@b:	; 1 bytes @ 0x2
	global	strcpy@to
strcpy@to:	; 1 bytes @ 0x2
	ds	1
	global	??_TX
??_TX:	; 0 bytes @ 0x3
	global	display@c
display@c:	; 1 bytes @ 0x3
	global	strcpy@cp
strcpy@cp:	; 1 bytes @ 0x3
	ds	1
	global	??_display
??_display:	; 0 bytes @ 0x4
	global	display@a
display@a:	; 1 bytes @ 0x4
	ds	2
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x6
	ds	1
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x7
	ds	1
	global	??_RC
??_RC:	; 0 bytes @ 0x8
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xA
	ds	1
;;Data sizes: Strings 0, constant 0, data 167, bss 71, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      14
;; BANK0           80      0      68
;; BANK1           80      0      78
;; BANK3           96      0      89
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(1) Largest target is 56
;;		 -> o(BANK0[56]), 
;;
;; p	PTR int  size(1) Largest target is 0
;;		 -> NULL(NULL[0]), 
;;
;; strcpy@from	PTR const unsigned char  size(1) Largest target is 4
;;		 -> data(BANK0[4]), 
;;
;; strcpy@to	PTR unsigned char  size(1) Largest target is 56
;;		 -> o(BANK0[56]), 
;;
;; strcpy@cp	PTR unsigned char  size(1) Largest target is 56
;;		 -> o(BANK0[56]), 
;;
;; strcmp@s2	PTR const unsigned char  size(2) Largest target is 89
;;		 -> n(BANK3[89]), m(BANK1[78]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 56
;;		 -> o(BANK0[56]), 
;;
;; sp__strcpy	PTR unsigned char  size(1) Largest target is 56
;;		 -> o(BANK0[56]), 
;;
;; TX@a	PTR unsigned char  size(2) Largest target is 512
;;		 -> RAM(DATA[512]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_RC
;;   _RC->_strcmp
;;   _TX->_tx1
;;   _display->_delay
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
;; (0) _main                                                 1     1      0     405
;;                                             10 COMMON     1     1      0
;;                            _display
;;                                 _RC
;; ---------------------------------------------------------------------------------
;; (1) _RC                                                   2     2      0     317
;;                                              8 COMMON     2     2      0
;;                            _display
;;                                 _TX
;;                             _strcpy
;;                             _strcmp
;; ---------------------------------------------------------------------------------
;; (2) _TX                                                   2     0      2      67
;;                                              1 COMMON     2     0      2
;;                                _tx1
;; ---------------------------------------------------------------------------------
;; (2) _display                                              3     1      2      88
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _strcmp                                               8     6      2      89
;;                                              0 COMMON     8     6      2
;; ---------------------------------------------------------------------------------
;; (2) _strcpy                                               4     3      1      73
;;                                              0 COMMON     4     3      1
;; ---------------------------------------------------------------------------------
;; (3) _tx1                                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _display
;;     _delay
;;   _RC
;;     _display
;;       _delay
;;     _TX
;;       _tx1
;;     _strcpy
;;     _strcmp
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BANK3               60      0      59       9       92.7%
;;BITBANK3            60      0       0       8        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;BANK2               60      0       0      11        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               50      0      4E       7       97.5%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      FC      12        0.0%
;;ABS                  0      0      F9       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50      0      44       5       85.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      B       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 80 in file "D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
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
;;		_display
;;		_RC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	80
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	81
	
l2406:	
;receive.c: 81: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	82
	
l2408:	
;receive.c: 82: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	83
	
l2410:	
;receive.c: 83: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	84
	
l2412:	
;receive.c: 84: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	85
	
l2414:	
;receive.c: 85: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	86
	
l2416:	
;receive.c: 86: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	87
	
l2418:	
;receive.c: 87: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	88
	
l2420:	
;receive.c: 88: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	89
	
l2422:	
;receive.c: 89: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	90
	
l2424:	
;receive.c: 90: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	91
	
l2426:	
;receive.c: 91: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	92
	
l2428:	
;receive.c: 92: display(0,0,0X38);
	clrf	(?_display)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	93
	
l2430:	
;receive.c: 93: display(0,0,0X0F);
	clrf	(?_display)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	94
	
l2432:	
;receive.c: 94: display(0,0,0X80);
	clrf	(?_display)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	goto	l2434
	line	95
;receive.c: 95: while(1)
	
l1082:	
	line	97
	
l2434:	
;receive.c: 96: {
;receive.c: 97: RC();
	fcall	_RC
	goto	l2434
	line	98
	
l1083:	
	line	95
	goto	l2434
	
l1084:	
	line	101
	
l2436:	
;receive.c: 98: }
;receive.c: 101: display(0,0,0XC7);
	clrf	(?_display)
	movlw	(0C7h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	102
;receive.c: 102: display(1,0,e+0x30);
	clrf	(?_display)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_e),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(01h)
	fcall	_display
	line	105
	
l1085:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RC
psect	text205,local,class=CODE,delta=2
global __ptext205
__ptext205:

;; *************** function _RC *****************
;; Defined at:
;;		line 47 in file "D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_display
;;		_TX
;;		_strcpy
;;		_strcmp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text205
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	47
	global	__size_of_RC
	__size_of_RC	equ	__end_of_RC-_RC
	
_RC:	
	opt	stack 5
; Regs used in _RC: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	49
	
l2378:	
;receive.c: 49: while(i<3)
	goto	l2390
	
l1071:	
	line	51
;receive.c: 50: {
;receive.c: 51: while(RCIF==0);
	goto	l1072
	
l1073:	
	
l1072:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l1072
u2390:
	goto	l2380
	
l1074:	
	line	52
	
l2380:	
;receive.c: 52: data[i]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_RC+0)+0
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	(??_RC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	53
	
l2382:	
;receive.c: 53: RCIF=0;
	bcf	(101/8),(101)&7
	line	54
	
l2384:	
;receive.c: 54: display(1,0,data[i]);
	clrf	(?_display)
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(01h)
	fcall	_display
	line	55
	
l2386:	
;receive.c: 55: TX(data[i]);
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_RC+0)+0
	movlw	((0x00/2))
	movwf	(??_RC+0)+0+1
	movf	0+(??_RC+0)+0,w
	movwf	(?_TX)
	movf	1+(??_RC+0)+0,w
	movwf	(?_TX+1)
	fcall	_TX
	line	56
	
l2388:	
;receive.c: 56: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	goto	l2390
	line	58
	
l1070:	
	line	49
	
l2390:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(03h)
	subwf	(_i),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l1072
u2400:
	goto	l2392
	
l1075:	
	line	59
	
l2392:	
;receive.c: 58: }
;receive.c: 59: strcpy(o,data);
	movlw	(_data)&0ffh
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	(?_strcpy)
	movlw	(_o)&0ffh
	fcall	_strcpy
	line	60
	
l2394:	
;receive.c: 60: if(data[i]==0x0d)
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	0Dh
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l1079
u2410:
	line	63
	
l2396:	
;receive.c: 61: {
;receive.c: 63: e=(strcmp(o,m)==0);
	movlw	(_m&0ffh)
	movwf	(?_strcmp)
	movlw	(0x1/2)
	movwf	(?_strcmp+1)
	movlw	(_o)&0ffh
	fcall	_strcmp
	movf	(1+(?_strcmp)),w
	iorwf	(0+(?_strcmp)),w
	movlw	0
	skipnz
	movlw	1
	movwf	(??_RC+0)+0
	clrf	(??_RC+0)+0+1
	movf	0+(??_RC+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_e)
	movf	1+(??_RC+0)+0,w
	movwf	(_e+1)
	line	64
;receive.c: 64: q=(strcmp(o,n)!=0);
	movlw	(_n&0ffh)
	movwf	(?_strcmp)
	movlw	(0x3/2)
	movwf	(?_strcmp+1)
	movlw	(_o)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	movlw	0
	skipz
	movlw	1
	movwf	(??_RC+0)+0
	clrf	(??_RC+0)+0+1
	movf	0+(??_RC+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_q)
	movf	1+(??_RC+0)+0,w
	movwf	(_q+1)
	line	65
	
l2398:	
;receive.c: 65: if(e==1)
	movlw	01h
	xorwf	(_e),w
	iorwf	(_e+1),w
	skipz
	goto	u2421
	goto	u2420
u2421:
	goto	l2402
u2420:
	line	68
	
l2400:	
;receive.c: 66: {
;receive.c: 68: RC1=1;
	bsf	(57/8),(57)&7
	goto	l2402
	line	70
	
l1077:	
	line	71
	
l2402:	
;receive.c: 70: }
;receive.c: 71: if(q==1)
	movlw	01h
	xorwf	(_q),w
	iorwf	(_q+1),w
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l1079
u2430:
	line	74
	
l2404:	
;receive.c: 72: {
;receive.c: 74: RC1=0;
	bcf	(57/8),(57)&7
	goto	l1079
	line	75
	
l1078:	
	goto	l1079
	line	77
	
l1076:	
	line	78
	
l1079:	
	return
	opt stack 0
GLOBAL	__end_of_RC
	__end_of_RC:
;; =============== function _RC ends ============

	signat	_RC,88
	global	_TX
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

;; *************** function _TX *****************
;; Defined at:
;;		line 39 in file "D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
;; Parameters:    Size  Location     Type
;;  a               2    1[COMMON] PTR unsigned char 
;;		 -> RAM(512), 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_tx1
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text206
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	39
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 5
; Regs used in _TX: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	40
	
l2370:	
;receive.c: 40: while(*a)
	goto	l2376
	
l1065:	
	line	42
	
l2372:	
;receive.c: 41: {
;receive.c: 42: tx1(*a++);
	movf	(TX@a),w
	movwf	fsr0
	bsf	status,7
	btfss	(TX@a+1),0
	bcf	status,7
	movf	indf,w
	fcall	_tx1
	
l2374:	
	movlw	low(01h)
	addwf	(TX@a),f
	skipnc
	incf	(TX@a+1),f
	movlw	high(01h)
	addwf	(TX@a+1),f
	goto	l2376
	line	43
	
l1064:	
	line	40
	
l2376:	
	movf	(TX@a),w
	movwf	fsr0
	bsf	status,7
	btfss	(TX@a+1),0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u2381
	goto	u2380
u2381:
	goto	l2372
u2380:
	goto	l1067
	
l1066:	
	line	45
	
l1067:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	_display
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _display *****************
;; Defined at:
;;		line 23 in file "D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
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
;;		_RC
;;		_main
;; This function uses a non-reentrant model
;;
psect	text207
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	23
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@a stored from wreg
	movwf	(display@a)
	line	24
	
l2358:	
;receive.c: 24: RE0=a;
	btfsc	(display@a),0
	goto	u2341
	goto	u2340
	
u2341:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2354
u2340:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2354:
	line	25
;receive.c: 25: RE1=b;
	btfsc	(display@b),0
	goto	u2361
	goto	u2360
	
u2361:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2374
u2360:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2374:
	line	26
	
l2360:	
;receive.c: 26: PORTD=c;
	movf	(display@c),w
	movwf	(8)	;volatile
	line	27
	
l2362:	
;receive.c: 27: RE2=1;
	bsf	(74/8),(74)&7
	line	28
	
l2364:	
;receive.c: 28: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l2366:	
;receive.c: 29: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	30
	
l2368:	
;receive.c: 30: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	31
	
l1055:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,12408
	global	_strcmp
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "../../common/strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> o(56), 
;;  s2              2    0[COMMON] PTR const unsigned char 
;;		 -> n(89), m(78), 
;; Auto vars:     Size  Location     Type
;;  s1              1    7[COMMON] PTR const unsigned char 
;;		 -> o(56), 
;;  r               1    6[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text208
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 6
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
l2348:	
	goto	l2350
	
l1089:	
	line	38
	goto	l2350
	
l1088:	
	line	37
	
l2350:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movf	(strcmp@s2+1),w
	movwf	(??_strcmp+1)+0+1
	movf	(strcmp@s2),w
	movwf	(??_strcmp+1)+0
	movlw	(01h)
	addwf	(strcmp@s2),f
	skipnc
	incf	(strcmp@s2+1),f
	movf	0+(??_strcmp+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_strcmp+1)+0,0
	bcf	status,7
	decf	indf,w
	xorlw	0ffh
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+3)+0
	movf	(??_strcmp+3)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l2354
u2320:
	
l2352:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2350
u2330:
	goto	l2354
	
l1091:	
	goto	l2354
	
l1092:	
	line	39
	
l2354:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1093
	
l2356:	
	line	40
	
l1093:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_strcpy
psect	text209,local,class=CODE,delta=2
global __ptext209
__ptext209:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              1    wreg     PTR unsigned char 
;;		 -> o(56), 
;;  from            1    0[COMMON] PTR const unsigned char 
;;		 -> data(4), 
;; Auto vars:     Size  Location     Type
;;  to              1    2[COMMON] PTR unsigned char 
;;		 -> o(56), 
;;  cp              1    3[COMMON] PTR unsigned char 
;;		 -> o(56), 
;; Return value:  Size  Location     Type
;;                  1    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text209
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 6
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0]
;strcpy@to stored from wreg
	line	18
	movwf	(strcpy@to)
	
l2344:	
	movf	(strcpy@to),w
	movwf	(??_strcpy+0)+0
	movf	(??_strcpy+0)+0,w
	movwf	(strcpy@cp)
	line	19
	goto	l2346
	
l1097:	
	line	20
	goto	l2346
	
l1096:	
	line	19
	
l2346:	
	movf	(strcpy@from),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@from),f
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@cp),f
	movf	(??_strcpy+0)+0,w
	movwf	indf
	movf	(indf),f
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l2346
u2310:
	goto	l1099
	
l1098:	
	line	22
;	Return value of _strcpy is never used
	
l1099:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_tx1
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:

;; *************** function _tx1 *****************
;; Defined at:
;;		line 33 in file "D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_TX
;; This function uses a non-reentrant model
;;
psect	text210
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	33
	global	__size_of_tx1
	__size_of_tx1	equ	__end_of_tx1-_tx1
	
_tx1:	
	opt	stack 5
; Regs used in _tx1: [wreg]
;tx1@b stored from wreg
	movwf	(tx1@b)
	line	34
	
l2342:	
;receive.c: 34: TXREG=b;
	movf	(tx1@b),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	35
;receive.c: 35: while(TXIF==0);
	goto	l1058
	
l1059:	
	
l1058:	
	btfss	(100/8),(100)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l1058
u2300:
	
l1060:	
	line	36
;receive.c: 36: TXIF=0;
	bcf	(100/8),(100)&7
	line	37
	
l1061:	
	return
	opt stack 0
GLOBAL	__end_of_tx1
	__end_of_tx1:
;; =============== function _tx1 ends ============

	signat	_tx1,4216
	global	_delay
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:

;; *************** function _delay *****************
;; Defined at:
;;		line 19 in file "D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
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
;;		_display
;; This function uses a non-reentrant model
;;
psect	text211
	file	"D:\Embedded\pic\code\software\protocal\receive_led_string\receive.c"
	line	19
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	20
	
l2338:	
;receive.c: 20: while(ms--);
	goto	l2340
	
l1050:	
	goto	l2340
	
l1049:	
	
l2340:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2295
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2295:

	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l2340
u2290:
	goto	l1052
	
l1051:	
	line	21
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text212,local,class=CODE,delta=2
global __ptext212
__ptext212:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
