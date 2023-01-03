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
	FNCALL	_main,_delay
	FNROOT	_main
	FNCALL	intlevel1,_rc
	global	intlevel1
	FNROOT	intlevel1
	global	_INTCON
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_INTCON	set	11
	global	_PIR1
_PIR1	set	12
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RB0
_RB0	set	48
	global	_SSPIF
_SSPIF	set	99
	global	_PIE1
_PIE1	set	140
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"Serial_interrupt_SPI_master.as"
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
	global	?_rc
?_rc:	; 0 bytes @ 0x0
	global	??_rc
??_rc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	4
	global	?_delay
?_delay:	; 0 bytes @ 0x4
	global	delay@ms
delay@ms:	; 2 bytes @ 0x4
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x6
	global	??_main
??_main:	; 0 bytes @ 0x6
	global	main@j
main@j:	; 2 bytes @ 0x6
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8       8
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_delay
;;
;; Critical Paths under _rc in COMMON
;;
;;   None.
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _rc in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _rc in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _rc in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _rc in BANK2
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
;; (0) _main                                                 2     2      0      45
;;                                              6 COMMON     2     2      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              4 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _rc                                                   4     4      0       0
;;                                              0 COMMON     4     4      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;
;; _rc (ROOT)
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       8       1       57.1%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       1       2        0.0%
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
psect	maintext

;; *************** function _main *****************
;; Defined at:
;;		line 20 in file "D:\Embedded\pic\code\software\interrupt\Serial_interrupt_SPI\Master\Serial_interrupt_SPI_master.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  j               2    6[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\interrupt\Serial_interrupt_SPI\Master\Serial_interrupt_SPI_master.c"
	line	20
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	22
	
l2186:	
;Serial_interrupt_SPI_master.c: 21: int j;
;Serial_interrupt_SPI_master.c: 22: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	23
;Serial_interrupt_SPI_master.c: 23: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	24
	
l2188:	
;Serial_interrupt_SPI_master.c: 24: TRISC=0X10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	25
	
l2190:	
;Serial_interrupt_SPI_master.c: 25: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	26
	
l2192:	
;Serial_interrupt_SPI_master.c: 26: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	27
	
l2194:	
;Serial_interrupt_SPI_master.c: 27: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	28
	
l2196:	
;Serial_interrupt_SPI_master.c: 28: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	29
	
l2198:	
;Serial_interrupt_SPI_master.c: 29: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	30
;Serial_interrupt_SPI_master.c: 30: SSPCON=0X30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	31
;Serial_interrupt_SPI_master.c: 31: SSPSTAT=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	32
;Serial_interrupt_SPI_master.c: 32: INTCON=0XC0;
	movlw	(0C0h)
	movwf	(11)	;volatile
	line	33
;Serial_interrupt_SPI_master.c: 33: PIE1=0X08;
	movlw	(08h)
	movwf	(140)^080h	;volatile
	line	34
;Serial_interrupt_SPI_master.c: 34: PIR1=0X08;
	movlw	(08h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(12)	;volatile
	goto	l2200
	line	35
;Serial_interrupt_SPI_master.c: 35: while(1)
	
l1038:	
	line	37
	
l2200:	
;Serial_interrupt_SPI_master.c: 36: {
;Serial_interrupt_SPI_master.c: 37: for(j=0;j<5;j++)
	clrf	(main@j)
	clrf	(main@j+1)
	
l2202:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(05h)
	subwf	(main@j),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l1039
u2170:
	goto	l2200
	
l2204:	
	goto	l2200
	line	38
	
l1039:	
	line	39
;Serial_interrupt_SPI_master.c: 38: {
;Serial_interrupt_SPI_master.c: 39: RB0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(48/8),(48)&7
	line	40
	
l2206:	
;Serial_interrupt_SPI_master.c: 40: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	41
	
l2208:	
;Serial_interrupt_SPI_master.c: 41: RB0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(48/8),(48)&7
	line	42
;Serial_interrupt_SPI_master.c: 42: delay(3000);
	movlw	low(0BB8h)
	movwf	(?_delay)
	movlw	high(0BB8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	37
	
l2210:	
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	
l2212:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(05h)
	subwf	(main@j),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l1039
u2180:
	goto	l2200
	
l1040:	
	goto	l2200
	line	44
	
l1041:	
	line	35
	goto	l2200
	
l1042:	
	line	45
	
l1043:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\software\interrupt\Serial_interrupt_SPI\Master\Serial_interrupt_SPI_master.c"
;; Parameters:    Size  Location     Type
;;  ms              2    4[COMMON] unsigned int 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61
	file	"D:\Embedded\pic\code\software\interrupt\Serial_interrupt_SPI\Master\Serial_interrupt_SPI_master.c"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 6
; Regs used in _delay: [wreg]
	line	7
	
l1412:	
;Serial_interrupt_SPI_master.c: 7: while(ms--);
	goto	l1414
	
l1026:	
	goto	l1414
	
l1025:	
	
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
	global	_rc
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:

;; *************** function _rc *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\software\interrupt\Serial_interrupt_SPI\Master\Serial_interrupt_SPI_master.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text62
	file	"D:\Embedded\pic\code\software\interrupt\Serial_interrupt_SPI\Master\Serial_interrupt_SPI_master.c"
	line	10
	global	__size_of_rc
	__size_of_rc	equ	__end_of_rc-_rc
	
_rc:	
	opt	stack 6
; Regs used in _rc: [wreg]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_rc+0)
	movf	fsr0,w
	movwf	(??_rc+1)
	movf	pclath,w
	movwf	(??_rc+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_rc+3)
	ljmp	_rc
psect	text62
	line	11
	
i1l1416:	
;Serial_interrupt_SPI_master.c: 11: if(SSPIF==1)
	btfss	(99/8),(99)&7
	goto	u2_21
	goto	u2_20
u2_21:
	goto	i1l1031
u2_20:
	line	13
	
i1l1418:	
;Serial_interrupt_SPI_master.c: 12: {
;Serial_interrupt_SPI_master.c: 13: SSPBUF='A';
	movlw	(041h)
	movwf	(19)	;volatile
	line	14
;Serial_interrupt_SPI_master.c: 14: while(SSPIF==0);
	goto	i1l1032
	
i1l1033:	
	
i1l1032:	
	btfss	(99/8),(99)&7
	goto	u3_21
	goto	u3_20
u3_21:
	goto	i1l1032
u3_20:
	goto	i1l1031
	
i1l1034:	
	line	16
	
i1l1031:	
	line	17
;Serial_interrupt_SPI_master.c: 16: }
;Serial_interrupt_SPI_master.c: 17: SSPIF=0;
	bcf	(99/8),(99)&7
	line	18
	
i1l1035:	
	movf	(??_rc+3),w
	movwf	btemp+1
	movf	(??_rc+2),w
	movwf	pclath
	movf	(??_rc+1),w
	movwf	fsr0
	swapf	(??_rc+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_rc
	__end_of_rc:
;; =============== function _rc ends ============

	signat	_rc,88
psect	text63,local,class=CODE,delta=2
global __ptext63
__ptext63:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
