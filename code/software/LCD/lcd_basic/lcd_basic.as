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
	FNCALL	_main,_type
	FNCALL	_main,_on
	FNCALL	_main,_address
	FNCALL	_main,_display
	FNCALL	_display,_pulse
	FNCALL	_address,_pulse
	FNCALL	_on,_pulse
	FNCALL	_type,_pulse
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	display@F1608
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	45

;initializer for display@F1608
	retlw	059h
	retlw	06Fh
	retlw	067h
	retlw	065h
	retlw	073h
	retlw	068h
	retlw	06Bh
	retlw	075h
	retlw	06Dh
	retlw	061h
	retlw	072h
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"lcd_basic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
display@F1608:
       ds      20

global btemp
psect inittext,class=CODE,delta=2
global init_fetch,btemp
;	Called with low address in FSR and high address in W
init_fetch:
	movf btemp,w
	movwf pclath
	movf btemp+1,w
	movwf pc
global init_ram
;Called with:
;	high address of idata address in btemp 
;	low address of idata address in btemp+1 
;	low address of data in FSR
;	high address + 1 of data in btemp-1
init_ram:
	fcall init_fetch
	movwf indf,f
	incf fsr,f
	movf fsr,w
	xorwf btemp-1,w
	btfsc status,2
	retlw 0
	incf btemp+1,f
	btfsc status,2
	incf btemp,f
	goto init_ram
; Initialize objects allocated to BANK0
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK0
	bcf	status, 7	;select IRP bank0
	movlw low(__pdataBANK0+20)
	movwf btemp-1,f
	movlw high(__pidataBANK0)
	movwf btemp,f
	movlw low(__pidataBANK0)
	movwf btemp+1,f
	movlw low(__pdataBANK0)
	movwf fsr,f
	fcall init_ram
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
	global	?_type
?_type:	; 0 bytes @ 0x0
	global	?_on
?_on:	; 0 bytes @ 0x0
	global	?_address
?_address:	; 0 bytes @ 0x0
	global	?_display
?_display:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	??_type
??_type:	; 0 bytes @ 0x2
	global	??_on
??_on:	; 0 bytes @ 0x2
	global	??_address
??_address:	; 0 bytes @ 0x2
	global	??_display
??_display:	; 0 bytes @ 0x2
	ds	4
	global	??_main
??_main:	; 0 bytes @ 0x6
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	display@a
display@a:	; 20 bytes @ 0x0
	ds	20
	global	display@p
display@p:	; 1 bytes @ 0x14
	ds	1
	global	display@i
display@i:	; 2 bytes @ 0x15
	ds	2
;;Data sizes: Strings 0, constant 0, data 20, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6       6
;; BANK0           80     23      43
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_display
;;   _pulse->_delay
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_display
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0     170
;;                               _type
;;                                 _on
;;                            _address
;;                            _display
;; ---------------------------------------------------------------------------------
;; (1) _display                                             27    27      0     104
;;                                              2 COMMON     4     4      0
;;                                              0 BANK0     23    23      0
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _address                                              0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _on                                                   0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (1) _type                                                 0     0      0      22
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) _pulse                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _type
;;     _pulse
;;       _delay
;;   _on
;;     _pulse
;;       _delay
;;   _address
;;     _pulse
;;       _delay
;;   _display
;;     _pulse
;;       _delay
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
;;DATA                 0      0      34      12        0.0%
;;ABS                  0      0      31       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       3       2        0.0%
;;BANK0               50     17      2B       5       53.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       6       1       42.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 57 in file "D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_type
;;		_on
;;		_address
;;		_display
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	57
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	58
	
l2298:	
;lcd_basic.c: 58: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	59
;lcd_basic.c: 59: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	60
;lcd_basic.c: 60: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	61
;lcd_basic.c: 61: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	62
;lcd_basic.c: 62: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	63
;lcd_basic.c: 63: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	64
	
l2300:	
;lcd_basic.c: 64: type();
	fcall	_type
	line	65
	
l2302:	
;lcd_basic.c: 65: on();
	fcall	_on
	goto	l2304
	line	66
;lcd_basic.c: 66: while(1)
	
l1050:	
	line	68
	
l2304:	
;lcd_basic.c: 67: {
;lcd_basic.c: 68: address();
	fcall	_address
	line	69
	
l2306:	
;lcd_basic.c: 69: display();
	fcall	_display
	goto	l2304
	line	70
	
l1051:	
	line	66
	goto	l2304
	
l1052:	
	line	71
	
l1053:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_display
psect	text193,local,class=CODE,delta=2
global __ptext193
__ptext193:

;; *************** function _display *****************
;; Defined at:
;;		line 42 in file "D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  a              20    0[BANK0 ] unsigned char [20]
;;  i               2   21[BANK0 ] int 
;;  p               1   20[BANK0 ] PTR unsigned char 
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
;;      Locals:         0      23       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4      23       0       0       0
;;Total ram usage:       27 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text193
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	42
	global	__size_of_display
	__size_of_display	equ	__end_of_display-_display
	
_display:	
	opt	stack 5
; Regs used in _display: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	45
	
l2276:	
;lcd_basic.c: 43: int i;
;lcd_basic.c: 44: char *p;
;lcd_basic.c: 45: char a[20]="Yogeshkumar";
	movlw	(display@a)&0ffh
	movwf	fsr0
	movlw	low(display@F1608)
	movwf	(??_display+0)+0
	movf	fsr0,w
	movwf	((??_display+0)+0+1)
	movlw	20
	movwf	((??_display+0)+0+2)
u2190:
	movf	(??_display+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	
	movf	indf,w
	movwf	((??_display+0)+0+3)
	incf	(??_display+0)+0,f
	movf	((??_display+0)+0+1),w
	movwf	fsr0
	
	movf	((??_display+0)+0+3),w
	movwf	indf
	incf	((??_display+0)+0+1),f
	decfsz	((??_display+0)+0+2),f
	goto	u2190
	line	46
	
l2278:	
;lcd_basic.c: 46: RE0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	line	47
	
l2280:	
;lcd_basic.c: 48: *p=&a[0];
	bcf	(73/8),(73)&7
	line	49
	
l2282:	
;lcd_basic.c: 49: for(i=0;i!='\0';i++)
	clrf	(display@i)
	clrf	(display@i+1)
	
l2284:	
	movf	((display@i+1)),w
	iorwf	((display@i)),w
	skipz
	goto	u2201
	goto	u2200
u2201:
	goto	l2288
u2200:
	goto	l2296
	
l2286:	
	goto	l2296
	line	50
	
l1045:	
	line	51
	
l2288:	
;lcd_basic.c: 50: {
;lcd_basic.c: 51: PORTD=*p;
	movf	(display@p),w
	movwf	fsr0
	movf	indf,w
	movwf	(8)	;volatile
	line	52
	
l2290:	
;lcd_basic.c: 52: *p++;
	movlw	(01h)
	movwf	(??_display+0)+0
	movf	(??_display+0)+0,w
	addwf	(display@p),f
	line	49
	
l2292:	
	movlw	low(01h)
	addwf	(display@i),f
	skipnc
	incf	(display@i+1),f
	movlw	high(01h)
	addwf	(display@i+1),f
	
l2294:	
	movf	((display@i+1)),w
	iorwf	((display@i)),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l2288
u2210:
	goto	l2296
	
l1046:	
	line	54
	
l2296:	
;lcd_basic.c: 53: }
;lcd_basic.c: 54: pulse();
	fcall	_pulse
	line	55
	
l1047:	
	return
	opt stack 0
GLOBAL	__end_of_display
	__end_of_display:
;; =============== function _display ends ============

	signat	_display,88
	global	_address
psect	text194,local,class=CODE,delta=2
global __ptext194
__ptext194:

;; *************** function _address *****************
;; Defined at:
;;		line 35 in file "D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text194
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	35
	global	__size_of_address
	__size_of_address	equ	__end_of_address-_address
	
_address:	
	opt	stack 5
; Regs used in _address: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l2270:	
;lcd_basic.c: 36: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	37
;lcd_basic.c: 37: RE1=0;
	bcf	(73/8),(73)&7
	line	38
	
l2272:	
;lcd_basic.c: 38: PORTD=0X80;
	movlw	(080h)
	movwf	(8)	;volatile
	line	39
	
l2274:	
;lcd_basic.c: 39: pulse();
	fcall	_pulse
	line	40
	
l1040:	
	return
	opt stack 0
GLOBAL	__end_of_address
	__end_of_address:
;; =============== function _address ends ============

	signat	_address,88
	global	_on
psect	text195,local,class=CODE,delta=2
global __ptext195
__ptext195:

;; *************** function _on *****************
;; Defined at:
;;		line 28 in file "D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text195
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	28
	global	__size_of_on
	__size_of_on	equ	__end_of_on-_on
	
_on:	
	opt	stack 5
; Regs used in _on: [wreg+status,2+status,0+pclath+cstack]
	line	29
	
l2264:	
;lcd_basic.c: 29: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	30
;lcd_basic.c: 30: RE1=0;
	bcf	(73/8),(73)&7
	line	31
	
l2266:	
;lcd_basic.c: 31: PORTD=0X0F;
	movlw	(0Fh)
	movwf	(8)	;volatile
	line	32
	
l2268:	
;lcd_basic.c: 32: pulse();
	fcall	_pulse
	line	33
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_on
	__end_of_on:
;; =============== function _on ends ============

	signat	_on,88
	global	_type
psect	text196,local,class=CODE,delta=2
global __ptext196
__ptext196:

;; *************** function _type *****************
;; Defined at:
;;		line 21 in file "D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text196
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	21
	global	__size_of_type
	__size_of_type	equ	__end_of_type-_type
	
_type:	
	opt	stack 5
; Regs used in _type: [wreg+status,2+status,0+pclath+cstack]
	line	22
	
l2258:	
;lcd_basic.c: 22: RE0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
	line	23
;lcd_basic.c: 23: RE1=0;
	bcf	(73/8),(73)&7
	line	24
	
l2260:	
;lcd_basic.c: 24: PORTD=0X38;
	movlw	(038h)
	movwf	(8)	;volatile
	line	25
	
l2262:	
;lcd_basic.c: 25: pulse();
	fcall	_pulse
	line	26
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_type
	__end_of_type:
;; =============== function _type ends ============

	signat	_type,88
	global	_pulse
psect	text197,local,class=CODE,delta=2
global __ptext197
__ptext197:

;; *************** function _pulse *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
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
;;		_type
;;		_on
;;		_address
;;		_display
;; This function uses a non-reentrant model
;;
psect	text197
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	14
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 5
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	15
	
l2252:	
;lcd_basic.c: 15: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	16
	
l2254:	
;lcd_basic.c: 16: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	17
	
l2256:	
;lcd_basic.c: 17: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	18
;lcd_basic.c: 18: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
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
psect	text198,local,class=CODE,delta=2
global __ptext198
__ptext198:

;; *************** function _delay *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
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
;;		_pulse
;; This function uses a non-reentrant model
;;
psect	text198
	file	"D:\Embedded\pic\code\software\LCD\lcd_basic\lcd_basic.c"
	line	10
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	11
	
l2248:	
;lcd_basic.c: 11: while(a--);
	goto	l2250
	
l1026:	
	goto	l2250
	
l1025:	
	
l2250:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u2185
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u2185:

	skipz
	goto	u2181
	goto	u2180
u2181:
	goto	l2250
u2180:
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
psect	text199,local,class=CODE,delta=2
global __ptext199
__ptext199:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
