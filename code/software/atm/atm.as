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
	FNCALL	_main,_TX
	FNCALL	_main,_TX1
	FNCALL	_main,_RC
	FNCALL	_RC,_TX1
	FNCALL	_RC,_strcpy
	FNCALL	_RC,_strcmp
	FNCALL	_RC,_TX
	FNCALL	_TX,_TX1
	FNCALL	_TX1,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_a
psect	idataCOMMON,class=CODE,space=0,delta=2
global __pidataCOMMON
__pidataCOMMON:
	file	"D:\Embedded\pic\code\software\atm\atm.c"
	line	7

;initializer for _a
	retlw	0Dh
	global	_i
	global	_rec
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
	
STR_5:	
	retlw	69	;'E'
	retlw	110	;'n'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	85	;'U'
	retlw	83	;'S'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	32	;' '
	retlw	73	;'I'
	retlw	68	;'D'
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	97	;'a'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	119	;'w'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_3:	
	retlw	73	;'I'
	retlw	110	;'n'
	retlw	118	;'v'
	retlw	97	;'a'
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	100	;'d'
	retlw	0
psect	strings
	
STR_4:	
	retlw	87	;'W'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	99	;'c'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_1:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	0
psect	strings
	file	"atm.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_i:
       ds      2

psect	dataCOMMON,class=COMMON,space=1
global __pdataCOMMON
__pdataCOMMON:
	file	"D:\Embedded\pic\code\software\atm\atm.c"
_a:
       ds      1

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_rec:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
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
; Initialize objects allocated to COMMON
	global __pidataCOMMON
psect cinit,class=CODE,delta=2
	fcall	__pidataCOMMON+0		;fetch initializer
	movwf	__pdataCOMMON+0&07fh		
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
	global	?_TX
?_TX:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_strcpy
?_strcpy:	; 2 bytes @ 0x0
	global	?_strcmp
?_strcmp:	; 2 bytes @ 0x0
	global	?_TX1
?_TX1:	; 2 bytes @ 0x0
	global	?_RC
?_RC:	; 2 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	strcmp@s1
strcmp@s1:	; 2 bytes @ 0x0
	global	strcpy@to
strcpy@to:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	global	strcmp@s2
strcmp@s2:	; 1 bytes @ 0x2
	global	strcpy@from
strcpy@from:	; 1 bytes @ 0x2
	ds	1
	global	??_strcpy
??_strcpy:	; 0 bytes @ 0x3
	global	??_strcmp
??_strcmp:	; 0 bytes @ 0x3
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
	ds	1
	global	??_TX1
??_TX1:	; 0 bytes @ 0x5
	global	strcmp@r
strcmp@r:	; 1 bytes @ 0x5
	ds	1
	global	TX1@data
TX1@data:	; 1 bytes @ 0x6
	global	strcpy@cp
strcpy@cp:	; 2 bytes @ 0x6
	ds	1
	global	??_TX
??_TX:	; 0 bytes @ 0x7
	ds	1
	global	TX@p
TX@p:	; 1 bytes @ 0x8
	ds	1
	global	??_RC
??_RC:	; 0 bytes @ 0x9
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xA
	global	RC@str
RC@str:	; 0 bytes @ 0xA
	ds	1
;;Data sizes: Strings 50, constant 0, data 1, bss 12, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      14
;; BANK0           80      0      10
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_strcmp	int  size(1) Largest target is 0
;;
;; ?_strcpy	PTR unsigned char  size(2) Largest target is 0
;;		 -> RC@str(COMMON[0]), 
;;
;; strcpy@from	PTR const unsigned char  size(1) Largest target is 10
;;		 -> rec(BANK0[10]), 
;;
;; strcpy@to	PTR unsigned char  size(2) Largest target is 0
;;		 -> RC@str(COMMON[0]), 
;;
;; strcpy@cp	PTR unsigned char  size(2) Largest target is 0
;;		 -> RC@str(COMMON[0]), 
;;
;; strcmp@s2	PTR const unsigned char  size(1) Largest target is 7
;;		 -> STR_1(CODE[7]), 
;;
;; strcmp@s1	PTR const unsigned char  size(2) Largest target is 0
;;		 -> RC@str(COMMON[0]), 
;;
;; sp__strcpy	PTR unsigned char  size(2) Largest target is 0
;;		 -> RC@str(COMMON[0]), 
;;
;; TX@p	PTR unsigned char  size(1) Largest target is 18
;;		 -> STR_5(CODE[18]), STR_4(CODE[8]), STR_3(CODE[8]), STR_2(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_RC
;;   _RC->_TX
;;   _TX->_TX1
;;   _TX1->_lcd_cmd
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
;; (0) _main                                                 1     1      0     916
;;                                             10 COMMON     1     1      0
;;                            _lcd_cmd
;;                                 _TX
;;                                _TX1
;;                                 _RC
;; ---------------------------------------------------------------------------------
;; (1) _RC                                                   1     1      0     519
;;                                              9 COMMON     1     1      0
;;                                _TX1
;;                             _strcpy
;;                             _strcmp
;;                                 _TX
;; ---------------------------------------------------------------------------------
;; (2) _TX                                                   2     2      0     177
;;                                              7 COMMON     2     2      0
;;                                _TX1
;; ---------------------------------------------------------------------------------
;; (3) _TX1                                                  2     2      0     132
;;                                              5 COMMON     2     2      0
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (4) _lcd_cmd                                              3     1      2      88
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _strcmp                                               6     3      3      89
;;                                              0 COMMON     6     3      3
;; ---------------------------------------------------------------------------------
;; (2) _strcpy                                               8     5      3      73
;;                                              0 COMMON     8     5      3
;; ---------------------------------------------------------------------------------
;; (5) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 5
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _TX
;;     _TX1
;;       _lcd_cmd
;;         _delay
;;   _TX1
;;     _lcd_cmd
;;       _delay
;;   _RC
;;     _TX1
;;       _lcd_cmd
;;         _delay
;;     _strcpy
;;     _strcmp
;;     _TX
;;       _TX1
;;         _lcd_cmd
;;           _delay
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
;;DATA                 0      0      1D      12        0.0%
;;ABS                  0      0      18       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50      0       A       5       12.5%
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
;;		line 54 in file "D:\Embedded\pic\code\software\atm\atm.c"
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
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_cmd
;;		_TX
;;		_TX1
;;		_RC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\atm\atm.c"
	line	54
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l2395:	
;atm.c: 55: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	56
	
l2397:	
;atm.c: 56: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	57
	
l2399:	
;atm.c: 57: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	58
	
l2401:	
;atm.c: 58: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	59
	
l2403:	
;atm.c: 59: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	60
	
l2405:	
;atm.c: 60: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	61
	
l2407:	
;atm.c: 61: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	62
	
l2409:	
;atm.c: 62: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	63
	
l2411:	
;atm.c: 63: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	64
	
l2413:	
;atm.c: 64: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	65
	
l2415:	
;atm.c: 65: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	66
	
l2417:	
;atm.c: 66: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	67
	
l2419:	
;atm.c: 67: lcd_cmd(0,0,0X0F);
	clrf	(?_lcd_cmd)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	68
	
l2421:	
;atm.c: 68: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2423
	line	69
;atm.c: 69: while(1)
	
l1068:	
	line	71
	
l2423:	
;atm.c: 70: {
;atm.c: 71: TX("Welcome");
	movlw	((STR_4-__stringbase))&0ffh
	fcall	_TX
	line	72
	
l2425:	
;atm.c: 72: TX1(a);
	movf	(_a),w
	fcall	_TX1
	line	73
	
l2427:	
;atm.c: 73: TX("Enter the USER ID");
	movlw	((STR_5-__stringbase))&0ffh
	fcall	_TX
	line	74
	
l2429:	
;atm.c: 74: RC();
	fcall	_RC
	goto	l1070
	line	75
;atm.c: 75: while(1);
	
l1069:	
	
l1070:	
	goto	l1070
	
l1071:	
	goto	l2423
	line	77
	
l1072:	
	line	69
	goto	l2423
	
l1073:	
	line	78
	
l1074:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RC
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function _RC *****************
;; Defined at:
;;		line 25 in file "D:\Embedded\pic\code\software\atm\atm.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  str             0   10[COMMON] unsigned char [0]
;; Return value:  Size  Location     Type
;;                  2  1055[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
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
;;		_TX1
;;		_strcpy
;;		_strcmp
;;		_TX
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text181
	file	"D:\Embedded\pic\code\software\atm\atm.c"
	line	25
	global	__size_of_RC
	__size_of_RC	equ	__end_of_RC-_RC
	
_RC:	
	opt	stack 3
; Regs used in _RC: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	27
	
l2371:	
;atm.c: 26: char str[];
;atm.c: 27: TX1(a);
	movf	(_a),w
	fcall	_TX1
	line	28
;atm.c: 28: while(i<7)
	goto	l2387
	
l1057:	
	line	30
;atm.c: 29: {
;atm.c: 30: while(RCIF==0);
	goto	l1058
	
l1059:	
	
l1058:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l1058
u2380:
	goto	l2373
	
l1060:	
	line	31
	
l2373:	
;atm.c: 31: rec[i]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_RC+0)+0
	movf	(_i),w
	addlw	_rec&0ffh
	movwf	fsr0
	movf	(??_RC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	32
	
l2375:	
;atm.c: 32: RCIF=0;
	bcf	(101/8),(101)&7
	line	33
	
l2377:	
;atm.c: 33: TX1('*');
	movlw	(02Ah)
	fcall	_TX1
	line	34
	
l2379:	
;atm.c: 34: if(rec[i]==a)
	movf	(_i),w
	addlw	_rec&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorwf	(_a),w
	skipz
	goto	u2391
	goto	u2390
u2391:
	goto	l2385
u2390:
	goto	l2389
	line	36
	
l2381:	
;atm.c: 35: {
;atm.c: 36: break;
	goto	l2389
	line	37
	
l2383:	
;atm.c: 37: i=0;
	clrf	(_i)
	clrf	(_i+1)
	goto	l2385
	line	38
	
l1061:	
	line	39
	
l2385:	
;atm.c: 38: }
;atm.c: 39: i++;
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	goto	l2387
	line	40
	
l1056:	
	line	28
	
l2387:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(07h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2405
	movlw	low(07h)
	subwf	(_i),w
u2405:

	skipc
	goto	u2401
	goto	u2400
u2401:
	goto	l1058
u2400:
	goto	l2389
	
l1062:	
	line	41
	
l2389:	
;atm.c: 40: }
;atm.c: 41: strcpy(str,rec);
	movlw	low(RC@str)
	movwf	(?_strcpy)
	movlw	high(RC@str)
	movwf	((?_strcpy))+1
	movlw	(_rec)&0ffh
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	0+(?_strcpy)+02h
	fcall	_strcpy
	line	43
;atm.c: 43: if(strcmp(str,"Yogesh")==0)
	movlw	low(RC@str)
	movwf	(?_strcmp)
	movlw	high(RC@str)
	movwf	((?_strcmp))+1
	movlw	((STR_1-__stringbase))&0ffh
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	0+(?_strcmp)+02h
	fcall	_strcmp
	movf	((1+(?_strcmp))),w
	iorwf	((0+(?_strcmp))),w
	skipz
	goto	u2411
	goto	u2410
u2411:
	goto	l2393
u2410:
	line	45
	
l2391:	
;atm.c: 44: {
;atm.c: 45: TX("Password");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_TX
	line	46
;atm.c: 46: }
	goto	l1065
	line	47
	
l1063:	
	line	49
	
l2393:	
;atm.c: 47: else
;atm.c: 48: {
;atm.c: 49: TX("Invalid");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_TX
	goto	l1065
	line	50
	
l1064:	
	line	51
	
l1065:	
	return
	opt stack 0
GLOBAL	__end_of_RC
	__end_of_RC:
;; =============== function _RC ends ============

	signat	_RC,90
	global	_TX
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

;; *************** function _TX *****************
;; Defined at:
;;		line 18 in file "D:\Embedded\pic\code\software\atm\atm.c"
;; Parameters:    Size  Location     Type
;;  p               1    wreg     PTR unsigned char 
;;		 -> STR_5(18), STR_4(8), STR_3(8), STR_2(9), 
;; Auto vars:     Size  Location     Type
;;  p               1    8[COMMON] PTR unsigned char 
;;		 -> STR_5(18), STR_4(8), STR_3(8), STR_2(9), 
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
;;		_TX1
;; This function is called by:
;;		_RC
;;		_main
;; This function uses a non-reentrant model
;;
psect	text182
	file	"D:\Embedded\pic\code\software\atm\atm.c"
	line	18
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 3
; Regs used in _TX: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;TX@p stored from wreg
	movwf	(TX@p)
	line	19
	
l2363:	
;atm.c: 19: while(*p)
	goto	l2369
	
l1051:	
	line	21
	
l2365:	
;atm.c: 20: {
;atm.c: 21: TX1(*p++);
	movf	(TX@p),w
	movwf	fsr0
	fcall	stringdir
	fcall	_TX1
	
l2367:	
	movlw	(01h)
	movwf	(??_TX+0)+0
	movf	(??_TX+0)+0,w
	addwf	(TX@p),f
	goto	l2369
	line	22
	
l1050:	
	line	19
	
l2369:	
	movf	(TX@p),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2371
	goto	u2370
u2371:
	goto	l2365
u2370:
	goto	l1053
	
l1052:	
	line	23
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	_TX1
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

;; *************** function _TX1 *****************
;; Defined at:
;;		line 11 in file "D:\Embedded\pic\code\software\atm\atm.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    6[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2  1043[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_TX
;;		_RC
;;		_main
;; This function uses a non-reentrant model
;;
psect	text183
	file	"D:\Embedded\pic\code\software\atm\atm.c"
	line	11
	global	__size_of_TX1
	__size_of_TX1	equ	__end_of_TX1-_TX1
	
_TX1:	
	opt	stack 3
; Regs used in _TX1: [wreg+status,2+status,0+pclath+cstack]
;TX1@data stored from wreg
	movwf	(TX1@data)
	line	12
	
l2359:	
;atm.c: 12: TXREG=data;
	movf	(TX1@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	13
;atm.c: 13: while(TXIF==0);
	goto	l1044
	
l1045:	
	
l1044:	
	btfss	(100/8),(100)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l1044
u2360:
	
l1046:	
	line	14
;atm.c: 14: TXIF=0;
	bcf	(100/8),(100)&7
	line	15
	
l2361:	
;atm.c: 15: lcd_cmd(1,0,data);
	clrf	(?_lcd_cmd)
	movf	(TX1@data),w
	movwf	(??_TX1+0)+0
	movf	(??_TX1+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	16
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_TX1
	__end_of_TX1:
;; =============== function _TX1 ends ============

	signat	_TX1,4218
	global	_lcd_cmd
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\atm\lcd.h"
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
;;		_TX1
;;		_main
;; This function uses a non-reentrant model
;;
psect	text184
	file	"D:\Embedded\pic\code\software\atm\lcd.h"
	line	10
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 3
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	11
	
l2347:	
;lcd.h: 11: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2321
	goto	u2320
	
u2321:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2334
u2320:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2334:
	line	12
;lcd.h: 12: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2341
	goto	u2340
	
u2341:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2354
u2340:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2354:
	line	13
	
l2349:	
;lcd.h: 13: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	14
	
l2351:	
;lcd.h: 14: RE2=1;
	bsf	(74/8),(74)&7
	line	15
	
l2353:	
;lcd.h: 15: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l2355:	
;lcd.h: 16: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	17
	
l2357:	
;lcd.h: 17: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	18
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_strcmp
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

;; *************** function _strcmp *****************
;; Defined at:
;;		line 34 in file "../../common/strcmp.c"
;; Parameters:    Size  Location     Type
;;  s1              2    0[COMMON] PTR const unsigned char 
;;		 -> RC@str(0), 
;;  s2              1    2[COMMON] PTR const unsigned char 
;;		 -> STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  r               1    5[COMMON] char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
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
psect	text185
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\strcmp.c"
	line	34
	global	__size_of_strcmp
	__size_of_strcmp	equ	__end_of_strcmp-_strcmp
	
_strcmp:	
	opt	stack 5
; Regs used in _strcmp: [wreg-fsr0h+status,2+status,0+pclath]
	line	37
	
l2337:	
	goto	l2339
	
l1078:	
	line	38
	goto	l2339
	
l1077:	
	line	37
	
l2339:	
	movf	(strcmp@s1),w
	movwf	fsr0
	bsf	status,7
	btfss	(strcmp@s1+1),0
	bcf	status,7
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
	goto	u2301
	goto	u2300
u2301:
	goto	l2343
u2300:
	
l2341:	
	movf	(strcmp@s1+1),w
	movwf	(??_strcmp+0)+0+1
	movf	(strcmp@s1),w
	movwf	(??_strcmp+0)+0
	movlw	(01h)
	addwf	(strcmp@s1),f
	skipnc
	incf	(strcmp@s1+1),f
	movf	0+(??_strcmp+0)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_strcmp+0)+0,0
	bcf	status,7
	movf	indf,f
	skipz
	goto	u2311
	goto	u2310
u2311:
	goto	l2339
u2310:
	goto	l2343
	
l1080:	
	goto	l2343
	
l1081:	
	line	39
	
l2343:	
	movf	(strcmp@r),w
	movwf	(?_strcmp)
	clrf	(?_strcmp+1)
	btfsc	(?_strcmp),7
	decf	(?_strcmp+1),f
	goto	l1082
	
l2345:	
	line	40
	
l1082:	
	return
	opt stack 0
GLOBAL	__end_of_strcmp
	__end_of_strcmp:
;; =============== function _strcmp ends ============

	signat	_strcmp,8314
	global	_strcpy
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:

;; *************** function _strcpy *****************
;; Defined at:
;;		line 10 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\strcpy.c"
;; Parameters:    Size  Location     Type
;;  to              2    0[COMMON] PTR unsigned char 
;;		 -> RC@str(0), 
;;  from            1    2[COMMON] PTR const unsigned char 
;;		 -> rec(10), 
;; Auto vars:     Size  Location     Type
;;  cp              2    6[COMMON] PTR unsigned char 
;;		 -> RC@str(0), 
;; Return value:  Size  Location     Type
;;                  2    wreg      PTR unsigned char 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text186
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\strcpy.c"
	line	10
	global	__size_of_strcpy
	__size_of_strcpy	equ	__end_of_strcpy-_strcpy
	
_strcpy:	
	opt	stack 6
; Regs used in _strcpy: [wreg-fsr0h+status,2+status,0]
	line	18
	
l2333:	
	movf	(strcpy@to+1),w
	clrf	(strcpy@cp+1)
	addwf	(strcpy@cp+1)
	movf	(strcpy@to),w
	clrf	(strcpy@cp)
	addwf	(strcpy@cp)

	line	19
	goto	l2335
	
l1086:	
	line	20
	goto	l2335
	
l1085:	
	line	19
	
l2335:	
	movf	(strcpy@from),w
	movwf	fsr0
	movlw	01h
	addwf	(strcpy@from),f
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_strcpy+0)+0
	movf	(strcpy@cp+1),w
	movwf	(??_strcpy+1)+0+1
	movf	(strcpy@cp),w
	movwf	(??_strcpy+1)+0
	movlw	(01h)
	addwf	(strcpy@cp),f
	skipnc
	incf	(strcpy@cp+1),f
	movf	0+(??_strcpy+1)+0,w
	movwf	fsr0
	bsf	status,7
	btfss	1+(??_strcpy+1)+0,0
	bcf	status,7
	movf	(??_strcpy+0)+0,w
	movwf	indf
	movf	(indf),f
	skipz
	goto	u2291
	goto	u2290
u2291:
	goto	l2335
u2290:
	goto	l1088
	
l1087:	
	line	22
;	Return value of _strcpy is never used
	
l1088:	
	return
	opt stack 0
GLOBAL	__end_of_strcpy
	__end_of_strcpy:
;; =============== function _strcpy ends ============

	signat	_strcpy,8313
	global	_delay
psect	text187,local,class=CODE,delta=2
global __ptext187
__ptext187:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\software\atm\lcd.h"
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
psect	text187
	file	"D:\Embedded\pic\code\software\atm\lcd.h"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 3
; Regs used in _delay: [wreg]
	line	7
	
l2329:	
;lcd.h: 7: while(ms--);
	goto	l2331
	
l1036:	
	goto	l2331
	
l1035:	
	
l2331:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2285
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2285:

	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l2331
u2280:
	goto	l1038
	
l1037:	
	line	8
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text188,local,class=CODE,delta=2
global __ptext188
__ptext188:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
