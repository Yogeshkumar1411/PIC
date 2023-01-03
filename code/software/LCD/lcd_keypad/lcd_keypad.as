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
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_PORTA
psect	text66,local,class=CODE,delta=2
global __ptext66
__ptext66:
_PORTA	set	5
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RA5
_RA5	set	45
	global	_RA6
_RA6	set	46
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_TRISA
_TRISA	set	133
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"lcd_keypad.as"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
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
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x5
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
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
;; (0) _main                                                 1     1      0      60
;;                                              5 COMMON     1     1      0
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (1) _lcd_cmd                                              3     1      2      60
;;                                              2 COMMON     3     1      2
;;                              _delay
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
;;		line 31 in file "D:\Embedded\pic\code\software\LCD\lcd_keypad\lcd_keypad.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\LCD\lcd_keypad\lcd_keypad.c"
	line	31
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	32
	
l2236:	
;lcd_keypad.c: 32: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	33
	
l2238:	
;lcd_keypad.c: 33: TRISA=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	34
	
l2240:	
;lcd_keypad.c: 34: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	35
	
l2242:	
;lcd_keypad.c: 35: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	36
	
l2244:	
;lcd_keypad.c: 36: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	37
	
l2246:	
;lcd_keypad.c: 37: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	38
	
l2248:	
;lcd_keypad.c: 38: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	39
	
l2250:	
;lcd_keypad.c: 39: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	40
	
l2252:	
;lcd_keypad.c: 40: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	41
	
l2254:	
;lcd_keypad.c: 41: lcd_cmd(0,0,0X0F);
	clrf	(?_lcd_cmd)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	42
	
l2256:	
;lcd_keypad.c: 42: lcd_cmd(0,0,0XC0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2258
	line	43
;lcd_keypad.c: 43: while(1)
	
l1034:	
	line	45
	
l2258:	
;lcd_keypad.c: 44: {
;lcd_keypad.c: 45: RA3=1;RA4=RA5=RA6=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(43/8),(43)&7
	
l2260:	
	bcf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	line	46
	
l2262:	
;lcd_keypad.c: 46: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1035
u2190:
	line	48
	
l2264:	
;lcd_keypad.c: 47: {
;lcd_keypad.c: 48: lcd_cmd(1,0,'1');
	clrf	(?_lcd_cmd)
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	49
;lcd_keypad.c: 49: while(RA0==1);
	goto	l1036
	
l1037:	
	
l1036:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2201
	goto	u2200
u2201:
	goto	l1036
u2200:
	goto	l1035
	
l1038:	
	line	50
	
l1035:	
	line	51
;lcd_keypad.c: 50: }
;lcd_keypad.c: 51: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1039
u2210:
	line	53
	
l2266:	
;lcd_keypad.c: 52: {
;lcd_keypad.c: 53: lcd_cmd(1,0,'2');
	clrf	(?_lcd_cmd)
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	54
;lcd_keypad.c: 54: while(RA1==1);
	goto	l1040
	
l1041:	
	
l1040:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l1040
u2220:
	goto	l1039
	
l1042:	
	line	55
	
l1039:	
	line	56
;lcd_keypad.c: 55: }
;lcd_keypad.c: 56: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l1043
u2230:
	line	58
	
l2268:	
;lcd_keypad.c: 57: {
;lcd_keypad.c: 58: lcd_cmd(1,0,'3');
	clrf	(?_lcd_cmd)
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	59
;lcd_keypad.c: 59: while(RA2==1);
	goto	l1044
	
l1045:	
	
l1044:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2241
	goto	u2240
u2241:
	goto	l1044
u2240:
	goto	l1043
	
l1046:	
	line	60
	
l1043:	
	line	61
;lcd_keypad.c: 60: }
;lcd_keypad.c: 61: RA4=1;RA3=RA5=RA6=0;
	bsf	(44/8),(44)&7
	bcf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(43/8),(43)&7
	line	62
;lcd_keypad.c: 62: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2251
	goto	u2250
u2251:
	goto	l1047
u2250:
	line	64
	
l2270:	
;lcd_keypad.c: 63: {
;lcd_keypad.c: 64: lcd_cmd(1,0,'4');
	clrf	(?_lcd_cmd)
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	65
;lcd_keypad.c: 65: while(RA0==1);
	goto	l1048
	
l1049:	
	
l1048:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l1048
u2260:
	goto	l1047
	
l1050:	
	line	66
	
l1047:	
	line	67
;lcd_keypad.c: 66: }
;lcd_keypad.c: 67: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2271
	goto	u2270
u2271:
	goto	l1051
u2270:
	line	69
	
l2272:	
;lcd_keypad.c: 68: {
;lcd_keypad.c: 69: lcd_cmd(1,0,'5');
	clrf	(?_lcd_cmd)
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	70
;lcd_keypad.c: 70: while(RA1==1);
	goto	l1052
	
l1053:	
	
l1052:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2281
	goto	u2280
u2281:
	goto	l1052
u2280:
	goto	l1051
	
l1054:	
	line	71
	
l1051:	
	line	72
;lcd_keypad.c: 71: }
;lcd_keypad.c: 72: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2291
	goto	u2290
u2291:
	goto	l1055
u2290:
	line	74
	
l2274:	
;lcd_keypad.c: 73: {
;lcd_keypad.c: 74: lcd_cmd(1,0,'6');
	clrf	(?_lcd_cmd)
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	75
;lcd_keypad.c: 75: while(RA2==1);
	goto	l1056
	
l1057:	
	
l1056:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2301
	goto	u2300
u2301:
	goto	l1056
u2300:
	goto	l1055
	
l1058:	
	line	76
	
l1055:	
	line	77
;lcd_keypad.c: 76: }
;lcd_keypad.c: 77: RA5=1;RA3=RA4=RA6=0;
	bsf	(45/8),(45)&7
	bcf	(46/8),(46)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	line	78
;lcd_keypad.c: 78: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2311
	goto	u2310
u2311:
	goto	l1059
u2310:
	line	80
	
l2276:	
;lcd_keypad.c: 79: {
;lcd_keypad.c: 80: lcd_cmd(1,0,'7');
	clrf	(?_lcd_cmd)
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	81
;lcd_keypad.c: 81: while(RA0==1);
	goto	l1060
	
l1061:	
	
l1060:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2321
	goto	u2320
u2321:
	goto	l1060
u2320:
	goto	l1059
	
l1062:	
	line	82
	
l1059:	
	line	83
;lcd_keypad.c: 82: }
;lcd_keypad.c: 83: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l1063
u2330:
	line	85
	
l2278:	
;lcd_keypad.c: 84: {
;lcd_keypad.c: 85: lcd_cmd(1,0,'8');
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	86
;lcd_keypad.c: 86: while(RA1==1);
	goto	l1064
	
l1065:	
	
l1064:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2341
	goto	u2340
u2341:
	goto	l1064
u2340:
	goto	l1063
	
l1066:	
	line	87
	
l1063:	
	line	88
;lcd_keypad.c: 87: }
;lcd_keypad.c: 88: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2351
	goto	u2350
u2351:
	goto	l1067
u2350:
	line	90
	
l2280:	
;lcd_keypad.c: 89: {
;lcd_keypad.c: 90: lcd_cmd(1,0,'9');
	clrf	(?_lcd_cmd)
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	91
;lcd_keypad.c: 91: while(RA2==1);
	goto	l1068
	
l1069:	
	
l1068:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l1068
u2360:
	goto	l1067
	
l1070:	
	line	92
	
l1067:	
	line	93
;lcd_keypad.c: 92: }
;lcd_keypad.c: 93: RA6=1;RA3=RA4=RA5=0;
	bsf	(46/8),(46)&7
	bcf	(45/8),(45)&7
	bcf	(44/8),(44)&7
	bcf	(43/8),(43)&7
	line	94
;lcd_keypad.c: 94: if(RA0==1)
	btfss	(40/8),(40)&7
	goto	u2371
	goto	u2370
u2371:
	goto	l1071
u2370:
	line	96
	
l2282:	
;lcd_keypad.c: 95: {
;lcd_keypad.c: 96: lcd_cmd(1,0,'*');
	clrf	(?_lcd_cmd)
	movlw	(02Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	97
;lcd_keypad.c: 97: while(RA0==1);
	goto	l1072
	
l1073:	
	
l1072:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(40/8),(40)&7
	goto	u2381
	goto	u2380
u2381:
	goto	l1072
u2380:
	goto	l1071
	
l1074:	
	line	98
	
l1071:	
	line	99
;lcd_keypad.c: 98: }
;lcd_keypad.c: 99: if(RA1==1)
	btfss	(41/8),(41)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l1075
u2390:
	line	101
	
l2284:	
;lcd_keypad.c: 100: {
;lcd_keypad.c: 101: lcd_cmd(1,0,'0');
	clrf	(?_lcd_cmd)
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	102
;lcd_keypad.c: 102: while(RA1==1);
	goto	l1076
	
l1077:	
	
l1076:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(41/8),(41)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l1076
u2400:
	goto	l1075
	
l1078:	
	line	103
	
l1075:	
	line	104
;lcd_keypad.c: 103: }
;lcd_keypad.c: 104: if(RA2==1)
	btfss	(42/8),(42)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l2258
u2410:
	line	106
	
l2286:	
;lcd_keypad.c: 105: {
;lcd_keypad.c: 106: lcd_cmd(1,0,'#');
	clrf	(?_lcd_cmd)
	movlw	(023h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	107
;lcd_keypad.c: 107: while(RA2==1);
	goto	l1080
	
l1081:	
	
l1080:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(42/8),(42)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l1080
u2420:
	goto	l2258
	
l1082:	
	goto	l2258
	line	108
	
l1079:	
	goto	l2258
	line	109
	
l1083:	
	line	43
	goto	l2258
	
l1084:	
	line	110
	
l1085:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_lcd_cmd
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 21 in file "D:\Embedded\pic\code\software\LCD\lcd_keypad\lcd_keypad.c"
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
;; This function uses a non-reentrant model
;;
psect	text67
	file	"D:\Embedded\pic\code\software\LCD\lcd_keypad\lcd_keypad.c"
	line	21
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 6
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	22
	
l2224:	
;lcd_keypad.c: 22: RE0=a;
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
	line	23
;lcd_keypad.c: 23: RE1=b;
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
	line	24
	
l2226:	
;lcd_keypad.c: 24: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	25
	
l2228:	
;lcd_keypad.c: 25: RE2=1;
	bsf	(74/8),(74)&7
	line	26
	
l2230:	
;lcd_keypad.c: 26: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	27
	
l2232:	
;lcd_keypad.c: 27: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	28
	
l2234:	
;lcd_keypad.c: 28: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	29
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_delay
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _delay *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\software\LCD\lcd_keypad\lcd_keypad.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[COMMON] unsigned int 
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
psect	text68
	file	"D:\Embedded\pic\code\software\LCD\lcd_keypad\lcd_keypad.c"
	line	17
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	18
	
l1454:	
;lcd_keypad.c: 18: while(a--);
	goto	l1456
	
l1026:	
	goto	l1456
	
l1025:	
	
l1456:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1456
u10:
	goto	l1028
	
l1027:	
	line	19
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
