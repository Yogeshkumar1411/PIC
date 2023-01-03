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
	FNCALL	_display,_pulse
	FNCALL	_string,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_PORTB
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTE
_PORTE	set	9
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
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
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	?_string
?_string:	; 0 bytes @ 0x0
	global	?_RC
?_RC:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	??_string
??_string:	; 0 bytes @ 0x2
	global	?_display
?_display:	; 0 bytes @ 0x2
	global	display@b
display@b:	; 1 bytes @ 0x2
	ds	1
	global	string@data1
string@data1:	; 1 bytes @ 0x3
	global	display@c
display@c:	; 1 bytes @ 0x3
	ds	1
	global	??_display
??_display:	; 0 bytes @ 0x4
	global	??_RC
??_RC:	; 0 bytes @ 0x4
	ds	1
	global	display@a
display@a:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	RC@data
RC@data:	; 50 bytes @ 0x0
	ds	50
	global	RC@i
RC@i:	; 2 bytes @ 0x32
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
;; BANK0           80     52      52
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; string@data1	PTR unsigned char  size(1) Largest target is 50
;;		 -> RC@data(BANK0[50]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_display
;;   _RC->_string
;;   _pulse->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_RC
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
;; (0) _main                                                 1     1      0     386
;;                                              6 COMMON     1     1      0
;;                            _display
;;                                 _RC
;; ---------------------------------------------------------------------------------
;; (1) _RC                                                  53    53      0     276
;;                                              4 COMMON     1     1      0
;;                                              0 BANK0     52    52      0
;;                             _string
;; ---------------------------------------------------------------------------------
;; (1) _display                                              4     2      2     110
;;                                              2 COMMON     4     2      2
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _string                                               2     2      0      89
;;                                              2 COMMON     2     2      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (3) _pulse                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (4) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _display
;;     _pulse
;;       _delay
;;   _RC
;;     _string
;;       _pulse
;;         _delay
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
;;STACK                0      0       4       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50     34      34       5       65.0%
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
;;		line 65 in file "D:\Embedded\pic\code\hardware\receive_data\Receive.c"
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
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_display
;;		_RC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\hardware\receive_data\Receive.c"
	line	65
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	66
	
l2329:	
;Receive.c: 66: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	67
	
l2331:	
;Receive.c: 67: TRISC=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	68
	
l2333:	
;Receive.c: 68: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	69
	
l2335:	
;Receive.c: 69: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	70
	
l2337:	
;Receive.c: 70: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	71
	
l2339:	
;Receive.c: 71: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	72
	
l2341:	
;Receive.c: 72: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	73
	
l2343:	
;Receive.c: 73: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	74
	
l2345:	
;Receive.c: 74: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	75
	
l2347:	
;Receive.c: 75: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	76
	
l2349:	
;Receive.c: 76: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	77
	
l2351:	
;Receive.c: 77: display(0,0,0X02);
	clrf	(?_display)
	movlw	(02h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	78
	
l2353:	
;Receive.c: 78: display(0,0,0X28);
	clrf	(?_display)
	movlw	(028h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	79
	
l2355:	
;Receive.c: 79: display(0,0,0X0F);
	clrf	(?_display)
	movlw	(0Fh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	80
	
l2357:	
;Receive.c: 80: display(0,0,0X80);
	clrf	(?_display)
	movlw	(080h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	line	81
	
l2359:	
;Receive.c: 81: display(0,0,0X18);
	clrf	(?_display)
	movlw	(018h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_display)+01h
	movlw	(0)
	fcall	_display
	goto	l2361
	line	82
;Receive.c: 82: while(1)
	
l1053:	
	line	84
	
l2361:	
;Receive.c: 83: {
;Receive.c: 84: RC();
	fcall	_RC
	goto	l2361
	line	85
	
l1054:	
	line	82
	goto	l2361
	
l1055:	
	line	86
	
l1056:	
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
;;		line 44 in file "D:\Embedded\pic\code\hardware\receive_data\Receive.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data           50    0[BANK0 ] unsigned char [50]
;;  i               2   50[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      52       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      52       0       0       0
;;Total ram usage:       53 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_string
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text181
	file	"D:\Embedded\pic\code\hardware\receive_data\Receive.c"
	line	44
	global	__size_of_RC
	__size_of_RC	equ	__end_of_RC-_RC
	
_RC:	
	opt	stack 4
; Regs used in _RC: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	45
	
l2313:	
;Receive.c: 45: int i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(RC@i)
	clrf	(RC@i+1)
	line	47
;Receive.c: 46: char data[50];
;Receive.c: 47: while(i<50)
	goto	l2327
	
l1044:	
	line	49
;Receive.c: 48: {
;Receive.c: 49: while(RCIF==0);
	goto	l1045
	
l1046:	
	
l1045:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2331
	goto	u2330
u2331:
	goto	l1045
u2330:
	goto	l2315
	
l1047:	
	line	50
	
l2315:	
;Receive.c: 50: data[i]=RCREG;
	movf	(26),w	;volatile
	movwf	(??_RC+0)+0
	movf	(RC@i),w
	addlw	RC@data&0ffh
	movwf	fsr0
	movf	(??_RC+0)+0,w
	bcf	status, 7	;select IRP bank0
	movwf	indf
	line	51
;Receive.c: 51: if(data[i]==0X0D)
	movf	(RC@i),w
	addlw	RC@data&0ffh
	movwf	fsr0
	movf	indf,w
	xorlw	0Dh
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2323
u2340:
	line	53
	
l2317:	
;Receive.c: 52: {
;Receive.c: 53: data[i]='\0';
	movf	(RC@i),w
	addlw	RC@data&0ffh
	movwf	fsr0
	clrf	indf
	line	54
	
l2319:	
;Receive.c: 54: string(data);
	movlw	(RC@data)&0ffh
	fcall	_string
	line	55
	
l2321:	
;Receive.c: 55: i=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(RC@i)
	clrf	(RC@i+1)
	goto	l2323
	line	56
	
l1048:	
	line	59
	
l2323:	
;Receive.c: 56: }
;Receive.c: 59: i++;
	movlw	low(01h)
	addwf	(RC@i),f
	skipnc
	incf	(RC@i+1),f
	movlw	high(01h)
	addwf	(RC@i+1),f
	line	60
	
l2325:	
;Receive.c: 60: RCIF=0;
	bcf	(101/8),(101)&7
	goto	l2327
	line	61
	
l1043:	
	line	47
	
l2327:	
	movf	(RC@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(032h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(032h)
	subwf	(RC@i),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l1045
u2350:
	goto	l1050
	
l1049:	
	line	62
	
l1050:	
	return
	opt stack 0
GLOBAL	__end_of_RC
	__end_of_RC:
;; =============== function _RC ends ============

	signat	_RC,88
	global	_display
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

;; *************** function _display *****************
;; Defined at:
;;		line 34 in file "D:\Embedded\pic\code\hardware\receive_data\Receive.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text182
	file	"D:\Embedded\pic\code\hardware\receive_data\Receive.c"
	line	34
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg+status,2+status,0+pclath+cstack]
;display@a stored from wreg
	movwf	(display@a)
	line	35
	
l2303:	
;Receive.c: 35: RE0=a;
	btfsc	(display@a),0
	goto	u2281
	goto	u2280
	
u2281:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2294
u2280:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2294:
	line	36
;Receive.c: 36: RE1=b;
	btfsc	(display@b),0
	goto	u2301
	goto	u2300
	
u2301:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2314
u2300:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2314:
	line	37
	
l2305:	
;Receive.c: 37: PORTB=c;
	movf	(display@c),w
	movwf	(6)	;volatile
	line	38
	
l2307:	
;Receive.c: 38: pulse();
	fcall	_pulse
	line	39
	
l2309:	
;Receive.c: 39: PORTB=c<<4;
	movf	(display@c),w
	movwf	(??_display+0)+0
	movlw	(04h)-1
u2325:
	clrc
	rlf	(??_display+0)+0,f
	addlw	-1
	skipz
	goto	u2325
	clrc
	rlf	(??_display+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	40
	
l2311:	
;Receive.c: 40: pulse();
	fcall	_pulse
	line	42
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,12408
	global	_string
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

;; *************** function _string *****************
;; Defined at:
;;		line 21 in file "D:\Embedded\pic\code\hardware\receive_data\Receive.c"
;; Parameters:    Size  Location     Type
;;  data1           1    wreg     PTR unsigned char 
;;		 -> RC@data(50), 
;; Auto vars:     Size  Location     Type
;;  data1           1    3[COMMON] PTR unsigned char 
;;		 -> RC@data(50), 
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
;;		_pulse
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text183
	file	"D:\Embedded\pic\code\hardware\receive_data\Receive.c"
	line	21
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
	
_string:	
	opt	stack 4
; Regs used in _string: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;string@data1 stored from wreg
	movwf	(string@data1)
	line	22
	
l2289:	
;Receive.c: 22: while(*data1)
	goto	l2301
	
l1035:	
	line	24
;Receive.c: 23: {
;Receive.c: 24: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	25
;Receive.c: 25: RE1=0;
	bcf	(73/8),(73)&7
	line	26
	
l2291:	
;Receive.c: 26: PORTB=*data1;
	movf	(string@data1),w
	movwf	fsr0
	movf	indf,w
	movwf	(6)	;volatile
	line	27
	
l2293:	
;Receive.c: 27: pulse();
	fcall	_pulse
	line	28
	
l2295:	
;Receive.c: 28: PORTB=*data1<<4;
	movf	(string@data1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_string+0)+0
	movlw	(04h)-1
u2265:
	clrc
	rlf	(??_string+0)+0,f
	addlw	-1
	skipz
	goto	u2265
	clrc
	rlf	(??_string+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	29
	
l2297:	
;Receive.c: 29: pulse();
	fcall	_pulse
	line	30
	
l2299:	
;Receive.c: 30: data1++;
	movlw	(01h)
	movwf	(??_string+0)+0
	movf	(??_string+0)+0,w
	addwf	(string@data1),f
	goto	l2301
	line	31
	
l1034:	
	line	22
	
l2301:	
	movf	(string@data1),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u2271
	goto	u2270
u2271:
	goto	l1035
u2270:
	goto	l1037
	
l1036:	
	line	32
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
;; =============== function _string ends ============

	signat	_string,4216
	global	_pulse
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

;; *************** function _pulse *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\hardware\receive_data\Receive.c"
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
;;		_string
;;		_display
;; This function uses a non-reentrant model
;;
psect	text184
	file	"D:\Embedded\pic\code\hardware\receive_data\Receive.c"
	line	14
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 4
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l2283:	
;Receive.c: 15: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	16
	
l2285:	
;Receive.c: 16: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
	movwf	((?_delay))+1
	fcall	_delay
	line	17
	
l2287:	
;Receive.c: 17: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	18
;Receive.c: 18: delay(2000);
	movlw	low(07D0h)
	movwf	(?_delay)
	movlw	high(07D0h)
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
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\hardware\receive_data\Receive.c"
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
psect	text185
	file	"D:\Embedded\pic\code\hardware\receive_data\Receive.c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 4
; Regs used in _delay: [wreg]
	line	11
	
l2279:	
;Receive.c: 11: while(ms--);
	goto	l2281
	
l1026:	
	goto	l2281
	
l1025:	
	
l2281:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2255
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2255:

	skipz
	goto	u2251
	goto	u2250
u2251:
	goto	l2281
u2250:
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
psect	text186,local,class=CODE,delta=2
global __ptext186
__ptext186:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
