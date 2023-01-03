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
	FNCALL	_main,_i2c_start
	FNCALL	_main,_i2c_slave
	FNCALL	_main,_i2c_restart
	FNCALL	_main,_i2c_read
	FNCALL	_main,_i2c_stop
	FNCALL	_main,_delay
	FNCALL	_i2c_slave,_hold
	FNCALL	_i2c_slave,_lcd_cmd
	FNCALL	_i2c_restart,_hold
	FNCALL	_i2c_stop,_hold
	FNCALL	_i2c_start,_hold
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_retain
	global	_s
	global	_PORTC
psect	text240,local,class=CODE,delta=2
global __ptext240
__ptext240:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RC0
_RC0	set	56
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_SSPIF
_SSPIF	set	99
	global	_SSPOV
_SSPOV	set	166
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_BF
_BF	set	1184
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_SMP
_SMP	set	1191
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"eeprom.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_s:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_retain:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
	global	?_hold
?_hold:	; 0 bytes @ 0x0
	global	??_hold
??_hold:	; 0 bytes @ 0x0
	global	?_i2c_start
?_i2c_start:	; 0 bytes @ 0x0
	global	??_i2c_start
??_i2c_start:	; 0 bytes @ 0x0
	global	?_i2c_stop
?_i2c_stop:	; 0 bytes @ 0x0
	global	??_i2c_stop
??_i2c_stop:	; 0 bytes @ 0x0
	global	?_i2c_restart
?_i2c_restart:	; 0 bytes @ 0x0
	global	??_i2c_restart
??_i2c_restart:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_i2c_read
?_i2c_read:	; 1 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	i2c_read@i
i2c_read@i:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	??_i2c_read
??_i2c_read:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	ds	1
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	global	i2c_read@read
i2c_read@read:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
	ds	1
	global	?_i2c_slave
?_i2c_slave:	; 0 bytes @ 0x5
	global	i2c_slave@data
i2c_slave@data:	; 2 bytes @ 0x5
	ds	2
	global	??_i2c_slave
??_i2c_slave:	; 0 bytes @ 0x7
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x8
	ds	2
	global	main@read
main@read:	; 1 bytes @ 0xA
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     11      13
;; BANK0           80      0       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_i2c_slave
;;   _i2c_slave->_lcd_cmd
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
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 3     3      0     332
;;                                              8 COMMON     3     3      0
;;                            _lcd_cmd
;;                          _i2c_start
;;                          _i2c_slave
;;                        _i2c_restart
;;                           _i2c_read
;;                           _i2c_stop
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _i2c_slave                                            3     1      2     132
;;                                              5 COMMON     3     1      2
;;                               _hold
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _i2c_restart                                          0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _i2c_stop                                             0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _i2c_start                                            0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              3     1      2      88
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _i2c_read                                             4     2      2      45
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _hold                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _i2c_start
;;     _hold
;;   _i2c_slave
;;     _hold
;;     _lcd_cmd
;;       _delay
;;   _i2c_restart
;;     _hold
;;   _i2c_read
;;   _i2c_stop
;;     _hold
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      B       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       F       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      12      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 53 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            1   10[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;;		_i2c_start
;;		_i2c_slave
;;		_i2c_restart
;;		_i2c_read
;;		_i2c_stop
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
	line	53
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l2387:	
;eeprom.c: 54: char read;
;eeprom.c: 55: TRISC=0X19;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	56
	
l2389:	
;eeprom.c: 56: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	57
	
l2391:	
;eeprom.c: 57: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	58
	
l2393:	
;eeprom.c: 58: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	59
	
l2395:	
;eeprom.c: 59: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	60
	
l2397:	
;eeprom.c: 60: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	61
	
l2399:	
;eeprom.c: 61: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	62
	
l2401:	
;eeprom.c: 62: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	63
	
l2403:	
;eeprom.c: 63: SSPCON=0X28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	64
	
l2405:	
;eeprom.c: 64: SMP=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1191/8)^080h,(1191)&7
	line	65
	
l2407:	
;eeprom.c: 65: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	66
	
l2409:	
;eeprom.c: 66: lcd_cmd(0,0,0X0E);
	clrf	(?_lcd_cmd)
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	67
	
l2411:	
;eeprom.c: 67: i2c_start();
	fcall	_i2c_start
	line	68
	
l2413:	
;eeprom.c: 68: i2c_slave(0XA0);
	movlw	low(0A0h)
	movwf	(?_i2c_slave)
	movlw	high(0A0h)
	movwf	((?_i2c_slave))+1
	fcall	_i2c_slave
	line	69
	
l2415:	
;eeprom.c: 69: i2c_slave(0X00);
	movlw	low(0)
	movwf	(?_i2c_slave)
	movlw	high(0)
	movwf	((?_i2c_slave))+1
	fcall	_i2c_slave
	line	70
	
l2417:	
;eeprom.c: 70: i2c_restart();
	fcall	_i2c_restart
	line	71
	
l2419:	
;eeprom.c: 71: i2c_slave(0XA1);
	movlw	low(0A1h)
	movwf	(?_i2c_slave)
	movlw	high(0A1h)
	movwf	((?_i2c_slave))+1
	fcall	_i2c_slave
	line	72
	
l2421:	
;eeprom.c: 72: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	73
	
l2423:	
;eeprom.c: 73: read=i2c_read(0);
	movlw	low(0)
	movwf	(?_i2c_read)
	movlw	high(0)
	movwf	((?_i2c_read))+1
	fcall	_i2c_read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@read)
	line	74
	
l2425:	
;eeprom.c: 74: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	75
	
l2427:	
;eeprom.c: 75: lcd_cmd(1,0,read+0X30);
	clrf	(?_lcd_cmd)
	movf	(main@read),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	76
	
l2429:	
;eeprom.c: 76: retain=read;
	movf	(main@read),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_retain)
	movf	1+(??_main+0)+0,w
	movwf	(_retain+1)
	line	77
	
l2431:	
;eeprom.c: 77: s=s+retain;
	movf	(_retain),w
	addwf	(_s),w
	movwf	(_s)
	movf	(_retain+1),w
	skipnc
	incf	(_retain+1),w
	addwf	(_s+1),w
	movwf	1+(_s)
	line	78
	
l2433:	
;eeprom.c: 78: i2c_stop();
	fcall	_i2c_stop
	line	79
	
l2435:	
;eeprom.c: 79: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2437
	line	80
;eeprom.c: 80: while(1)
	
l1066:	
	line	83
	
l2437:	
;eeprom.c: 84: {
;eeprom.c: 85: s=s++;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l2441
u2350:
	line	85
	
l2439:	
	movlw	low(01h)
	addwf	(_s),f
	skipnc
	incf	(_s+1),f
	movlw	high(01h)
	addwf	(_s+1),f
	line	86
;eeprom.c: 86: while(RC0==1);
	goto	l1068
	
l1069:	
	
l1068:	
	btfsc	(56/8),(56)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l1068
u2360:
	goto	l2441
	
l1070:	
	goto	l2441
	line	87
	
l1067:	
	line	88
	
l2441:	
;eeprom.c: 87: }
;eeprom.c: 88: if(s>10)
	movf	(_s+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Bh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(0Bh)
	subwf	(_s),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2445
u2370:
	line	90
	
l2443:	
;eeprom.c: 89: {
;eeprom.c: 90: s=0;
	clrf	(_s)
	clrf	(_s+1)
	goto	l2445
	line	91
	
l1071:	
	line	92
	
l2445:	
;eeprom.c: 91: }
;eeprom.c: 92: i2c_start();
	fcall	_i2c_start
	line	93
	
l2447:	
;eeprom.c: 93: i2c_slave(0XA0);
	movlw	low(0A0h)
	movwf	(?_i2c_slave)
	movlw	high(0A0h)
	movwf	((?_i2c_slave))+1
	fcall	_i2c_slave
	line	94
	
l2449:	
;eeprom.c: 94: i2c_slave(0X00);
	movlw	low(0)
	movwf	(?_i2c_slave)
	movlw	high(0)
	movwf	((?_i2c_slave))+1
	fcall	_i2c_slave
	line	95
	
l2451:	
;eeprom.c: 95: i2c_slave(s);
	movf	(_s+1),w
	clrf	(?_i2c_slave+1)
	addwf	(?_i2c_slave+1)
	movf	(_s),w
	clrf	(?_i2c_slave)
	addwf	(?_i2c_slave)

	fcall	_i2c_slave
	line	96
	
l2453:	
;eeprom.c: 96: i2c_stop();
	fcall	_i2c_stop
	line	97
	
l2455:	
;eeprom.c: 97: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2437
	line	99
	
l1072:	
	line	80
	goto	l2437
	
l1073:	
	line	100
	
l1074:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_i2c_slave
psect	text241,local,class=CODE,delta=2
global __ptext241
__ptext241:

;; *************** function _i2c_slave *****************
;; Defined at:
;;		line 29 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;  data            2    5[COMMON] int 
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
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_hold
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text241
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
	line	29
	global	__size_of_i2c_slave
	__size_of_i2c_slave	equ	__end_of_i2c_slave-_i2c_slave
	
_i2c_slave:	
	opt	stack 5
; Regs used in _i2c_slave: [wreg+status,2+status,0+pclath+cstack]
	line	30
	
l2377:	
;eeprom.c: 30: ACKSTAT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1166/8)^080h,(1166)&7
	line	31
	
l2379:	
;eeprom.c: 31: SSPBUF=data;
	movf	(i2c_slave@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	32
;eeprom.c: 32: while(ACKSTAT==1);
	goto	l1053
	
l1054:	
	
l1053:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1053
u2340:
	goto	l2381
	
l1055:	
	line	33
	
l2381:	
;eeprom.c: 33: hold();
	fcall	_hold
	line	34
	
l2383:	
;eeprom.c: 34: lcd_cmd(0,0,0XC0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_i2c_slave+0)+0
	movf	(??_i2c_slave+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	35
	
l2385:	
;eeprom.c: 35: lcd_cmd(1,0,data+0X30);
	clrf	(?_lcd_cmd)
	movf	(i2c_slave@data),w
	addlw	030h
	movwf	(??_i2c_slave+0)+0
	movf	(??_i2c_slave+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	36
	
l1056:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_slave
	__end_of_i2c_slave:
;; =============== function _i2c_slave ends ============

	signat	_i2c_slave,4216
	global	_i2c_restart
psect	text242,local,class=CODE,delta=2
global __ptext242
__ptext242:

;; *************** function _i2c_restart *****************
;; Defined at:
;;		line 24 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
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
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text242
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
	line	24
	global	__size_of_i2c_restart
	__size_of_i2c_restart	equ	__end_of_i2c_restart-_i2c_restart
	
_i2c_restart:	
	opt	stack 6
; Regs used in _i2c_restart: [status,2+status,0+pclath+cstack]
	line	25
	
l2373:	
;eeprom.c: 25: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	26
	
l2375:	
;eeprom.c: 26: hold();
	fcall	_hold
	line	27
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_restart
	__end_of_i2c_restart:
;; =============== function _i2c_restart ends ============

	signat	_i2c_restart,88
	global	_i2c_stop
psect	text243,local,class=CODE,delta=2
global __ptext243
__ptext243:

;; *************** function _i2c_stop *****************
;; Defined at:
;;		line 19 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
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
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text243
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
	line	19
	global	__size_of_i2c_stop
	__size_of_i2c_stop	equ	__end_of_i2c_stop-_i2c_stop
	
_i2c_stop:	
	opt	stack 6
; Regs used in _i2c_stop: [status,2+status,0+pclath+cstack]
	line	20
	
l2369:	
;eeprom.c: 20: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	21
	
l2371:	
;eeprom.c: 21: hold();
	fcall	_hold
	line	22
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_stop
	__end_of_i2c_stop:
;; =============== function _i2c_stop ends ============

	signat	_i2c_stop,88
	global	_i2c_start
psect	text244,local,class=CODE,delta=2
global __ptext244
__ptext244:

;; *************** function _i2c_start *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
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
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text244
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
	line	14
	global	__size_of_i2c_start
	__size_of_i2c_start	equ	__end_of_i2c_start-_i2c_start
	
_i2c_start:	
	opt	stack 6
; Regs used in _i2c_start: [status,2+status,0+pclath+cstack]
	line	15
	
l2365:	
;eeprom.c: 15: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	16
	
l2367:	
;eeprom.c: 16: hold();
	fcall	_hold
	line	17
	
l1044:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_start
	__end_of_i2c_start:
;; =============== function _i2c_start ends ============

	signat	_i2c_start,88
	global	_lcd_cmd
psect	text245,local,class=CODE,delta=2
global __ptext245
__ptext245:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\lcd.h"
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
;;		_i2c_slave
;;		_main
;; This function uses a non-reentrant model
;;
psect	text245
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\lcd.h"
	line	10
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 5
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	11
	
l2353:	
;lcd.h: 11: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2301
	goto	u2300
	
u2301:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2314
u2300:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2314:
	line	12
;lcd.h: 12: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2321
	goto	u2320
	
u2321:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2334
u2320:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2334:
	line	13
	
l2355:	
;lcd.h: 13: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	14
	
l2357:	
;lcd.h: 14: RE2=1;
	bsf	(74/8),(74)&7
	line	15
	
l2359:	
;lcd.h: 15: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l2361:	
;lcd.h: 16: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	17
	
l2363:	
;lcd.h: 17: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	18
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_i2c_read
psect	text246,local,class=CODE,delta=2
global __ptext246
__ptext246:

;; *************** function _i2c_read *****************
;; Defined at:
;;		line 38 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  read            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text246
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
	line	38
	global	__size_of_i2c_read
	__size_of_i2c_read	equ	__end_of_i2c_read-_i2c_read
	
_i2c_read:	
	opt	stack 7
; Regs used in _i2c_read: [wreg+status,2+status,0]
	line	40
	
l2339:	
;eeprom.c: 39: char read;
;eeprom.c: 40: if(i==0)
	movf	((i2c_read@i+1)),w
	iorwf	((i2c_read@i)),w
	skipz
	goto	u2281
	goto	u2280
u2281:
	goto	l1060
u2280:
	line	42
	
l2341:	
;eeprom.c: 41: {
;eeprom.c: 42: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	goto	l1060
	line	43
	
l1059:	
	line	44
;eeprom.c: 43: }
;eeprom.c: 44: while(BF==0);
	goto	l1060
	
l1061:	
	
l1060:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1060
u2290:
	goto	l2343
	
l1062:	
	line	45
	
l2343:	
;eeprom.c: 45: read=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_i2c_read+0)+0
	movf	(??_i2c_read+0)+0,w
	movwf	(i2c_read@read)
	line	46
	
l2345:	
;eeprom.c: 46: SSPOV=0;
	bcf	(166/8),(166)&7
	line	47
	
l2347:	
;eeprom.c: 47: ACKEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1164/8)^080h,(1164)&7
	line	48
	
l2349:	
;eeprom.c: 48: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	49
;eeprom.c: 49: return read;
	movf	(i2c_read@read),w
	goto	l1063
	
l2351:	
	line	50
	
l1063:	
	return
	opt stack 0
GLOBAL	__end_of_i2c_read
	__end_of_i2c_read:
;; =============== function _i2c_read ends ============

	signat	_i2c_read,4217
	global	_hold
psect	text247,local,class=CODE,delta=2
global __ptext247
__ptext247:

;; *************** function _hold *****************
;; Defined at:
;;		line 9 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_i2c_start
;;		_i2c_stop
;;		_i2c_restart
;;		_i2c_slave
;; This function uses a non-reentrant model
;;
psect	text247
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\eeprom.c"
	line	9
	global	__size_of_hold
	__size_of_hold	equ	__end_of_hold-_hold
	
_hold:	
	opt	stack 6
; Regs used in _hold: []
	line	10
	
l2337:	
;eeprom.c: 10: while(SSPIF==0);
	goto	l1038
	
l1039:	
	
l1038:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l1038
u2270:
	
l1040:	
	line	11
;eeprom.c: 11: SSPIF=0;
	bcf	(99/8),(99)&7
	line	12
	
l1041:	
	return
	opt stack 0
GLOBAL	__end_of_hold
	__end_of_hold:
;; =============== function _hold ends ============

	signat	_hold,88
	global	_delay
psect	text248,local,class=CODE,delta=2
global __ptext248
__ptext248:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\software\protocal\I2c\EEPROM\lcd.h"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text248
	file	"D:\Embedded\pic\code\software\protocal\I2c\EEPROM\lcd.h"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	7
	
l2333:	
;lcd.h: 7: while(ms--);
	goto	l2335
	
l1030:	
	goto	l2335
	
l1029:	
	
l2335:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2265
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2265:

	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l2335
u2260:
	goto	l1032
	
l1031:	
	line	8
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text249,local,class=CODE,delta=2
global __ptext249
__ptext249:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
