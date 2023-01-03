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
	FNCALL	_RC,_string
	FNCALL	_RC,_tx
	FNCALL	_RC,_strcmp
	FNCALL	_string,_display
	FNCALL	_display,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_k
	global	_i
	global	_j
	global	_data
	global	_PORTB
psect	text204,local,class=CODE,delta=2
global __ptext204
__ptext204:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
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
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISE
_TRISE	set	137
	global	_TXSTA
_TXSTA	set	152
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_2:	
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_1:	
	retlw	79	;'O'
	retlw	78	;'N'
	retlw	0
psect	strings
	file	"RECEIVE.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

_j:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_k:
       ds      2

_data:
       ds      10

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
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	?_string
?_string:	; 0 bytes @ 0x0
	global	?_tx
?_tx:	; 0 bytes @ 0x0
	global	??_tx
??_tx:	; 0 bytes @ 0x0
	global	?_RC
?_RC:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	1
	global	tx@s
tx@s:	; 1 bytes @ 0x1
	ds	1
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	?_display
?_display:	; 0 bytes @ 0x2
	global	display@b
display@b:	; 1 bytes @ 0x2
	ds	1
	global	display@c
display@c:	; 1 bytes @ 0x3
	ds	1
	global	??_display
??_display:	; 0 bytes @ 0x4
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x4
	ds	1
	global	display@a
display@a:	; 1 bytes @ 0x5
	global	strcmp@s1
strcmp@s1:	; 1 bytes @ 0x5
	ds	1
	global	??_string
??_string:	; 0 bytes @ 0x6
	ds	1
	global	string@data1
string@data1:	; 1 bytes @ 0x7
	ds	1
	global	??_RC
??_RC:	; 0 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	1
;;Data sizes: Strings 7, constant 0, data 0, bss 16, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     10      14
;; BANK0           80      0      12
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strcmp	int  size(1) Largest target is 0
;;
;; strcmp@s2	PTR const unsigned char  size(1) Largest target is 4
;;		 -> STR_2(CODE[4]), STR_1(CODE[3]), 
;;
;; strcmp@s1	PTR const unsigned char  size(1) Largest target is 10
;;		 -> data(BANK0[10]), 
;;
;; tx@s	PTR unsigned char  size(1) Largest target is 10
;;		 -> data(BANK0[10]), 
;;
;; string@data1	PTR unsigned char  size(1) Largest target is 10
;;		 -> data(BANK0[10]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_RC
;;   _RC->_string
;;   _string->_display
;;   _pulse->_delay
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
;; (0) _main                                                 1     1      0     399
;;                                              9 COMMON     1     1      0
;;                            _display
;;                                 _RC
;; ---------------------------------------------------------------------------------
;; (1) _RC                                                   1     1      0     289
;;                                              8 COMMON     1     1      0
;;                             _string
;;                                 _tx
;;                             _strcmp
;; ---------------------------------------------------------------------------------
;; (2) _string                                               2     2      0     155
;;                                              6 COMMON     2     2      0
;;                            _display
;; ---------------------------------------------------------------------------------
;; (3) _display                                              4     2      2     110
;;                                              2 COMMON     4     2      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (4) _pulse                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _strcmp                                               6     4      2      89
;;                                              0 COMMON     6     4      2
;; ---------------------------------------------------------------------------------
;; (2) _tx                                                   2     2      0      45
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (5) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _display
;;     _pulse
;;       _delay
;;   _RC
;;     _string
;;       _display
;;         _pulse
;;           _delay
;;     _tx
;;     _strcmp
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
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0      1A       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       C       5       15.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      1F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 81 in file "D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_display
;;		_RC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
	line	81
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	82
	
l2398:	
;RECEIVE.c: 82: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	83
	
l2400:	
;RECEIVE.c: 83: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	84
	
l2402:	
;RECEIVE.c: 84: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	85
	
l2404:	
;RECEIVE.c: 85: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	86
	
l2406:	
;RECEIVE.c: 86: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	87
	
l2408:	
;RECEIVE.c: 87: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	88
	
l2410:	
;RECEIVE.c: 88: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	89
	
l2412:	
;RECEIVE.c: 89: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	90
	
l2414:	
;RECEIVE.c: 90: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	91
	
l2416:	
;RECEIVE.c: 91: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	92
	
l2418:	
;RECEIVE.c: 92: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	93
	
l2420:	
;RECEIVE.c: 93: display(0,0,0X02);
	clrf	(?_display)
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	94
	
l2422:	
;RECEIVE.c: 94: display(0,0,0X28);
	clrf	(?_display)
	movlw	(028h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	95
	
l2424:	
;RECEIVE.c: 95: display(0,0,0X0F);
	clrf	(?_display)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	96
	
l2426:	
;RECEIVE.c: 96: display(0,0,0X80);
	clrf	(?_display)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	goto	l2428
	line	98
;RECEIVE.c: 98: while(1)
	
l1072:	
	line	100
	
l2428:	
;RECEIVE.c: 99: {
;RECEIVE.c: 100: RC();
	fcall	_RC
	goto	l2428
	line	102
	
l1073:	
	line	98
	goto	l2428
	
l1074:	
	line	103
	
l1075:	
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
;;		line 52 in file "D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_string
;;		_tx
;;		_strcmp
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text205
	file	"D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
	line	52
	global	__size_of_RC
	__size_of_RC	equ	__end_of_RC-_RC
	
_RC:	
	opt	stack 3
; Regs used in _RC: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	53
	
l2372:	
;RECEIVE.c: 53: while(RCIF==0);
	goto	l1062
	
l1063:	
	
l1062:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l1062
u2410:
	goto	l2374
	
l1064:	
	line	54
	
l2374:	
;RECEIVE.c: 54: data[i]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_RC+0)+0
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	(??_RC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	55
	
l2376:	
;RECEIVE.c: 55: RCIF=0;
	bcf	(101/8),(101)&7
	line	56
;RECEIVE.c: 56: if(data[i]!=13)
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	0Dh
	skipnz
	goto	u2421
	goto	u2420
u2421:
	goto	l2380
u2420:
	line	58
	
l2378:	
;RECEIVE.c: 57: {
;RECEIVE.c: 58: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	goto	l2380
	line	59
	
l1065:	
	line	60
	
l2380:	
;RECEIVE.c: 59: }
;RECEIVE.c: 60: if(data[i]==13)
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	0Dh
	skipz
	goto	u2431
	goto	u2430
u2431:
	goto	l1069
u2430:
	line	62
	
l2382:	
;RECEIVE.c: 61: {
;RECEIVE.c: 62: data[i]='\0';
	movf	(_i),w
	addlw	_data&0ffh
	movwf	fsr0
	clrf	indf
	line	63
	
l2384:	
;RECEIVE.c: 63: string(data);
	movlw	(_data)&0ffh
	fcall	_string
	line	64
	
l2386:	
;RECEIVE.c: 64: tx(data);
	movlw	(_data)&0ffh
	fcall	_tx
	line	65
	
l2388:	
;RECEIVE.c: 65: i=0;
	clrf	(_i)
	clrf	(_i+1)
	line	66
	
l2390:	
;RECEIVE.c: 66: if(strcmp(data,"ON")==0)
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	(?_strcmp)
	movlw	(_data)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2394
u2440:
	line	68
	
l2392:	
;RECEIVE.c: 67: {
;RECEIVE.c: 68: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	l2394
	line	69
	
l1067:	
	line	70
	
l2394:	
;RECEIVE.c: 69: }
;RECEIVE.c: 70: if(strcmp(data,"OFF")==0)
	movlw	((STR_2-__stringbase))&0ffh
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	(?_strcmp)
	movlw	(_data)&0ffh
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l1069
u2450:
	line	72
	
l2396:	
;RECEIVE.c: 71: {
;RECEIVE.c: 72: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	goto	l1069
	line	73
	
l1068:	
	goto	l1069
	line	74
	
l1066:	
	line	78
	
l1069:	
	return
	opt stack 0
GLOBAL	__end_of_RC
	__end_of_RC:
;; =============== function _RC ends ============

	signat	_RC,88
	global	_string
psect	text206,local,class=CODE,delta=2
global __ptext206
__ptext206:

;; *************** function _string *****************
;; Defined at:
;;		line 35 in file "D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
;; Parameters:    Size  Location     Type
;;  data1           1    wreg     PTR unsigned char 
;;		 -> data(10), 
;; Auto vars:     Size  Location     Type
;;  data1           1    7[COMMON] PTR unsigned char 
;;		 -> data(10), 
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_display
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text206
	file	"D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
	line	35
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
	
_string:	
	opt	stack 3
; Regs used in _string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;string@data1 stored from wreg
	movwf	(string@data1)
	line	36
	
l2364:	
;RECEIVE.c: 36: while(*data1)
	goto	l2370
	
l1048:	
	line	38
	
l2366:	
;RECEIVE.c: 37: {
;RECEIVE.c: 38: display(1,0,*data1++);
	clrf	(?_display)
	movf	(string@data1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_string+0)+0
	movf	(??_string+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(01h)
	fcall	_display
	
l2368:	
	movlw	(01h)
	movwf	(??_string+0)+0
	movf	(??_string+0)+0,w
	addwf	(string@data1),f
	goto	l2370
	line	39
	
l1047:	
	line	36
	
l2370:	
	movf	(string@data1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l2366
u2400:
	goto	l1050
	
l1049:	
	line	40
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
;; =============== function _string ends ============

	signat	_string,4216
	global	_display
psect	text207,local,class=CODE,delta=2
global __ptext207
__ptext207:

;; *************** function _display *****************
;; Defined at:
;;		line 25 in file "D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] unsigned char 
;;  c               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    5[COMMON] unsigned char 
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
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_string
;;		_main
;; This function uses a non-reentrant model
;;
psect	text207
	file	"D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
	line	25
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 3
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@a stored from wreg
	movwf	(display@a)
	line	26
	
l2354:	
;RECEIVE.c: 26: RE0=a;
	btfsc	(display@a),0
	goto	u2351
	goto	u2350
	
u2351:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2364
u2350:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2364:
	line	27
;RECEIVE.c: 27: RE1=b;
	btfsc	(display@b),0
	goto	u2371
	goto	u2370
	
u2371:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2384
u2370:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2384:
	line	28
	
l2356:	
;RECEIVE.c: 28: PORTB=c;
	movf	(display@c),w
	movwf	(6)	;volatile
	line	29
	
l2358:	
;RECEIVE.c: 29: pulse();
	fcall	_pulse
	line	30
	
l2360:	
;RECEIVE.c: 30: PORTB=c<<4;
	movf	(display@c),w
	movwf	(??_display+0)+0
	movlw	(04h)-1
u2395:
	clrc
	rlf	(??_display+0)+0,f
	addlw	-1
	skipz
	goto	u2395
	clrc
	rlf	(??_display+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	31
	
l2362:	
;RECEIVE.c: 31: pulse();
	fcall	_pulse
	line	33
	
l1044:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,12408
	global	_pulse
psect	text208,local,class=CODE,delta=2
global __ptext208
__ptext208:

;; *************** function _pulse *****************
;; Defined at:
;;		line 18 in file "D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_display
;; This function uses a non-reentrant model
;;
psect	text208
	file	"D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
	line	18
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 3
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	19
	
l2348:	
;RECEIVE.c: 19: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	20
	
l2350:	
;RECEIVE.c: 20: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l2352:	
;RECEIVE.c: 21: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	22
;RECEIVE.c: 22: delay(200);
	movlw	low(0C8h)
	movwf	(?_delay)
	movlw	high(0C8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_strcmp
psect	text209,local,class=CODE,delta=2
global __ptext209
__ptext209:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "../../common/strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              1    wreg     PTR const unsigned char 
;;		 -> data(10), 
;;  s2              1    0[COMMON] PTR const unsigned char 
;;		 -> STR_2(4), STR_1(3), 
;; Auto vars:     Size  Location     Type
;;  s1              1    5[COMMON] PTR const unsigned char 
;;		 -> data(10), 
;;  r               1    4[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text209
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 5
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0+pclath]
;strcmp@s1 stored from wreg
	movwf	(strcmp@s1)
	line	37
	
l2338:	
	goto	l2340
	
l1079:	
	line	38
	goto	l2340
	
l1078:	
	line	37
	
l2340:	
	movf	(strcmp@s1),w
	movwf	fsr
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcmp+0)+0
	movlw	01h
	addwf	(strcmp@s2),f
	movlw	-01h
	addwf	(strcmp@s2),w
	movwf	fsr0
	fcall	stringdir
	xorlw	0ffh
	addlw	1
	addwf	(??_strcmp+0)+0,w
	movwf	(??_strcmp+1)+0
	movf	(??_strcmp+1)+0,w
	movwf	(strcmp@r)
	movf	((strcmp@r)),f
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2344
u2330:
	
l2342:	
	movf	(strcmp@s1),w
	movwf	fsr0
	movlw	01h
	addwf	(strcmp@s1),f
	movf	indf,f
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2340
u2340:
	goto	l2344
	
l1081:	
	goto	l2344
	
l1082:	
	line	39
	
l2344:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1083
	
l2346:	
	line	40
	
l1083:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_tx
psect	text210,local,class=CODE,delta=2
global __ptext210
__ptext210:

;; *************** function _tx *****************
;; Defined at:
;;		line 42 in file "D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
;; Parameters:    Size  Location     Type
;;  s               1    wreg     PTR unsigned char 
;;		 -> data(10), 
;; Auto vars:     Size  Location     Type
;;  s               1    1[COMMON] PTR unsigned char 
;;		 -> data(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text210
	file	"D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
	line	42
	global	__size_of_tx
	__size_of_tx	equ	__end_of_tx-_tx
	
_tx:	
	opt	stack 6
; Regs used in _tx: [wreg-fsr0h+status,2+status,0]
;tx@s stored from wreg
	movwf	(tx@s)
	line	43
	
l2330:	
;RECEIVE.c: 43: while(*s)
	goto	l2336
	
l1054:	
	line	45
	
l2332:	
;RECEIVE.c: 44: {
;RECEIVE.c: 45: TXREG=*s++;
	movf	(tx@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l2334:	
	movlw	(01h)
	movwf	(??_tx+0)+0
	movf	(??_tx+0)+0,w
	addwf	(tx@s),f
	line	46
;RECEIVE.c: 46: while(TXIF==0);
	goto	l1055
	
l1056:	
	
l1055:	
	btfss	(100/8),(100)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l1055
u2310:
	
l1057:	
	line	47
;RECEIVE.c: 47: TXIF=0;
	bcf	(100/8),(100)&7
	goto	l2336
	line	48
	
l1053:	
	line	43
	
l2336:	
	movf	(tx@s),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l2332
u2320:
	goto	l1059
	
l1058:	
	line	49
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_tx
	__end_of_tx:
;; =============== function _tx ends ============

	signat	_tx,4216
	global	_delay
psect	text211,local,class=CODE,delta=2
global __ptext211
__ptext211:

;; *************** function _delay *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
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
;;		_pulse
;; This function uses a non-reentrant model
;;
psect	text211
	file	"D:\Embedded\pic\code\hardware\RECEIVE\RECEIVE.c"
	line	14
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 3
; Regs used in _delay: [wreg]
	line	15
	
l2326:	
;RECEIVE.c: 15: while(ms--);
	goto	l2328
	
l1036:	
	goto	l2328
	
l1035:	
	
l2328:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2305
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2305:

	skipz
	goto	u2301
	goto	u2300
u2301:
	goto	l2328
u2300:
	goto	l1038
	
l1037:	
	line	16
	
l1038:	
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
