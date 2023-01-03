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
	FNCALL	_display,_delay
	FNROOT	_main
	global	_PORTC
psect	text78,local,class=CODE,delta=2
global __ptext78
__ptext78:
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
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
	file	"Receive.as"
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
	global	?_RC
?_RC:	; 2 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
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
	global	display@a
display@a:	; 1 bytes @ 0x4
	ds	1
	global	??_RC
??_RC:	; 0 bytes @ 0x5
	ds	1
	global	RC@data
RC@data:	; 4 bytes @ 0x6
	ds	4
	global	RC@i
RC@i:	; 2 bytes @ 0xA
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0xC
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_RC
;;   _RC->_display
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
;; (0) _main                                                 1     1      0     300
;;                                             12 COMMON     1     1      0
;;                            _display
;;                                 _RC
;; ---------------------------------------------------------------------------------
;; (1) _RC                                                   7     7      0     240
;;                                              5 COMMON     7     7      0
;;                            _display
;; ---------------------------------------------------------------------------------
;; (2) _display                                              3     1      2      60
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      15
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
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      D       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
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
;;		line 62 in file "D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
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
	file	"D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
	line	62
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	63
	
l2231:	
;Receive.c: 63: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	64
	
l2233:	
;Receive.c: 64: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	65
	
l2235:	
;Receive.c: 65: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	66
	
l2237:	
;Receive.c: 66: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	67
	
l2239:	
;Receive.c: 67: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	68
	
l2241:	
;Receive.c: 68: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	69
	
l2243:	
;Receive.c: 69: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	70
	
l2245:	
;Receive.c: 70: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	71
	
l2247:	
;Receive.c: 71: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	72
	
l2249:	
;Receive.c: 72: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	73
	
l2251:	
;Receive.c: 73: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	74
	
l2253:	
;Receive.c: 74: display(0,0,0X38);
	clrf	(?_display)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	75
	
l2255:	
;Receive.c: 75: display(0,0,0X0F);
	clrf	(?_display)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	76
	
l2257:	
;Receive.c: 76: display(0,0,0X80);
	clrf	(?_display)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	goto	l2259
	line	77
;Receive.c: 77: while(1)
	
l1047:	
	line	79
	
l2259:	
;Receive.c: 78: {
;Receive.c: 79: RC();
	fcall	_RC
	goto	l2259
	line	80
	
l1048:	
	line	77
	goto	l2259
	
l1049:	
	line	81
	
l1050:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RC
psect	text79,local,class=CODE,delta=2
global __ptext79
__ptext79:

;; *************** function _RC *****************
;; Defined at:
;;		line 31 in file "D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            4    6[COMMON] unsigned char [4]
;;  i               2   10[COMMON] int 
;; Return value:  Size  Location     Type
;;                  2  1033[COMMON] int 
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         6       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_display
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text79
	file	"D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
	line	31
	global	__size_of_RC
	__size_of_RC	equ	__end_of_RC-_RC
	
_RC:	
	opt	stack 5
; Regs used in _RC: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	32
	
l2201:	
;Receive.c: 32: int i=0;
	clrf	(RC@i)
	clrf	(RC@i+1)
	line	34
;Receive.c: 33: char data[4];
;Receive.c: 34: while(i<4)
	goto	l2211
	
l1035:	
	line	36
;Receive.c: 35: {
;Receive.c: 36: while(RCIF==0);
	goto	l1036
	
l1037:	
	
l1036:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1036
u2190:
	goto	l2203
	
l1038:	
	line	37
	
l2203:	
;Receive.c: 37: data[i]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_RC+0)+0
	movf	(RC@i),w
	addlw	RC@data&0ffh
	movwf	fsr0
	movf	(??_RC+0)+0,w
	movwf	indf
	line	38
	
l2205:	
;Receive.c: 38: RCIF=0;
	bcf	(101/8),(101)&7
	line	39
	
l2207:	
;Receive.c: 39: display(1,0,data[i]);
	clrf	(?_display)
	movf	(RC@i),w
	addlw	RC@data&0ffh
	movwf	fsr0
	movf	indf,w
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(01h)
	fcall	_display
	line	40
	
l2209:	
;Receive.c: 40: i++;
	movlw	low(01h)
	addwf	(RC@i),f
	skipnc
	incf	(RC@i+1),f
	movlw	high(01h)
	addwf	(RC@i+1),f
	goto	l2211
	line	41
	
l1034:	
	line	34
	
l2211:	
	movf	(RC@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(04h)
	subwf	(RC@i),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l1036
u2200:
	goto	l2213
	
l1039:	
	line	42
	
l2213:	
;Receive.c: 41: }
;Receive.c: 42: if(data[0]=='O'&&data[1]=='N')
	movf	(RC@data),w
	xorlw	04Fh
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l2221
u2210:
	
l2215:	
	movf	0+(RC@data)+01h,w
	xorlw	04Eh
	skipz
	goto	u2221
	goto	u2220
u2221:
	goto	l2221
u2220:
	line	44
	
l2217:	
;Receive.c: 43: {
;Receive.c: 44: if(data[2]==13)
	movf	0+(RC@data)+02h,w
	xorlw	0Dh
	skipz
	goto	u2231
	goto	u2230
u2231:
	goto	l2221
u2230:
	line	46
	
l2219:	
;Receive.c: 45: {
;Receive.c: 46: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	goto	l2221
	line	48
	
l1041:	
	goto	l2221
	line	50
	
l1040:	
	line	51
	
l2221:	
;Receive.c: 48: }
;Receive.c: 50: }
;Receive.c: 51: if(data[0]=='O'&&data[1]=='F'&&data[2]=='F')
	movf	(RC@data),w
	xorlw	04Fh
	skipz
	goto	u2241
	goto	u2240
u2241:
	goto	l1044
u2240:
	
l2223:	
	movf	0+(RC@data)+01h,w
	xorlw	046h
	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l1044
u2250:
	
l2225:	
	movf	0+(RC@data)+02h,w
	xorlw	046h
	skipz
	goto	u2261
	goto	u2260
u2261:
	goto	l1044
u2260:
	line	53
	
l2227:	
;Receive.c: 52: {
;Receive.c: 53: if(data[3]==13)
	movf	0+(RC@data)+03h,w
	xorlw	0Dh
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l1044
u2270:
	line	55
	
l2229:	
;Receive.c: 54: {
;Receive.c: 55: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	goto	l1044
	line	57
	
l1043:	
	goto	l1044
	line	59
	
l1042:	
	line	60
	
l1044:	
	return
	opt stack 0
GLOBAL	__end_of_RC
	__end_of_RC:
;; =============== function _RC ends ============

	signat	_RC,90
	global	_display
psect	text80,local,class=CODE,delta=2
global __ptext80
__ptext80:

;; *************** function _display *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
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
psect	text80
	file	"D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
	line	14
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@a stored from wreg
	movwf	(display@a)
	line	15
	
l2189:	
;Receive.c: 15: RE0=a;
	btfsc	(display@a),0
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
	line	16
;Receive.c: 16: RE1=b;
	btfsc	(display@b),0
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
	line	17
	
l2191:	
;Receive.c: 17: PORTD=c;
	movf	(display@c),w
	movwf	(8)	;volatile
	line	18
	
l2193:	
;Receive.c: 18: RE2=1;
	bsf	(74/8),(74)&7
	line	19
	
l2195:	
;Receive.c: 19: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	20
	
l2197:	
;Receive.c: 20: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	21
	
l2199:	
;Receive.c: 21: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	22
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,12408
	global	_delay
psect	text81,local,class=CODE,delta=2
global __ptext81
__ptext81:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
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
psect	text81
	file	"D:\Embedded\pic\code\software\protocal\receive_data\Receive.c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	11
	
l1419:	
;Receive.c: 11: while(ms--);
	goto	l1421
	
l1026:	
	goto	l1421
	
l1025:	
	
l1421:	
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
	goto	l1421
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
psect	text82,local,class=CODE,delta=2
global __ptext82
__ptext82:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
