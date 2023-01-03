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
	FNCALL	_main,_adc
	FNCALL	_adc,_delay
	FNROOT	_main
	global	_DV
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_DV:
       ds      2

	global	_high
_high:
       ds      2

	global	_low
_low:
       ds      2

	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_CCP1CON
_CCP1CON	set	23
	global	_CCPR1L
_CCPR1L	set	21
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T2CON
_T2CON	set	18
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"PWM.as"
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
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_adc
?_adc:	; 0 bytes @ 0x2
	global	adc@b
adc@b:	; 1 bytes @ 0x2
	ds	1
	global	??_adc
??_adc:	; 0 bytes @ 0x3
	ds	2
	global	adc@a
adc@a:	; 1 bytes @ 0x5
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x6
	ds	1
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 6 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7      13
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_adc
;;   _adc->_delay
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
;; (0) _main                                                 1     1      0      45
;;                                              6 COMMON     1     1      0
;;                                _adc
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                  4     3      1      45
;;                                              2 COMMON     4     3      1
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _adc
;;     _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       D       1       92.9%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0       D       3        0.0%
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
;;DATA                 0      0       F      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 23 in file "D:\Embedded\pic\code\software\pwm3\PWM.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_adc
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\pwm3\PWM.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l2192:	
;PWM.c: 24: TRISA=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	25
	
l2194:	
;PWM.c: 25: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	26
	
l2196:	
;PWM.c: 26: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	27
	
l2198:	
;PWM.c: 27: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	28
	
l2200:	
;PWM.c: 28: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	29
	
l2202:	
;PWM.c: 29: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	30
	
l2204:	
;PWM.c: 30: ANSEL=0X03;
	movlw	(03h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	31
;PWM.c: 31: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	32
	
l2206:	
;PWM.c: 32: T2CON=0X07;
	movlw	(07h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(18)	;volatile
	goto	l2208
	line	33
;PWM.c: 33: while(1)
	
l1040:	
	line	35
	
l2208:	
;PWM.c: 34: {
;PWM.c: 35: adc(0X83,0XCE);
	movlw	(0CEh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_adc)
	movlw	(083h)
	fcall	_adc
	line	36
	
l2210:	
;PWM.c: 36: adc(0X87,0X4E);
	movlw	(04Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(?_adc)
	movlw	(087h)
	fcall	_adc
	goto	l2208
	line	37
	
l1041:	
	line	33
	goto	l2208
	
l1042:	
	line	38
	
l1043:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_adc
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _adc *****************
;; Defined at:
;;		line 11 in file "D:\Embedded\pic\code\software\pwm3\PWM.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text67
	file	"D:\Embedded\pic\code\software\pwm3\PWM.c"
	line	11
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 6
; Regs used in _adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;adc@a stored from wreg
	movwf	(adc@a)
	line	12
	
l2182:	
;PWM.c: 12: ADCON0=a;
	movf	(adc@a),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	13
;PWM.c: 13: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	14
;PWM.c: 14: low=ADRESL;
	movf	(158)^080h,w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_low)
	movf	1+(??_adc+0)+0,w
	movwf	(_low+1)
	line	15
;PWM.c: 15: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_high)
	movf	1+(??_adc+0)+0,w
	movwf	(_high+1)
	line	16
	
l2184:	
;PWM.c: 16: DV=low+(high*256);
	movf	(_high+1),w
	movwf	(??_adc+0)+0+1
	movf	(_high),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	(_low),w
	addwf	0+(??_adc+0)+0,w
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	incf	(_low+1),w
	addwf	1+(??_adc+0)+0,w
	movwf	1+(_DV)
	line	17
	
l2186:	
;PWM.c: 17: CCP1CON=b;
	movf	(adc@b),w
	movwf	(23)	;volatile
	line	18
;PWM.c: 18: CCPR1L=DV>>2;
	movf	(_DV+1),w
	movwf	(??_adc+0)+0+1
	movf	(_DV),w
	movwf	(??_adc+0)+0
	movlw	02h
	movwf	btemp+1
u2155:
	rlf	(??_adc+0)+1,w
	rrf	(??_adc+0)+1,f
	rrf	(??_adc+0)+0,f
	decfsz	btemp+1,f
	goto	u2155
	movf	0+(??_adc+0)+0,w
	movwf	(21)	;volatile
	line	19
	
l2188:	
;PWM.c: 19: CCP1CON|=(DV&0X30)<<4;
	movf	(_DV),w
	andlw	030h
	movwf	(??_adc+0)+0
	movlw	(04h)-1
u2165:
	clrc
	rlf	(??_adc+0)+0,f
	addlw	-1
	skipz
	goto	u2165
	clrc
	rlf	(??_adc+0)+0,w
	movwf	(??_adc+1)+0
	movf	(??_adc+1)+0,w
	iorwf	(23),f	;volatile
	line	20
	
l2190:	
;PWM.c: 20: delay(100);
	movlw	low(064h)
	movwf	(?_delay)
	movlw	high(064h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l1037:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,8312
	global	_delay
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _delay *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\pwm3\PWM.c"
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
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text68
	file	"D:\Embedded\pic\code\software\pwm3\PWM.c"
	line	7
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	8
	
l1412:	
;PWM.c: 8: while(ms--);
	goto	l1414
	
l1032:	
	goto	l1414
	
l1031:	
	
l1414:	
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
	goto	l1414
u10:
	goto	l1034
	
l1033:	
	line	9
	
l1034:	
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
