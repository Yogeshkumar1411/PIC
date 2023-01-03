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
	FNCALL	_ext,i1_timer
	FNCALL	intlevel1,_ext
	global	intlevel1
	FNROOT	intlevel1
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
	line	6

;initializer for _seg
	retlw	03Fh
	retlw	06h
	retlw	05Bh
	retlw	04Fh
	retlw	066h
	retlw	06Dh
	retlw	07Dh
	retlw	07h
	retlw	07Fh
	retlw	06Fh
	global	_count
	global	_j
	global	_i
psect	nvCOMMON,class=COMMON,space=1
global __pnvCOMMON
__pnvCOMMON:
_i:
       ds      2

	global	_INTCON
_INTCON	set	11
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_T1CON
_T1CON	set	16
	global	_INTF
_INTF	set	89
	global	_TMR1IF
_TMR1IF	set	96
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"Interrupt_using_segement.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

_j:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
_seg:
       ds      10

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
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
	movlw low(__pdataBANK0+10)
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_ext
?_ext:	; 0 bytes @ 0x0
	global	?i1_timer
?i1_timer:	; 0 bytes @ 0x0
	global	i1timer@a
i1timer@a:	; 2 bytes @ 0x0
	ds	2
	global	??_ext
??_ext:	; 0 bytes @ 0x2
	global	??i1_timer
??i1_timer:	; 0 bytes @ 0x2
	ds	4
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	?_timer
?_timer:	; 0 bytes @ 0x0
	global	timer@a
timer@a:	; 2 bytes @ 0x0
	ds	2
	global	??_timer
??_timer:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 10, bss 4, persistent 2 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      6      12
;; BANK0           80      2      12
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   None.
;;
;; Critical Paths under _ext in COMMON
;;
;;   _ext->i1_timer
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_timer
;;
;; Critical Paths under _ext in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _ext in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _ext in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.
;;
;; Critical Paths under _ext in BANK2
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
;; (0) _main                                                 0     0      0      34
;;                              _timer
;; ---------------------------------------------------------------------------------
;; (1) _timer                                                2     0      2      34
;;                                              0 BANK0      2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (2) _ext                                                  4     4      0      75
;;                                              2 COMMON     4     4      0
;;                            i1_timer
;; ---------------------------------------------------------------------------------
;; (3) i1_timer                                              2     0      2      75
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _timer
;;
;; _ext (ROOT)
;;   i1_timer
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
;;DATA                 0      0      1D      12        0.0%
;;ABS                  0      0      18       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50      2       C       5       15.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      6       C       1       85.7%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 25 in file "D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
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
	file	"D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	26
	
l2343:	
;Interrupt_using_segement.c: 26: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	27
;Interrupt_using_segement.c: 27: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	28
;Interrupt_using_segement.c: 28: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	29
;Interrupt_using_segement.c: 29: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	30
;Interrupt_using_segement.c: 30: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	31
	
l2345:	
;Interrupt_using_segement.c: 31: TRISB=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	32
	
l2347:	
;Interrupt_using_segement.c: 32: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	33
	
l2349:	
;Interrupt_using_segement.c: 33: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	34
	
l2351:	
;Interrupt_using_segement.c: 34: T1CON=0X31;
	movlw	(031h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	35
	
l2353:	
;Interrupt_using_segement.c: 35: INTCON=0XD0;
	movlw	(0D0h)
	movwf	(11)	;volatile
	goto	l2355
	line	36
;Interrupt_using_segement.c: 36: while(1)
	
l1041:	
	line	38
	
l2355:	
;Interrupt_using_segement.c: 37: {
;Interrupt_using_segement.c: 38: for(i=0;i<10;i++)
	clrf	(_i)
	clrf	(_i+1)
	
l2357:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2425
	movlw	low(0Ah)
	subwf	(_i),w
u2425:

	skipc
	goto	u2421
	goto	u2420
u2421:
	goto	l2361
u2420:
	goto	l2355
	
l2359:	
	goto	l2355
	line	39
	
l1042:	
	line	40
	
l2361:	
;Interrupt_using_segement.c: 39: {
;Interrupt_using_segement.c: 40: PORTC=seg[i];
	movf	(_i),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(7)	;volatile
	line	41
	
l2363:	
;Interrupt_using_segement.c: 41: timer(1);
	movlw	low(01h)
	movwf	(?_timer)
	movlw	high(01h)
	movwf	((?_timer))+1
	fcall	_timer
	line	38
	
l2365:	
	movlw	low(01h)
	addwf	(_i),f
	skipnc
	incf	(_i+1),f
	movlw	high(01h)
	addwf	(_i+1),f
	
l2367:	
	movf	(_i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2435
	movlw	low(0Ah)
	subwf	(_i),w
u2435:

	skipc
	goto	u2431
	goto	u2430
u2431:
	goto	l2361
u2430:
	goto	l2355
	
l1043:	
	goto	l2355
	line	43
	
l1044:	
	line	36
	goto	l2355
	
l1045:	
	line	44
	
l1046:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_timer
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _timer *****************
;; Defined at:
;;		line 8 in file "D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
;; Parameters:    Size  Location     Type
;;  a               2    0[BANK0 ] int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text179
	file	"D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
	line	8
	global	__size_of_timer
	__size_of_timer	equ	__end_of_timer-_timer
	
_timer:	
	opt	stack 5
; Regs used in _timer: [wreg+status,2+btemp+1]
	line	9
	
l2331:	
;Interrupt_using_segement.c: 9: while(0<a)
	goto	l2341
	
l1034:	
	line	11
;Interrupt_using_segement.c: 10: {
;Interrupt_using_segement.c: 11: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l1035
u2390:
	line	13
	
l2333:	
;Interrupt_using_segement.c: 12: {
;Interrupt_using_segement.c: 13: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	14
	
l2335:	
;Interrupt_using_segement.c: 14: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	15
	
l1035:	
	line	16
;Interrupt_using_segement.c: 15: }
;Interrupt_using_segement.c: 16: if(count==2)
	movlw	02h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u2401
	goto	u2400
u2401:
	goto	l2341
u2400:
	line	18
	
l2337:	
;Interrupt_using_segement.c: 17: {
;Interrupt_using_segement.c: 18: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	19
	
l2339:	
;Interrupt_using_segement.c: 19: a--;
	movlw	low(-1)
	addwf	(timer@a),f
	skipnc
	incf	(timer@a+1),f
	movlw	high(-1)
	addwf	(timer@a+1),f
	goto	l2341
	line	20
	
l1036:	
	goto	l2341
	line	21
	
l1033:	
	line	9
	
l2341:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(timer@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2415
	movlw	low(01h)
	subwf	(timer@a),w
u2415:

	skipnc
	goto	u2411
	goto	u2410
u2411:
	goto	l1034
u2410:
	goto	l1038
	
l1037:	
	line	22
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_timer
	__end_of_timer:
;; =============== function _timer ends ============

	signat	_timer,4216
	global	_ext
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:

;; *************** function _ext *****************
;; Defined at:
;;		line 46 in file "D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
psect	text180
	file	"D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
	line	46
	global	__size_of_ext
	__size_of_ext	equ	__end_of_ext-_ext
	
_ext:	
	opt	stack 5
; Regs used in _ext: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ext+0)
	movf	fsr0,w
	movwf	(??_ext+1)
	movf	pclath,w
	movwf	(??_ext+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ext+3)
	ljmp	_ext
psect	text180
	line	47
	
i1l2277:	
;Interrupt_using_segement.c: 47: if(INTF==1)
	btfss	(89/8),(89)&7
	goto	u231_21
	goto	u231_20
u231_21:
	goto	i1l1052
u231_20:
	line	49
	
i1l2279:	
;Interrupt_using_segement.c: 48: {
;Interrupt_using_segement.c: 49: for(j=0;j<10;j++)
	clrf	(_j)
	clrf	(_j+1)
	
i1l2281:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u232_25
	movlw	low(0Ah)
	subwf	(_j),w
u232_25:

	skipc
	goto	u232_21
	goto	u232_20
u232_21:
	goto	i1l2285
u232_20:
	goto	i1l1051
	
i1l2283:	
	goto	i1l1051
	line	50
	
i1l1050:	
	line	51
	
i1l2285:	
;Interrupt_using_segement.c: 50: {
;Interrupt_using_segement.c: 51: PORTD=seg[j];
	movf	(_j),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(8)	;volatile
	line	52
	
i1l2287:	
;Interrupt_using_segement.c: 52: timer(1);
	movlw	low(01h)
	movwf	(?i1_timer)
	movlw	high(01h)
	movwf	((?i1_timer))+1
	fcall	i1_timer
	line	49
	
i1l2289:	
	movlw	low(01h)
	addwf	(_j),f
	skipnc
	incf	(_j+1),f
	movlw	high(01h)
	addwf	(_j+1),f
	
i1l2291:	
	movf	(_j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u233_25
	movlw	low(0Ah)
	subwf	(_j),w
u233_25:

	skipc
	goto	u233_21
	goto	u233_20
u233_21:
	goto	i1l2285
u233_20:
	
i1l1051:	
	line	54
;Interrupt_using_segement.c: 53: }
;Interrupt_using_segement.c: 54: INTF=0;
	bcf	(89/8),(89)&7
	goto	i1l1052
	line	55
	
i1l1049:	
	line	56
	
i1l1052:	
	movf	(??_ext+3),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(??_ext+2),w
	movwf	pclath
	movf	(??_ext+1),w
	movwf	fsr0
	swapf	(??_ext+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ext
	__end_of_ext:
;; =============== function _ext ends ============

	signat	_ext,88
	global	i1_timer
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function i1_timer *****************
;; Defined at:
;;		line 8 in file "D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
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
;;		_ext
;; This function uses a non-reentrant model
;;
psect	text181
	file	"D:\Embedded\pic\code\software\interrupt\interrupt_using segement\Interrupt_using_segement.c"
	line	8
	global	__size_ofi1_timer
	__size_ofi1_timer	equ	__end_ofi1_timer-i1_timer
	
i1_timer:	
	opt	stack 5
; Regs used in i1_timer: [wreg+status,2+btemp+1]
	line	9
	
i1l2293:	
;Interrupt_using_segement.c: 9: while(0<a)
	goto	i1l2303
	
i1l1034:	
	line	11
;Interrupt_using_segement.c: 10: {
;Interrupt_using_segement.c: 11: if(TMR1IF==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(96/8),(96)&7
	goto	u234_21
	goto	u234_20
u234_21:
	goto	i1l1035
u234_20:
	line	13
	
i1l2295:	
;Interrupt_using_segement.c: 12: {
;Interrupt_using_segement.c: 13: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	14
	
i1l2297:	
;Interrupt_using_segement.c: 14: TMR1IF=0;
	bcf	(96/8),(96)&7
	line	15
	
i1l1035:	
	line	16
;Interrupt_using_segement.c: 15: }
;Interrupt_using_segement.c: 16: if(count==2)
	movlw	02h
	xorwf	(_count),w
	iorwf	(_count+1),w
	skipz
	goto	u235_21
	goto	u235_20
u235_21:
	goto	i1l2303
u235_20:
	line	18
	
i1l2299:	
;Interrupt_using_segement.c: 17: {
;Interrupt_using_segement.c: 18: count=0;
	clrf	(_count)
	clrf	(_count+1)
	line	19
	
i1l2301:	
;Interrupt_using_segement.c: 19: a--;
	movlw	low(-1)
	addwf	(i1timer@a),f
	skipnc
	incf	(i1timer@a+1),f
	movlw	high(-1)
	addwf	(i1timer@a+1),f
	goto	i1l2303
	line	20
	
i1l1036:	
	goto	i1l2303
	line	21
	
i1l1033:	
	line	9
	
i1l2303:	
	movf	(i1timer@a+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(01h))^80h
	subwf	btemp+1,w
	skipz
	goto	u236_25
	movlw	low(01h)
	subwf	(i1timer@a),w
u236_25:

	skipnc
	goto	u236_21
	goto	u236_20
u236_21:
	goto	i1l1034
u236_20:
	goto	i1l1038
	
i1l1037:	
	line	22
	
i1l1038:	
	return
	opt stack 0
GLOBAL	__end_ofi1_timer
	__end_ofi1_timer:
;; =============== function i1_timer ends ============

	signat	i1_timer,88
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
