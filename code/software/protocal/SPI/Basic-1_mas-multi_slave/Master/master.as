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
	FNCALL	_main,_master1
	FNCALL	_master1,_master
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_PORTA
psect	text85,local,class=CODE,delta=2
global __ptext85
__ptext85:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
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
	retlw	72	;'H'
	retlw	97	;'a'
	retlw	105	;'i'
	retlw	44	;','
	retlw	0
psect	strings
	
STR_3:	
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	0
psect	strings
	
STR_2:	
	retlw	73	;'I'
	retlw	39	;'''
	retlw	109	;'m'
	retlw	0
psect	strings
	file	"master.as"
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
	global	?_master
?_master:	; 0 bytes @ 0x0
	global	??_master
??_master:	; 0 bytes @ 0x0
	global	?_master1
?_master1:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	master@data
master@data:	; 1 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	1
	global	??_master1
??_master1:	; 0 bytes @ 0x1
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	global	master1@ptr
master1@ptr:	; 1 bytes @ 0x2
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
	ds	1
;;Data sizes: Strings 14, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; master1@ptr	PTR unsigned char  size(1) Largest target is 5
;;		 -> STR_3(CODE[5]), STR_2(CODE[4]), STR_1(CODE[5]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_lcd_cmd
;;   _master1->_master
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
;; (0) _main                                                 1     1      0     105
;;                                              5 COMMON     1     1      0
;;                            _lcd_cmd
;;                            _master1
;; ---------------------------------------------------------------------------------
;; (1) _master1                                              2     2      0      45
;;                                              1 COMMON     2     2      0
;;                             _master
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     1      2      60
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _master                                               1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _master1
;;     _master
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
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
;;		line 24 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\master.c"
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
;;		_master1
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\master.c"
	line	24
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	25
	
l2231:	
;master.c: 25: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	26
	
l2233:	
;master.c: 26: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	27
	
l2235:	
;master.c: 27: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	28
	
l2237:	
;master.c: 28: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	29
	
l2239:	
;master.c: 29: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	30
	
l2241:	
;master.c: 30: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	31
	
l2243:	
;master.c: 31: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	32
	
l2245:	
;master.c: 32: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	33
	
l2247:	
;master.c: 33: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	34
;master.c: 34: TRISC=0X10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	35
;master.c: 35: SSPCON=0X30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	36
;master.c: 36: SSPSTAT=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	37
	
l2249:	
;master.c: 37: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	38
	
l2251:	
;master.c: 38: lcd_cmd(0,0,0X0F);
	clrf	(?_lcd_cmd)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	39
	
l2253:	
;master.c: 39: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2255
	line	40
;master.c: 40: while(1)
	
l1049:	
	line	43
	
l2255:	
;master.c: 41: {
;master.c: 43: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1050
u2210:
	line	45
	
l2257:	
;master.c: 44: {
;master.c: 45: RC0=0;
	bcf	(56/8),(56)&7
	line	46
;master.c: 46: RC1=RC2=1;
	bsf	(58/8),(58)&7
	btfsc	(58/8),(58)&7
	goto	u2221
	goto	u2220
	
u2221:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u2234
u2220:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u2234:
	line	47
	
l2259:	
;master.c: 47: master1("Hai,");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_master1
	line	48
;master.c: 48: while(RA0==1);
	goto	l1051
	
l1052:	
	
l1051:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1051
u2240:
	goto	l1050
	
l1053:	
	line	49
	
l1050:	
	line	50
;master.c: 49: }
;master.c: 50: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1054
u2250:
	line	52
	
l2261:	
;master.c: 51: {
;master.c: 52: RC1=0;
	bcf	(57/8),(57)&7
	line	53
;master.c: 53: RC0=RC2=1;
	bsf	(58/8),(58)&7
	btfsc	(58/8),(58)&7
	goto	u2261
	goto	u2260
	
u2261:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	u2274
u2260:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
u2274:
	line	54
	
l2263:	
;master.c: 54: master1("I'm");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_master1
	line	55
;master.c: 55: while(RA1==1);
	goto	l1055
	
l1056:	
	
l1055:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1055
u2280:
	goto	l1054
	
l1057:	
	line	56
	
l1054:	
	line	57
;master.c: 56: }
;master.c: 57: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l2255
u2290:
	line	59
	
l2265:	
;master.c: 58: {
;master.c: 59: RC2=0;
	bcf	(58/8),(58)&7
	line	60
;master.c: 60: RC1=RC0=1;
	bsf	(56/8),(56)&7
	btfsc	(56/8),(56)&7
	goto	u2301
	goto	u2300
	
u2301:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	u2314
u2300:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
u2314:
	line	61
	
l2267:	
;master.c: 61: master1("here");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_master1
	line	62
;master.c: 62: while(RA2==1);
	goto	l1059
	
l1060:	
	
l1059:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1059
u2320:
	goto	l2255
	
l1061:	
	goto	l2255
	line	63
	
l1058:	
	goto	l2255
	line	64
	
l1062:	
	line	40
	goto	l2255
	
l1063:	
	line	65
	
l1064:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_master1
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:

;; *************** function _master1 *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\master.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    wreg     PTR unsigned char 
;;		 -> STR_3(5), STR_2(4), STR_1(5), 
;; Auto vars:     Size  Location     Type
;;  ptr             1    2[COMMON] PTR unsigned char 
;;		 -> STR_3(5), STR_2(4), STR_1(5), 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_master
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text86
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\master.c"
	line	17
	global	__size_of_master1
	__size_of_master1	equ	__end_of_master1-_master1
	
_master1:	
	opt	stack 6
; Regs used in _master1: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;master1@ptr stored from wreg
	movwf	(master1@ptr)
	line	18
	
l2223:	
;master.c: 18: while(*ptr)
	goto	l2229
	
l1044:	
	line	20
	
l2225:	
;master.c: 19: {
;master.c: 20: master(*ptr++);
	movf	(master1@ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_master
	
l2227:	
	movlw	(01h)
	movwf	(??_master1+0)+0
	movf	(??_master1+0)+0,w
	addwf	(master1@ptr),f
	goto	l2229
	line	21
	
l1043:	
	line	18
	
l2229:	
	movf	(master1@ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l2225
u2200:
	goto	l1046
	
l1045:	
	line	22
	
l1046:	
	return
	opt stack 0
GLOBAL	__end_of_master1
	__end_of_master1:
;; =============== function _master1 ends ============

	signat	_master1,4216
	global	_lcd_cmd
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\lcd.h"
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
;;		_lcd_init
;; This function uses a non-reentrant model
;;
psect	text87
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\lcd.h"
	line	10
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	11
	
l2211:	
;lcd.h: 11: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2161
	goto	u2160
	
u2161:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2174
u2160:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2174:
	line	12
;lcd.h: 12: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2181
	goto	u2180
	
u2181:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2194
u2180:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2194:
	line	13
	
l2213:	
;lcd.h: 13: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	14
	
l2215:	
;lcd.h: 14: RE2=1;
	bsf	(74/8),(74)&7
	line	15
	
l2217:	
;lcd.h: 15: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l2219:	
;lcd.h: 16: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	17
	
l2221:	
;lcd.h: 17: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	18
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_master
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _master *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\master.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;		_master1
;; This function uses a non-reentrant model
;;
psect	text88
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\master.c"
	line	10
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 6
; Regs used in _master: [wreg]
;master@data stored from wreg
	movwf	(master@data)
	line	11
	
l1443:	
;master.c: 11: SSPBUF=data;
	movf	(master@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	12
;master.c: 12: while(SSPIF==0);
	goto	l1037
	
l1038:	
	
l1037:	
	btfss	(99/8),(99)&7
	goto	u21
	goto	u20
u21:
	goto	l1037
u20:
	
l1039:	
	line	13
;master.c: 13: SSPIF=0;
	bcf	(99/8),(99)&7
	line	15
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,4216
	global	_delay
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\lcd.h"
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
psect	text89
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-multi_slave\Master\lcd.h"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	7
	
l1437:	
;lcd.h: 7: while(ms--);
	goto	l1439
	
l1026:	
	goto	l1439
	
l1025:	
	
l1439:	
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
	goto	l1439
u10:
	goto	l1028
	
l1027:	
	line	8
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
