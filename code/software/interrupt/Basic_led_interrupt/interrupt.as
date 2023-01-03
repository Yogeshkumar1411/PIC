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
	FNCALL	_main,_timer
	FNROOT	_main
	FNCALL	_Ext,i1_timer
	FNCALL	intlevel1,_Ext
	global	intlevel1
	FNROOT	intlevel1
	global	_count
	global	_i
	global	_PORTA
psect	text86,local,class=CODE,delta=2
global __ptext86
__ptext86:
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_T1CON
_T1CON	set	16
	global	_GIE
_GIE	set	95
	global	_INTE
_INTE	set	92
	global	_INTF
_INTF	set	89
	global	_PEIE
_PEIE	set	94
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_TMR1IF
_TMR1IF	set	96
	global	_TRISA
_TRISA	set	133
	global	_TRISB
_TRISB	set	134
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"interrupt.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

_i:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Ext
?_Ext:	; 0 bytes @ 0x0
	global	?i1_timer
?i1_timer:	; 0 bytes @ 0x0
	global	i1timer@a
i1timer@a:	; 2 bytes @ 0x0
	ds	2
	global	??_Ext
??_Ext:	; 0 bytes @ 0x2
	global	??i1_timer
??i1_timer:	; 0 bytes @ 0x2
	ds	4
	global	?_timer
?_timer:	; 0 bytes @ 0x6
	global	timer@a
timer@a:	; 2 bytes @ 0x6
	ds	2
	global	??_timer
??_timer:	; 0 bytes @ 0x8
	global	??_main
??_main:	; 0 bytes @ 0x8
;;Data sizes: Strings 0, constant 0, data 0, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      12
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_timer
;;
;; Critical Paths under _Ext in COMMON
;;
;;   _Ext->i1_timer
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _Ext in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _Ext in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _Ext in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _Ext in BANK2
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
;; (0) _main                                                 0     0      0      15
;;                              _timer
;; ---------------------------------------------------------------------------------
;; (1) _timer                                                2     0      2      15
;;                                              6 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _Ext                                                  4     4      0      60
;;                                              2 COMMON     4     4      0
;;                            i1_timer
;; ---------------------------------------------------------------------------------
;; (3) i1_timer                                              2     0      2      60
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _timer
;;
;; _Ext (ROOT)
;;   i1_timer
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       5       2        0.0%
;;ABS                  0      0       C       3        0.0%
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
;;DATA                 0      0      11      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
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
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_timer
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l2233:	
;interrupt.c: 26: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	27
;interrupt.c: 27: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	28
;interrupt.c: 28: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	29
	
l2235:	
;interrupt.c: 29: TRISB=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	30
	
l2237:	
;interrupt.c: 30: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	31
	
l2239:	
;interrupt.c: 31: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	32
	
l2241:	
;interrupt.c: 32: T1CON=0X31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	33
	
l2243:	
;interrupt.c: 33: GIE=1;
	bsf	(95/8),(95)&7
	line	34
	
l2245:	
;interrupt.c: 34: PEIE=1;
	bsf	(94/8),(94)&7
	line	35
	
l2247:	
;interrupt.c: 35: INTE=1;
	bsf	(92/8),(92)&7
	goto	l2249
	line	36
;interrupt.c: 36: while(1)
	
l1037:	
	line	38
	
l2249:	
;interrupt.c: 37: {
;interrupt.c: 38: RA0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(40/8),(40)&7
	line	39
	
l2251:	
;interrupt.c: 39: timer(2);
	movlw	low(02h)
	movwf	(?_timer)
	movlw	high(02h)
	movwf	((?_timer))+1
	fcall	_timer
	line	40
	
l2253:	
;interrupt.c: 40: RA0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(40/8),(40)&7
	line	41
	
l2255:	
;interrupt.c: 41: timer(2);
	movlw	low(02h)
	movwf	(?_timer)
	movlw	high(02h)
	movwf	((?_timer))+1
	fcall	_timer
	goto	l2249
	line	42
	
l1038:	
	line	36
	goto	l2249
	
l1039:	
	line	43
	
l1040:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer
psect	text87,local,class=CODE,delta=2
global __ptext87
__ptext87:

;; *************** function _timer *****************
;; Defined at:
;;		line 8 in file "D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
;; Parameters:    Size  Location     Type
;;  a               2    6[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text87
	file	"D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
	line	8
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 5
; Regs used in _timer: [wreg+status,2+btemp+1]
	line	9
	
l1415:	
;interrupt.c: 9: while(0<a)
	goto	l1425
	
l1030:	
	line	11
;interrupt.c: 10: {
;interrupt.c: 11: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u11
	goto	u10
u11:
	goto	l1419
u10:
	line	13
	
l1417:	
;interrupt.c: 12: {
;interrupt.c: 13: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	l1419
	line	14
	
l1031:	
	line	15
	
l1419:	
;interrupt.c: 14: }
;interrupt.c: 15: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	16
;interrupt.c: 16: if(count==2)
	movlw	02h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1425
u20:
	line	18
	
l1421:	
;interrupt.c: 17: {
;interrupt.c: 18: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	19
	
l1423:	
;interrupt.c: 19: a--;
	movlw	low(-1)
	addwf	(timer@a),f
	skipnc
	incf	(timer@a+1),f
	movlw	high(-1)
	addwf	(timer@a+1),f
	goto	l1425
	line	20
	
l1032:	
	goto	l1425
	line	21
	
l1029:	
	line	9
	
l1425:	
	movf	(timer@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(01h)
	subwf	(timer@a),w
u35:

	skipnc
	goto	u31
	goto	u30
u31:
	goto	l1030
u30:
	goto	l1034
	
l1033:	
	line	23
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,4216
	global	_Ext
psect	text88,local,class=CODE,delta=2
global __ptext88
__ptext88:

;; *************** function _Ext *****************
;; Defined at:
;;		line 45 in file "D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		i1_timer
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text88
	file	"D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
	line	45
	global	__size_of_Ext
	__size_of_Ext	equ	__end_of_Ext-_Ext
	
_Ext:	
	opt	stack 5
; Regs used in _Ext: [wreg+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_Ext+0)
	movf	fsr0,w
	movwf	(??_Ext+1)
	movf	pclath,w
	movwf	(??_Ext+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_Ext+3)
	ljmp	_Ext
psect	text88
	line	46
	
i1l1427:	
;interrupt.c: 46: if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u4_21
	goto	u4_20
u4_21:
	goto	i1l1046
u4_20:
	line	48
	
i1l1429:	
;interrupt.c: 47: {
;interrupt.c: 48: for(i=0;i<5;i++)
	clrf	(_i)
	clrf	(_i+1)
	
i1l1431:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u5_25
	movlw	low(05h)
	subwf	(_i),w
u5_25:

	skipc
	goto	u5_21
	goto	u5_20
u5_21:
	goto	i1l1044
u5_20:
	goto	i1l1045
	
i1l1433:	
	goto	i1l1045
	line	49
	
i1l1044:	
	line	50
;interrupt.c: 49: {
;interrupt.c: 50: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	51
	
i1l1435:	
;interrupt.c: 51: timer(2);
	movlw	low(02h)
	movwf	(?i1_timer)
	movlw	high(02h)
	movwf	((?i1_timer))+1
	fcall	i1_timer
	line	52
	
i1l1437:	
;interrupt.c: 52: RA1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(41/8),(41)&7
	line	53
;interrupt.c: 53: timer(2);
	movlw	low(02h)
	movwf	(?i1_timer)
	movlw	high(02h)
	movwf	((?i1_timer))+1
	fcall	i1_timer
	line	48
	
i1l1439:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
i1l1441:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(05h))^80h
	subwf	btemp+1,w
	skipz
	goto	u6_25
	movlw	low(05h)
	subwf	(_i),w
u6_25:

	skipc
	goto	u6_21
	goto	u6_20
u6_21:
	goto	i1l1044
u6_20:
	
i1l1045:	
	line	55
;interrupt.c: 54: }
;interrupt.c: 55: INTF=0;
	bcf	(89/8),(89)&7
	goto	i1l1046
	line	56
	
i1l1043:	
	line	57
	
i1l1046:	
	movf	(??_Ext+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_Ext+2),w
	movwf	pclath
	movf	(??_Ext+1),w
	movwf	fsr0
	swapf	(??_Ext+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_Ext
	__end_of_Ext:
;; =============== function _Ext ends ============

	signat	_Ext,88
	global	i1_timer
psect	text89,local,class=CODE,delta=2
global __ptext89
__ptext89:

;; *************** function i1_timer *****************
;; Defined at:
;;		line 8 in file "D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
;; Parameters:    Size  Location     Type
;;  timer           2    0[COMMON] int 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, btemp+1
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
;;		_Ext
;; This function uses a non-reentrant model
;;
psect	text89
	file	"D:\Embedded\pic\code\software\interrupt\Basic_led_interrupt\interrupt.c"
	line	8
	global	__size_ofi1_timer
	__size_ofi1_timer	equ	__end_ofi1_timer-i1_timer
	
i1_timer:	
	opt	stack 5
; Regs used in i1_timer: [wreg+status,2+btemp+1]
	line	9
	
i1l2221:	
;interrupt.c: 9: while(0<a)
	goto	i1l2231
	
i1l1030:	
	line	11
;interrupt.c: 10: {
;interrupt.c: 11: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u223_21
	goto	u223_20
u223_21:
	goto	i1l2225
u223_20:
	line	13
	
i1l2223:	
;interrupt.c: 12: {
;interrupt.c: 13: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	goto	i1l2225
	line	14
	
i1l1031:	
	line	15
	
i1l2225:	
;interrupt.c: 14: }
;interrupt.c: 15: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	16
;interrupt.c: 16: if(count==2)
	movlw	02h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u224_21
	goto	u224_20
u224_21:
	goto	i1l2231
u224_20:
	line	18
	
i1l2227:	
;interrupt.c: 17: {
;interrupt.c: 18: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	19
	
i1l2229:	
;interrupt.c: 19: a--;
	movlw	low(-1)
	addwf	(i1timer@a),f
	skipnc
	incf	(i1timer@a+1),f
	movlw	high(-1)
	addwf	(i1timer@a+1),f
	goto	i1l2231
	line	20
	
i1l1032:	
	goto	i1l2231
	line	21
	
i1l1029:	
	line	9
	
i1l2231:	
	movf	(i1timer@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u225_25
	movlw	low(01h)
	subwf	(i1timer@a),w
u225_25:

	skipnc
	goto	u225_21
	goto	u225_20
u225_21:
	goto	i1l1030
u225_20:
	goto	i1l1034
	
i1l1033:	
	line	23
	
i1l1034:	
	return
	opt stack 0
GLOBAL	__end_ofi1_timer
	__end_ofi1_timer:
;; =============== function i1_timer ends ============

	signat	i1_timer,88
psect	text90,local,class=CODE,delta=2
global __ptext90
__ptext90:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
