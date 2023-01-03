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
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Slave
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,_delay
	FNCALL	_main,_I2C_Restart
	FNCALL	_main,_I2C_Read
	FNCALL	_I2C_Restart,_hold
	FNCALL	_I2C_Slave,_hold
	FNCALL	_I2C_Stop,_hold
	FNCALL	_I2C_Start,_hold
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_PORTC
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
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
	file	"RTC_Write.as"
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
	global	?_hold
?_hold:	; 0 bytes @ 0x0
	global	??_hold
??_hold:	; 0 bytes @ 0x0
	global	?_I2C_Start
?_I2C_Start:	; 0 bytes @ 0x0
	global	??_I2C_Start
??_I2C_Start:	; 0 bytes @ 0x0
	global	?_I2C_Stop
?_I2C_Stop:	; 0 bytes @ 0x0
	global	??_I2C_Stop
??_I2C_Stop:	; 0 bytes @ 0x0
	global	?_I2C_Slave
?_I2C_Slave:	; 0 bytes @ 0x0
	global	??_I2C_Slave
??_I2C_Slave:	; 0 bytes @ 0x0
	global	?_I2C_Restart
?_I2C_Restart:	; 0 bytes @ 0x0
	global	??_I2C_Restart
??_I2C_Restart:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_I2C_Read
?_I2C_Read:	; 1 bytes @ 0x0
	global	I2C_Slave@data
I2C_Slave@data:	; 1 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	I2C_Read@i
I2C_Read@i:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	??_I2C_Read
??_I2C_Read:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	ds	1
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	global	I2C_Read@read
I2C_Read@read:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	1
	global	main@read
main@read:	; 1 bytes @ 0x6
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80      0       0
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 2     2      0     135
;;                                              5 COMMON     2     2      0
;;                            _lcd_cmd
;;                          _I2C_Start
;;                          _I2C_Slave
;;                           _I2C_Stop
;;                              _delay
;;                        _I2C_Restart
;;                           _I2C_Read
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Restart                                          0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Slave                                            1     1      0      15
;;                                              0 COMMON     1     1      0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Stop                                             0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Start                                            0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     1      2      60
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Read                                             4     2      2      30
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _hold                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _I2C_Start
;;     _hold
;;   _I2C_Slave
;;     _hold
;;   _I2C_Stop
;;     _hold
;;   _delay
;;   _I2C_Restart
;;     _hold
;;   _I2C_Read
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
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
;;		line 55 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            1    6[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;;		_I2C_Start
;;		_I2C_Slave
;;		_I2C_Stop
;;		_delay
;;		_I2C_Restart
;;		_I2C_Read
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
	line	55
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	57
	
l2264:	
;RTC_Write.c: 56: unsigned char read;
;RTC_Write.c: 57: TRISC=0X18;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	58
	
l2266:	
;RTC_Write.c: 58: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	59
	
l2268:	
;RTC_Write.c: 59: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	60
	
l2270:	
;RTC_Write.c: 60: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	61
	
l2272:	
;RTC_Write.c: 61: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	62
	
l2274:	
;RTC_Write.c: 62: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	63
	
l2276:	
;RTC_Write.c: 63: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	64
	
l2278:	
;RTC_Write.c: 64: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	65
	
l2280:	
;RTC_Write.c: 65: SMP=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1191/8)^080h,(1191)&7
	line	66
	
l2282:	
;RTC_Write.c: 66: SSPCON=0X28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	68
	
l2284:	
;RTC_Write.c: 68: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	69
	
l2286:	
;RTC_Write.c: 69: lcd_cmd(0,0,0X0E);
	clrf	(?_lcd_cmd)
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	70
	
l2288:	
;RTC_Write.c: 70: I2C_Start();
	fcall	_I2C_Start
	line	71
	
l2290:	
;RTC_Write.c: 71: I2C_Slave(0XD0);
	movlw	(0D0h)
	fcall	_I2C_Slave
	line	72
	
l2292:	
;RTC_Write.c: 72: I2C_Slave(0X00);
	movlw	(0)
	fcall	_I2C_Slave
	line	73
	
l2294:	
;RTC_Write.c: 73: I2C_Slave('A');
	movlw	(041h)
	fcall	_I2C_Slave
	line	75
	
l2296:	
;RTC_Write.c: 75: I2C_Stop();
	fcall	_I2C_Stop
	line	76
	
l2298:	
;RTC_Write.c: 76: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2300
	line	77
;RTC_Write.c: 77: while(1)
	
l1068:	
	line	79
	
l2300:	
;RTC_Write.c: 78: {
;RTC_Write.c: 79: I2C_Start();
	fcall	_I2C_Start
	line	80
	
l2302:	
;RTC_Write.c: 80: I2C_Slave(0XD0);
	movlw	(0D0h)
	fcall	_I2C_Slave
	line	81
	
l2304:	
;RTC_Write.c: 81: I2C_Slave(0X00);
	movlw	(0)
	fcall	_I2C_Slave
	line	82
	
l2306:	
;RTC_Write.c: 82: I2C_Restart();
	fcall	_I2C_Restart
	line	83
	
l2308:	
;RTC_Write.c: 83: I2C_Slave(0XD1);
	movlw	(0D1h)
	fcall	_I2C_Slave
	line	84
	
l2310:	
;RTC_Write.c: 84: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	85
	
l2312:	
;RTC_Write.c: 85: read=I2C_Read(0);
	movlw	low(0)
	movwf	(?_I2C_Read)
	movlw	high(0)
	movwf	((?_I2C_Read))+1
	fcall	_I2C_Read
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@read)
	line	86
	
l2314:	
;RTC_Write.c: 86: I2C_Stop();
	fcall	_I2C_Stop
	line	87
	
l2316:	
;RTC_Write.c: 87: lcd_cmd(0,0,0X80);
	clrf	(?_lcd_cmd)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	88
	
l2318:	
;RTC_Write.c: 88: lcd_cmd(1,0,read);
	clrf	(?_lcd_cmd)
	movf	(main@read),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	89
	
l2320:	
;RTC_Write.c: 89: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2300
	line	91
	
l1069:	
	line	77
	goto	l2300
	
l1070:	
	line	92
	
l1071:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_I2C_Restart
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:

;; *************** function _I2C_Restart *****************
;; Defined at:
;;		line 29 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
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
psect	text141
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
	line	29
	global	__size_of_I2C_Restart
	__size_of_I2C_Restart	equ	__end_of_I2C_Restart-_I2C_Restart
	
_I2C_Restart:	
	opt	stack 6
; Regs used in _I2C_Restart: [status,2+status,0+pclath+cstack]
	line	30
	
l2260:	
;RTC_Write.c: 30: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	31
	
l2262:	
;RTC_Write.c: 31: hold();
	fcall	_hold
	line	32
	
l1052:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Restart
	__end_of_I2C_Restart:
;; =============== function _I2C_Restart ends ============

	signat	_I2C_Restart,88
	global	_I2C_Slave
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:

;; *************** function _I2C_Slave *****************
;; Defined at:
;;		line 22 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text142
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
	line	22
	global	__size_of_I2C_Slave
	__size_of_I2C_Slave	equ	__end_of_I2C_Slave-_I2C_Slave
	
_I2C_Slave:	
	opt	stack 6
; Regs used in _I2C_Slave: [wreg+status,2+status,0+pclath+cstack]
;I2C_Slave@data stored from wreg
	movwf	(I2C_Slave@data)
	line	23
	
l2254:	
;RTC_Write.c: 23: ACKSTAT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1166/8)^080h,(1166)&7
	line	24
	
l2256:	
;RTC_Write.c: 24: SSPBUF=data;
	movf	(I2C_Slave@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	25
;RTC_Write.c: 25: while(ACKSTAT==1);
	goto	l1046
	
l1047:	
	
l1046:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l1046
u2230:
	goto	l2258
	
l1048:	
	line	26
	
l2258:	
;RTC_Write.c: 26: hold();
	fcall	_hold
	line	27
	
l1049:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Slave
	__end_of_I2C_Slave:
;; =============== function _I2C_Slave ends ============

	signat	_I2C_Slave,4216
	global	_I2C_Stop
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
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
psect	text143
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
	line	17
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 6
; Regs used in _I2C_Stop: [status,2+status,0+pclath+cstack]
	line	18
	
l2250:	
;RTC_Write.c: 18: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	19
	
l2252:	
;RTC_Write.c: 19: hold();
	fcall	_hold
	line	20
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Start
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 12 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
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
psect	text144
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
	line	12
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 6
; Regs used in _I2C_Start: [status,2+status,0+pclath+cstack]
	line	13
	
l2246:	
;RTC_Write.c: 13: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	14
	
l2248:	
;RTC_Write.c: 14: hold();
	fcall	_hold
	line	15
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_lcd_cmd
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\lcd.h"
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
;;		_string
;; This function uses a non-reentrant model
;;
psect	text145
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\lcd.h"
	line	10
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	11
	
l2234:	
;lcd.h: 11: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2191
	goto	u2190
	
u2191:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2204
u2190:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2204:
	line	12
;lcd.h: 12: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2211
	goto	u2210
	
u2211:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2224
u2210:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2224:
	line	13
	
l2236:	
;lcd.h: 13: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	14
	
l2238:	
;lcd.h: 14: RE2=1;
	bsf	(74/8),(74)&7
	line	15
	
l2240:	
;lcd.h: 15: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l2242:	
;lcd.h: 16: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	17
	
l2244:	
;lcd.h: 17: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
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
	global	_I2C_Read
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 34 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
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
psect	text146
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
	line	34
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 7
; Regs used in _I2C_Read: [wreg+status,2+status,0]
	line	36
	
l1446:	
;RTC_Write.c: 35: unsigned char read;
;RTC_Write.c: 36: if(i==0)
	movf	((I2C_Read@i+1)),w
	iorwf	((I2C_Read@i)),w
	skipz
	goto	u31
	goto	u30
u31:
	goto	l1056
u30:
	line	38
	
l1448:	
;RTC_Write.c: 37: {
;RTC_Write.c: 38: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	goto	l1056
	line	39
	
l1055:	
	line	40
;RTC_Write.c: 39: }
;RTC_Write.c: 40: while(BF==0);
	goto	l1056
	
l1057:	
	
l1056:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u41
	goto	u40
u41:
	goto	l1056
u40:
	goto	l1450
	
l1058:	
	line	41
	
l1450:	
;RTC_Write.c: 41: read=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	movwf	(I2C_Read@read)
	line	42
	
l1452:	
;RTC_Write.c: 42: SSPOV=0;
	bcf	(166/8),(166)&7
	line	43
	
l1454:	
;RTC_Write.c: 43: ACKEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1164/8)^080h,(1164)&7
	line	44
	
l1456:	
;RTC_Write.c: 44: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	45
;RTC_Write.c: 45: return read;
	movf	(I2C_Read@read),w
	goto	l1059
	
l1458:	
	line	46
	
l1059:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
;; =============== function _I2C_Read ends ============

	signat	_I2C_Read,4217
	global	_hold
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _hold *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
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
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Slave
;;		_I2C_Restart
;; This function uses a non-reentrant model
;;
psect	text147
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\RTC_Write.c"
	line	7
	global	__size_of_hold
	__size_of_hold	equ	__end_of_hold-_hold
	
_hold:	
	opt	stack 6
; Regs used in _hold: []
	line	8
	
l1444:	
;RTC_Write.c: 8: while(SSPIF==0);
	goto	l1034
	
l1035:	
	
l1034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u21
	goto	u20
u21:
	goto	l1034
u20:
	
l1036:	
	line	9
;RTC_Write.c: 9: SSPIF=0;
	bcf	(99/8),(99)&7
	line	10
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_hold
	__end_of_hold:
;; =============== function _hold ends ============

	signat	_hold,88
	global	_delay
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC_write\lcd.h"
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
psect	text148
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC_write\lcd.h"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	7
	
l1440:	
;lcd.h: 7: while(ms--);
	goto	l1442
	
l1026:	
	goto	l1442
	
l1025:	
	
l1442:	
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
	goto	l1442
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
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
