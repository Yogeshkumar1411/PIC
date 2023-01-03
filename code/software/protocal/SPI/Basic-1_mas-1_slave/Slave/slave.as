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
	FNCALL	_main,_slave
	FNCALL	_slave,_lcd_cmd
	FNCALL	_lcd_cmd,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_PORTA
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTE
_PORTE	set	9
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
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
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"slave.as"
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
	global	?_slave
?_slave:	; 0 bytes @ 0x0
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
?_lcd_cmd:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	ds	1
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	ds	1
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x5
	ds	1
	global	??_slave
??_slave:	; 0 bytes @ 0x6
	ds	1
	global	slave@data
slave@data:	; 1 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      9       9
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_slave
;;   _slave->_lcd_cmd
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
;; (0) _main                                                 1     1      0     165
;;                                              8 COMMON     1     1      0
;;                            _lcd_cmd
;;                              _slave
;; ---------------------------------------------------------------------------------
;; (1) _slave                                                2     2      0      90
;;                                              6 COMMON     2     2      0
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
;;   _slave
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
;;		line 16 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\slave.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_slave
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\slave.c"
	line	16
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	17
	
l2209:	
;slave.c: 17: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	18
	
l2211:	
;slave.c: 18: TRISA=0X20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	19
	
l2213:	
;slave.c: 19: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	20
;slave.c: 20: TRISC=0X18;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	21
	
l2215:	
;slave.c: 21: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	22
	
l2217:	
;slave.c: 22: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	23
	
l2219:	
;slave.c: 23: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	24
	
l2221:	
;slave.c: 24: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	25
	
l2223:	
;slave.c: 25: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	26
	
l2225:	
;slave.c: 26: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	27
	
l2227:	
;slave.c: 27: lcd_cmd(0,0,0X02);
	clrf	(?_lcd_cmd)
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	28
	
l2229:	
;slave.c: 28: lcd_cmd(0,0,0X28);
	clrf	(?_lcd_cmd)
	movlw	(028h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	29
	
l2231:	
;slave.c: 29: lcd_cmd(0,0,0X0F);
	clrf	(?_lcd_cmd)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	30
	
l2233:	
;slave.c: 30: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	32
;slave.c: 32: SSPCON=0X34;
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	33
	
l2235:	
;slave.c: 33: SSPSTAT=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	goto	l2237
	line	34
;slave.c: 34: while(1)
	
l1043:	
	line	36
	
l2237:	
;slave.c: 35: {
;slave.c: 36: slave();
	fcall	_slave
	goto	l2237
	line	37
	
l1044:	
	line	34
	goto	l2237
	
l1045:	
	line	38
	
l1046:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_slave
psect	text91,local,class=CODE,delta=2
global __ptext91
__ptext91:

;; *************** function _slave *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\slave.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    7[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text91
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\slave.c"
	line	7
	global	__size_of_slave
	__size_of_slave	equ	__end_of_slave-_slave
	
_slave:	
	opt	stack 4
; Regs used in _slave: [wreg+status,2+status,0+pclath+cstack]
	line	9
	
l2201:	
;slave.c: 8: char data;
;slave.c: 9: while(SSPIF==0);
	goto	l1037
	
l1038:	
	
l1037:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1037
u2200:
	goto	l2203
	
l1039:	
	line	10
	
l2203:	
;slave.c: 10: data=SSPBUF;
	movf	(19),w	;volatile
	movwf	(??_slave+0)+0
	movf	(??_slave+0)+0,w
	movwf	(slave@data)
	line	11
	
l2205:	
;slave.c: 11: SSPIF=0;
	bcf	(99/8),(99)&7
	line	12
	
l2207:	
;slave.c: 12: lcd_cmd(1,0,data);
	clrf	(?_lcd_cmd)
	movf	(slave@data),w
	movwf	(??_slave+0)+0
	movf	(??_slave+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	14
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_slave
	__end_of_slave:
;; =============== function _slave ends ============

	signat	_slave,88
	global	_lcd_cmd
psect	text92,local,class=CODE,delta=2
global __ptext92
__ptext92:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\lcd.h"
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
;;		_slave
;;		_main
;; This function uses a non-reentrant model
;;
psect	text92
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\lcd.h"
	line	17
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 4
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	18
	
l2191:	
;lcd.h: 18: RE0=a;
	btfsc	(lcd_cmd@a),0
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
	line	19
;lcd.h: 19: RE1=b;
	btfsc	(lcd_cmd@b),0
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
	line	20
	
l2193:	
;lcd.h: 20: PORTB=c;
	movf	(lcd_cmd@c),w
	movwf	(6)	;volatile
	line	21
	
l2195:	
;lcd.h: 21: pulse();
	fcall	_pulse
	line	23
	
l2197:	
;lcd.h: 23: PORTB=c<<4;
	movf	(lcd_cmd@c),w
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
	line	24
	
l2199:	
;lcd.h: 24: pulse();
	fcall	_pulse
	line	25
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_pulse
psect	text93,local,class=CODE,delta=2
global __ptext93
__ptext93:

;; *************** function _pulse *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\lcd.h"
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
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\lcd.h"
	line	10
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l2185:	
;lcd.h: 11: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	12
	
l2187:	
;lcd.h: 12: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	13
	
l2189:	
;lcd.h: 13: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	14
;lcd.h: 14: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	15
	
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
;;		line 6 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\lcd.h"
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
psect	text94
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave\Slave\lcd.h"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg]
	line	7
	
l1415:	
;lcd.h: 7: while(ms--);
	goto	l1417
	
l1026:	
	goto	l1417
	
l1025:	
	
l1417:	
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
	goto	l1417
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
psect	text95,local,class=CODE,delta=2
global __ptext95
__ptext95:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
