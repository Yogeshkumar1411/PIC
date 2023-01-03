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
	FNCALL	_main,_I2C_Restart
	FNCALL	_main,_I2C_Read
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,_conversion
	FNCALL	_main,_delay
	FNCALL	_conversion,_lcd_cmd
	FNCALL	_conversion,_string
	FNCALL	_string,_lcd_cmd
	FNCALL	_I2C_Restart,_hold
	FNCALL	_I2C_Slave,_hold
	FNCALL	_I2C_Stop,_hold
	FNCALL	_I2C_Start,_hold
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_PORTC
psect	text276,local,class=CODE,delta=2
global __ptext276
__ptext276:
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
	global	_SSPIF
_SSPIF	set	99
	global	_SSPOV
_SSPOV	set	166
	global	_SSPADD
_SSPADD	set	147
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
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	
STR_2:	
	retlw	68	;'D'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"time.as"
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
	global	?_string
?_string:	; 0 bytes @ 0x0
	global	?_conversion
?_conversion:	; 0 bytes @ 0x0
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
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x2
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x3
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x3
	global	I2C_Read@read
I2C_Read@read:	; 1 bytes @ 0x3
	ds	1
	global	??_string
??_string:	; 0 bytes @ 0x4
	ds	1
	global	string@p
string@p:	; 1 bytes @ 0x5
	ds	1
	global	??_conversion
??_conversion:	; 0 bytes @ 0x6
	ds	2
	global	conversion@disp
conversion@disp:	; 1 bytes @ 0x8
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x9
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@read
main@read:	; 7 bytes @ 0x0
	ds	7
	global	main@i
main@i:	; 1 bytes @ 0x7
	ds	1
;;Data sizes: Strings 14, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80      8       8
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; conversion@disp	PTR unsigned char  size(1) Largest target is 7
;;		 -> main@read(BANK0[7]), 
;;
;; string@p	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_2(CODE[7]), STR_1(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_conversion
;;   _conversion->_string
;;   _string->_lcd_cmd
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                13    13      0     813
;;                                              9 COMMON     3     3      0
;;                                              0 BANK0      8     8      0
;;                            _lcd_cmd
;;                          _I2C_Start
;;                          _I2C_Slave
;;                        _I2C_Restart
;;                           _I2C_Read
;;                           _I2C_Stop
;;                         _conversion
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _conversion                                           3     3      0     507
;;                                              6 COMMON     3     3      0
;;                            _lcd_cmd
;;                             _string
;; ---------------------------------------------------------------------------------
;; (2) _string                                               2     2      0     111
;;                                              4 COMMON     2     2      0
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Restart                                          0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Slave                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Stop                                             0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Start                                            0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (3) _lcd_cmd                                              2     1      1      66
;;                                              2 COMMON     2     1      1
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Read                                             4     2      2      45
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _hold                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _I2C_Start
;;     _hold
;;   _I2C_Slave
;;     _hold
;;   _I2C_Restart
;;     _hold
;;   _I2C_Read
;;   _I2C_Stop
;;     _hold
;;   _conversion
;;     _lcd_cmd
;;       _delay
;;     _string
;;       _lcd_cmd
;;         _delay
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      8       8       5       10.0%
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
;;		line 100 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  read            7    0[BANK0 ] unsigned char [7]
;;  i               1    7[BANK0 ] unsigned char 
;;  write           1    0        unsigned char 
;;  j               1    0        unsigned char 
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
;;      Locals:         0       8       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       8       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_cmd
;;		_I2C_Start
;;		_I2C_Slave
;;		_I2C_Restart
;;		_I2C_Read
;;		_I2C_Stop
;;		_conversion
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	100
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	102
	
l2467:	
;time.c: 101: unsigned char i,j,read[7],write;
;time.c: 102: TRISC=0X18;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	103
	
l2469:	
;time.c: 103: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	104
	
l2471:	
;time.c: 104: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	105
	
l2473:	
;time.c: 105: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	106
	
l2475:	
;time.c: 106: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	107
	
l2477:	
;time.c: 107: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	108
	
l2479:	
;time.c: 108: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	109
	
l2481:	
;time.c: 109: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	110
	
l2483:	
;time.c: 110: SMP=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1191/8)^080h,(1191)&7
	line	111
	
l2485:	
;time.c: 111: SSPCON=0X28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	112
	
l2487:	
;time.c: 112: SSPADD=4;
	movlw	(04h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(147)^080h	;volatile
	line	114
	
l2489:	
;time.c: 114: lcd_cmd(0,0X38);
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(0)
	fcall	_lcd_cmd
	line	115
	
l2491:	
;time.c: 115: lcd_cmd(0,0X0E);
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2493
	line	129
;time.c: 129: while(1)
	
l1073:	
	line	131
	
l2493:	
;time.c: 130: {
;time.c: 131: I2C_Start();
	fcall	_I2C_Start
	line	132
	
l2495:	
;time.c: 132: I2C_Slave(0XD0);
	movlw	(0D0h)
	fcall	_I2C_Slave
	line	133
	
l2497:	
;time.c: 133: I2C_Slave(0X00);
	movlw	(0)
	fcall	_I2C_Slave
	line	134
	
l2499:	
;time.c: 134: I2C_Restart();
	fcall	_I2C_Restart
	line	135
	
l2501:	
;time.c: 135: I2C_Slave(0XD1);
	movlw	(0D1h)
	fcall	_I2C_Slave
	line	136
	
l2503:	
;time.c: 136: for(i=0;i<7;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	
l2505:	
	movlw	(07h)
	subwf	(main@i),w
	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l1074
u2500:
	goto	l2515
	
l2507:	
	goto	l2515
	line	137
	
l1074:	
	line	138
;time.c: 137: {
;time.c: 138: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	139
	
l2509:	
;time.c: 139: read[i]=I2C_Read(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_I2C_Read)
	movf	1+(??_main+0)+0,w
	movwf	(?_I2C_Read+1)
	fcall	_I2C_Read
	movwf	(??_main+2)+0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@i),w
	addlw	main@read&0ffh
	movwf	fsr0
	movf	(??_main+2)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	136
	
l2511:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(main@i),f
	
l2513:	
	movlw	(07h)
	subwf	(main@i),w
	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l1074
u2510:
	goto	l2515
	
l1075:	
	line	141
	
l2515:	
;time.c: 140: }
;time.c: 141: I2C_Stop();
	fcall	_I2C_Stop
	line	142
	
l2517:	
;time.c: 142: conversion(read);
	movlw	(main@read)&0ffh
	fcall	_conversion
	line	143
	
l2519:	
;time.c: 143: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l2493
	line	145
	
l1076:	
	line	129
	goto	l2493
	
l1077:	
	line	146
	
l1078:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_conversion
psect	text277,local,class=CODE,delta=2
global __ptext277
__ptext277:

;; *************** function _conversion *****************
;; Defined at:
;;		line 59 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
;; Parameters:    Size  Location     Type
;;  disp            1    wreg     PTR unsigned char 
;;		 -> main@read(7), 
;; Auto vars:     Size  Location     Type
;;  disp            1    8[COMMON] PTR unsigned char 
;;		 -> main@read(7), 
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
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;;		_string
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text277
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	59
	global	__size_of_conversion
	__size_of_conversion	equ	__end_of_conversion-_conversion
	
_conversion:	
	opt	stack 4
; Regs used in _conversion: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;conversion@disp stored from wreg
	movwf	(conversion@disp)
	line	60
	
l2427:	
;time.c: 60: lcd_cmd(0,0X80);
	movlw	(080h)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(0)
	fcall	_lcd_cmd
	line	61
	
l2429:	
;time.c: 61: string("time: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_string
	line	62
	
l2431:	
;time.c: 62: lcd_cmd(1,((disp[2]&0X30)>>4)+0X30);
	movf	(conversion@disp),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u2415:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u2415
	movf	0+(??_conversion+0)+0,w
	andlw	03h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	63
	
l2433:	
;time.c: 63: lcd_cmd(1,(disp[2]&0X0F)+0X30);
	movf	(conversion@disp),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	64
	
l2435:	
;time.c: 64: lcd_cmd(1,':');
	movlw	(03Ah)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	66
;time.c: 66: lcd_cmd(1,((disp[1]&0X70)>>4)+0X30);
	movf	(conversion@disp),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u2425:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u2425
	movf	0+(??_conversion+0)+0,w
	andlw	07h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	67
;time.c: 67: lcd_cmd(1,(disp[1]&0X0F)+0X30);
	movf	(conversion@disp),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	68
	
l2437:	
;time.c: 68: lcd_cmd(1,':');
	movlw	(03Ah)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	70
	
l2439:	
;time.c: 70: lcd_cmd(1,((disp[0]&0X70)>>4)+0X30);
	movf	(conversion@disp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u2435:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u2435
	movf	0+(??_conversion+0)+0,w
	andlw	07h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	71
	
l2441:	
;time.c: 71: lcd_cmd(1,(disp[0]&0X0F)+0X30);
	movf	(conversion@disp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	72
	
l2443:	
;time.c: 72: if(disp[2]==0X12&&disp[1]==0X11&&disp[0]==0X00)
	movf	(conversion@disp),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	012h
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2451
u2440:
	
l2445:	
	movf	(conversion@disp),w
	addlw	01h
	movwf	fsr0
	movf	indf,w
	xorlw	011h
	skipz
	goto	u2451
	goto	u2450
u2451:
	goto	l2451
u2450:
	
l2447:	
	movf	(conversion@disp),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l2451
u2460:
	line	74
	
l2449:	
;time.c: 73: {
;time.c: 74: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	l2451
	line	75
	
l1069:	
	line	78
	
l2451:	
;time.c: 75: }
;time.c: 78: lcd_cmd(0,0XC0);
	movlw	(0C0h)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(0)
	fcall	_lcd_cmd
	line	79
	
l2453:	
;time.c: 79: string("Date: ");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_string
	line	84
	
l2455:	
;time.c: 84: lcd_cmd(1,((disp[4]&0X30)>>4)+0X30);
	movf	(conversion@disp),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u2475:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u2475
	movf	0+(??_conversion+0)+0,w
	andlw	03h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	85
	
l2457:	
;time.c: 85: lcd_cmd(1,(disp[4]&0X0F)+0X30);
	movf	(conversion@disp),w
	addlw	04h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	86
	
l2459:	
;time.c: 86: lcd_cmd(1,'/');
	movlw	(02Fh)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	88
;time.c: 88: lcd_cmd(1,((disp[5]&0X10)>>4)+0X30);
	movf	(conversion@disp),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u2485:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u2485
	movf	0+(??_conversion+0)+0,w
	andlw	01h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	89
;time.c: 89: lcd_cmd(1,(disp[5]&0X0F)+0X30);
	movf	(conversion@disp),w
	addlw	05h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	90
	
l2461:	
;time.c: 90: lcd_cmd(1,'/');
	movlw	(02Fh)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	92
	
l2463:	
;time.c: 92: lcd_cmd(1,((disp[6]&0XF0)>>4)+0X30);
	movf	(conversion@disp),w
	addlw	06h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u2495:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u2495
	movf	0+(??_conversion+0)+0,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	93
	
l2465:	
;time.c: 93: lcd_cmd(1,(disp[6]&0X0F)+0X30);
	movf	(conversion@disp),w
	addlw	06h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	line	98
	
l1070:	
	return
	opt stack 0
GLOBAL	__end_of_conversion
	__end_of_conversion:
;; =============== function _conversion ends ============

	signat	_conversion,4216
	global	_string
psect	text278,local,class=CODE,delta=2
global __ptext278
__ptext278:

;; *************** function _string *****************
;; Defined at:
;;		line 52 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
;; Parameters:    Size  Location     Type
;;  p               1    wreg     PTR unsigned char 
;;		 -> STR_2(7), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  p               1    5[COMMON] PTR unsigned char 
;;		 -> STR_2(7), STR_1(7), 
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
;;		_conversion
;; This function uses a non-reentrant model
;;
psect	text278
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	52
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
	
_string:	
	opt	stack 4
; Regs used in _string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;string@p stored from wreg
	movwf	(string@p)
	line	53
	
l2419:	
;time.c: 53: while(*p)
	goto	l2425
	
l1064:	
	line	55
	
l2421:	
;time.c: 54: {
;time.c: 55: lcd_cmd(1,*p++);
	movf	(string@p),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_string+0)+0
	movf	(??_string+0)+0,w
	movwf	(?_lcd_cmd)
	movlw	(01h)
	fcall	_lcd_cmd
	
l2423:	
	movlw	(01h)
	movwf	(??_string+0)+0
	movf	(??_string+0)+0,w
	addwf	(string@p),f
	goto	l2425
	line	56
	
l1063:	
	line	53
	
l2425:	
	movf	(string@p),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l2421
u2400:
	goto	l1066
	
l1065:	
	line	57
	
l1066:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
;; =============== function _string ends ============

	signat	_string,4216
	global	_I2C_Restart
psect	text279,local,class=CODE,delta=2
global __ptext279
__ptext279:

;; *************** function _I2C_Restart *****************
;; Defined at:
;;		line 29 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
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
psect	text279
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	29
	global	__size_of_I2C_Restart
	__size_of_I2C_Restart	equ	__end_of_I2C_Restart-_I2C_Restart
	
_I2C_Restart:	
	opt	stack 6
; Regs used in _I2C_Restart: [status,2+status,0+pclath+cstack]
	line	30
	
l2415:	
;time.c: 30: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	31
	
l2417:	
;time.c: 31: hold();
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
psect	text280,local,class=CODE,delta=2
global __ptext280
__ptext280:

;; *************** function _I2C_Slave *****************
;; Defined at:
;;		line 22 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
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
psect	text280
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	22
	global	__size_of_I2C_Slave
	__size_of_I2C_Slave	equ	__end_of_I2C_Slave-_I2C_Slave
	
_I2C_Slave:	
	opt	stack 6
; Regs used in _I2C_Slave: [wreg+status,2+status,0+pclath+cstack]
;I2C_Slave@data stored from wreg
	movwf	(I2C_Slave@data)
	line	23
	
l2409:	
;time.c: 23: ACKSTAT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1166/8)^080h,(1166)&7
	line	24
	
l2411:	
;time.c: 24: SSPBUF=data;
	movf	(I2C_Slave@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	25
;time.c: 25: while(ACKSTAT==1);
	goto	l1046
	
l1047:	
	
l1046:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l1046
u2390:
	goto	l2413
	
l1048:	
	line	26
	
l2413:	
;time.c: 26: hold();
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
psect	text281,local,class=CODE,delta=2
global __ptext281
__ptext281:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
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
psect	text281
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	17
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 6
; Regs used in _I2C_Stop: [status,2+status,0+pclath+cstack]
	line	18
	
l2405:	
;time.c: 18: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	19
	
l2407:	
;time.c: 19: hold();
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
psect	text282,local,class=CODE,delta=2
global __ptext282
__ptext282:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 12 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
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
psect	text282
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	12
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 6
; Regs used in _I2C_Start: [status,2+status,0+pclath+cstack]
	line	13
	
l2401:	
;time.c: 13: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	14
	
l2403:	
;time.c: 14: hold();
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
psect	text283,local,class=CODE,delta=2
global __ptext283
__ptext283:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 9 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  c               1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_string
;;		_conversion
;;		_main
;; This function uses a non-reentrant model
;;
psect	text283
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\lcd.h"
	line	9
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 4
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	10
	
l2389:	
;lcd.h: 10: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2371
	goto	u2370
	
u2371:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2384
u2370:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2384:
	line	11
	
l2391:	
;lcd.h: 11: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	12
	
l2393:	
;lcd.h: 12: RE1=1;
	bsf	(73/8),(73)&7
	line	13
	
l2395:	
;lcd.h: 13: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	14
	
l2397:	
;lcd.h: 14: RE1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
	line	15
	
l2399:	
;lcd.h: 15: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	16
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,8312
	global	_I2C_Read
psect	text284,local,class=CODE,delta=2
global __ptext284
__ptext284:

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 34 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
;; Parameters:    Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  read            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
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
psect	text284
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	34
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 7
; Regs used in _I2C_Read: [wreg]
	line	36
	
l2375:	
;time.c: 35: unsigned char read;
;time.c: 36: if(i==6)
	movlw	06h
	xorwf	(I2C_Read@i),w
	iorwf	(I2C_Read@i+1),w
	skipz
	goto	u2351
	goto	u2350
u2351:
	goto	l1055
u2350:
	line	38
	
l2377:	
;time.c: 37: {
;time.c: 38: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	39
;time.c: 39: }
	goto	l1057
	line	40
	
l1055:	
	line	42
;time.c: 40: else
;time.c: 41: {
;time.c: 42: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	goto	l1057
	line	43
	
l1056:	
	line	44
;time.c: 43: }
;time.c: 44: while(BF==0);
	goto	l1057
	
l1058:	
	
l1057:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l1057
u2360:
	goto	l2379
	
l1059:	
	line	45
	
l2379:	
;time.c: 45: read=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	movwf	(I2C_Read@read)
	line	46
	
l2381:	
;time.c: 46: SSPOV=0;
	bcf	(166/8),(166)&7
	line	47
	
l2383:	
;time.c: 47: ACKEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1164/8)^080h,(1164)&7
	line	48
	
l2385:	
;time.c: 48: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	49
;time.c: 49: return read;
	movf	(I2C_Read@read),w
	goto	l1060
	
l2387:	
	line	50
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
;; =============== function _I2C_Read ends ============

	signat	_I2C_Read,4217
	global	_hold
psect	text285,local,class=CODE,delta=2
global __ptext285
__ptext285:

;; *************** function _hold *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
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
psect	text285
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\time.c"
	line	7
	global	__size_of_hold
	__size_of_hold	equ	__end_of_hold-_hold
	
_hold:	
	opt	stack 6
; Regs used in _hold: []
	line	8
	
l2373:	
;time.c: 8: while(SSPIF==0);
	goto	l1034
	
l1035:	
	
l1034:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1034
u2340:
	
l1036:	
	line	9
;time.c: 9: SSPIF=0;
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
psect	text286,local,class=CODE,delta=2
global __ptext286
__ptext286:

;; *************** function _delay *****************
;; Defined at:
;;		line 5 in file "D:\Embedded\pic\code\software\protocal\I2c\RTC\lcd.h"
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
psect	text286
	file	"D:\Embedded\pic\code\software\protocal\I2c\RTC\lcd.h"
	line	5
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	6
	
l2369:	
;lcd.h: 6: while(ms--);
	goto	l2371
	
l1026:	
	goto	l2371
	
l1025:	
	
l2371:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2335
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2335:

	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l2371
u2330:
	goto	l1028
	
l1027:	
	line	7
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text287,local,class=CODE,delta=2
global __ptext287
__ptext287:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
