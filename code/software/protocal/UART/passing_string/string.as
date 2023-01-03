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
	FNCALL	_TX,_delay
	FNCALL	_TX,_lcd_cmd
	FNCALL	_lcd_cmd,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_PORTB
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTE
_PORTE	set	9
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
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
	
STR_1:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	104	;'h'
	retlw	107	;'k'
	retlw	117	;'u'
	retlw	109	;'m'
	retlw	97	;'a'
	retlw	114	;'r'
	retlw	0
psect	strings
	file	"string.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

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
	global	?_TX
?_TX:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 2 bytes @ 0x2
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x2
	ds	1
	global	lcd_cmd@d
lcd_cmd@d:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	ds	1
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x5
	ds	1
	global	??_TX
??_TX:	; 0 bytes @ 0x6
	ds	1
	global	TX@a
TX@a:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
;;Data sizes: Strings 12, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; TX@a	PTR unsigned char  size(1) Largest target is 12
;;		 -> STR_1(CODE[12]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_TX
;;   _TX->_lcd_cmd
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
;; (0) _main                                                 1     1      0     210
;;                                              8 COMMON     1     1      0
;;                            _lcd_cmd
;;                                 _TX
;; ---------------------------------------------------------------------------------
;; (1) _TX                                                   2     2      0     135
;;                                              6 COMMON     2     2      0
;;                              _delay
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              4     2      2      75
;;                                              2 COMMON     4     2      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                0     0      0      15
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (4) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _pulse
;;       _delay
;;   _TX
;;     _delay
;;     _lcd_cmd
;;       _pulse
;;         _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      9       9       1       64.3%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 42 in file "D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_cmd
;;		_TX
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
	line	42
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	43
	
l2223:	
;string.c: 43: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	44
;string.c: 44: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	45
;string.c: 45: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	46
;string.c: 46: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	47
;string.c: 47: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	48
;string.c: 48: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	49
;string.c: 49: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	50
;string.c: 50: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	51
	
l2225:	
;string.c: 51: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	52
	
l2227:	
;string.c: 52: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	53
	
l2229:	
;string.c: 53: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	54
	
l2231:	
;string.c: 54: lcd_cmd(0,0,0X20);
	clrf	(?_lcd_cmd)
	movlw	(020h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	55
	
l2233:	
;string.c: 55: lcd_cmd(0,0,0X28);
	clrf	(?_lcd_cmd)
	movlw	(028h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	56
	
l2235:	
;string.c: 56: lcd_cmd(0,0,0X0E);
	clrf	(?_lcd_cmd)
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	57
	
l2237:	
;string.c: 57: lcd_cmd(0,0,0x80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2239
	line	58
;string.c: 58: while(1)
	
l1046:	
	line	60
	
l2239:	
;string.c: 59: {
;string.c: 60: TX("Yogeshkumar");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_TX
	goto	l1048
	line	61
;string.c: 61: while(1);
	
l1047:	
	
l1048:	
	goto	l1048
	
l1049:	
	goto	l2239
	line	62
	
l1050:	
	line	58
	goto	l2239
	
l1051:	
	line	64
	
l1052:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_TX
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _TX *****************
;; Defined at:
;;		line 30 in file "D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  a               1    7[COMMON] PTR unsigned char 
;;		 -> STR_1(12), 
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
;;		_delay
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
	line	30
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 4
; Regs used in _TX: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;TX@a stored from wreg
	movwf	(TX@a)
	line	31
	
l2211:	
;string.c: 31: while(*a)
	goto	l2221
	
l1038:	
	line	33
	
l2213:	
;string.c: 32: {
;string.c: 33: TXREG=*a++;
	movf	(TX@a),w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	
l2215:	
	movlw	(01h)
	movwf	(??_TX+0)+0
	movf	(??_TX+0)+0,w
	addwf	(TX@a),f
	line	34
;string.c: 34: while(TXIF==0);
	goto	l1039
	
l1040:	
	
l1039:	
	btfss	(100/8),(100)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1039
u2200:
	
l1041:	
	line	35
;string.c: 35: TXIF=0;
	bcf	(100/8),(100)&7
	line	36
	
l2217:	
;string.c: 36: delay(75);
	movlw	low(04Bh)
	movwf	(?_delay)
	movlw	high(04Bh)
	movwf	((?_delay))+1
	fcall	_delay
	line	37
	
l2219:	
;string.c: 37: lcd_cmd(1,0,*a);
	clrf	(?_lcd_cmd)
	movf	(TX@a),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_TX+0)+0
	movf	(??_TX+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	goto	l2221
	line	38
	
l1037:	
	line	31
	
l2221:	
	movf	(TX@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l2213
u2210:
	goto	l1043
	
l1042:	
	line	39
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	_lcd_cmd
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 21 in file "D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
;; Parameters:    Size  Location     Type
;;  b               1    wreg     unsigned char 
;;  c               1    2[COMMON] unsigned char 
;;  d               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  b               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[COMMON] int 
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
;;		_TX
;;		_main
;; This function uses a non-reentrant model
;;
psect	text92
	file	"D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
	line	21
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 4
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@b stored from wreg
	movwf	(lcd_cmd@b)
	line	22
	
l2201:	
;string.c: 22: RE0=b;
	btfsc	(lcd_cmd@b),0
	goto	u2151
	goto	u2150
	
u2151:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2164
u2150:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2164:
	line	23
;string.c: 23: RE1=c;
	btfsc	(lcd_cmd@c),0
	goto	u2171
	goto	u2170
	
u2171:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2184
u2170:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2184:
	line	24
	
l2203:	
;string.c: 24: PORTB=d&0XF0;
	movf	(lcd_cmd@d),w
	andlw	0F0h
	movwf	(6)	;volatile
	line	25
	
l2205:	
;string.c: 25: pulse();
	fcall	_pulse
	line	26
	
l2207:	
;string.c: 26: PORTB=(d&0X0F)<<4;
	movf	(lcd_cmd@d),w
	andlw	0Fh
	movwf	(??_lcd_cmd+0)+0
	movlw	(04h)-1
u2195:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u2195
	clrc
	rlf	(??_lcd_cmd+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	27
	
l2209:	
;string.c: 27: pulse();
	fcall	_pulse
	line	28
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12410
	global	_pulse
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _pulse *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
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
;;		_lcd_cmd
;; This function uses a non-reentrant model
;;
psect	text93
	file	"D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
	line	14
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l2195:	
;string.c: 15: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	16
	
l2197:	
;string.c: 16: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	17
	
l2199:	
;string.c: 17: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	18
;string.c: 18: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	19
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	_delay
psect	text94,local,class=CODE,delta=2
global __ptext94
__ptext94:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
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
;;		_TX
;; This function uses a non-reentrant model
;;
psect	text94
	file	"D:\Embedded\pic\code\software\protocal\UART\passing_string\string.c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg]
	line	11
	
l1425:	
;string.c: 11: while(ms--);
	goto	l1427
	
l1026:	
	goto	l1427
	
l1025:	
	
l1427:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1427
u10:
	goto	l1028
	
l1027:	
	line	12
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
