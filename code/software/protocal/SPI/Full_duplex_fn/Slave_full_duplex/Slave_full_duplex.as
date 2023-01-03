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
	FNCALL	_main,_slave
	FNCALL	_main,_master
	FNROOT	_main
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
	line	5

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
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	retlw	0
	global	_count
	global	_display
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RA0
_RA0	set	40
	global	_RE0
_RE0	set	72
	global	_SSPIF
_SSPIF	set	99
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
	global	_BF
_BF	set	1184
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"Slave_full_duplex.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_count:
       ds      2

_display:
       ds      2

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
_seg:
       ds      20

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
	global	?_slave
?_slave:	; 0 bytes @ 0x0
	global	??_slave
??_slave:	; 0 bytes @ 0x0
	global	?_master
?_master:	; 0 bytes @ 0x0
	global	??_master
??_master:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 0, constant 0, data 20, bss 4, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       6
;; BANK0           80      0      20
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:



;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_slave
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
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 0     0      0       0
;;                              _slave
;;                             _master
;; ---------------------------------------------------------------------------------
;; (1) _master                                               0     0      0       0
;; ---------------------------------------------------------------------------------
;; (1) _slave                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _slave
;;   _master
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
;;DATA                 0      0      1B      12        0.0%
;;ABS                  0      0      1A       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       1       2        0.0%
;;BANK0               50      0      14       5       25.0%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      2       6       1       42.9%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 56 in file "D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_slave
;;		_master
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
	line	56
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	57
;Slave_full_duplex.c: 57: while(1)
	
l1046:	
	line	59
	
l2228:	
;Slave_full_duplex.c: 58: {
;Slave_full_duplex.c: 59: slave();
	fcall	_slave
	line	60
	
l2230:	
;Slave_full_duplex.c: 60: master();
	fcall	_master
	goto	l1046
	line	62
	
l1047:	
	line	57
	goto	l1046
	
l1048:	
	line	63
	
l1049:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_master
psect	text67,local,class=CODE,delta=2
global __ptext67
__ptext67:

;; *************** function _master *****************
;; Defined at:
;;		line 30 in file "D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
;; Parameters:    Size  Location     Type
;;		None
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
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text67
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
	line	30
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 7
; Regs used in _master: [wreg+status,2+btemp+1]
	line	31
	
l1436:	
;Slave_full_duplex.c: 31: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	32
;Slave_full_duplex.c: 32: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	33
	
l1438:	
;Slave_full_duplex.c: 33: TRISC-0X10;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(135)^080h,w	;volatile
	line	34
	
l1440:	
;Slave_full_duplex.c: 34: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	35
;Slave_full_duplex.c: 35: TRISE=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(137)^080h	;volatile
	line	36
	
l1442:	
;Slave_full_duplex.c: 36: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	37
	
l1444:	
;Slave_full_duplex.c: 37: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	38
	
l1446:	
;Slave_full_duplex.c: 38: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	39
	
l1448:	
;Slave_full_duplex.c: 39: SSPCON=0X30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	40
	
l1450:	
;Slave_full_duplex.c: 40: SSPSTAT=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	line	41
	
l1452:	
;Slave_full_duplex.c: 41: if(RE0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(72/8),(72)&7
	goto	u21
	goto	u20
u21:
	goto	l1456
u20:
	line	43
	
l1454:	
;Slave_full_duplex.c: 42: {
;Slave_full_duplex.c: 43: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	44
;Slave_full_duplex.c: 44: while(RA0==1);
	goto	l1036
	
l1037:	
	
l1036:	
	btfsc	(40/8),(40)&7
	goto	u31
	goto	u30
u31:
	goto	l1036
u30:
	goto	l1456
	
l1038:	
	goto	l1456
	line	45
	
l1035:	
	line	46
	
l1456:	
;Slave_full_duplex.c: 45: }
;Slave_full_duplex.c: 46: if(count>=10)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u45
	movlw	low(0Ah)
	subwf	(_count),w
u45:

	skipc
	goto	u41
	goto	u40
u41:
	goto	l1460
u40:
	line	48
	
l1458:	
;Slave_full_duplex.c: 47: {
;Slave_full_duplex.c: 48: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l1460
	line	49
	
l1039:	
	line	50
	
l1460:	
;Slave_full_duplex.c: 49: }
;Slave_full_duplex.c: 50: SSPBUF=count;
	movf	(_count),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	51
;Slave_full_duplex.c: 51: while(SSPIF==0);
	goto	l1040
	
l1041:	
	
l1040:	
	btfss	(99/8),(99)&7
	goto	u51
	goto	u50
u51:
	goto	l1040
u50:
	
l1042:	
	line	52
;Slave_full_duplex.c: 52: SSPIF=0;
	bcf	(99/8),(99)&7
	line	53
	
l1043:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,88
	global	_slave
psect	text68,local,class=CODE,delta=2
global __ptext68
__ptext68:

;; *************** function _slave *****************
;; Defined at:
;;		line 9 in file "D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text68
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full_duplex_fn\Slave_full_duplex\Slave_full_duplex.c"
	line	9
	global	__size_of_slave
	__size_of_slave	equ	__end_of_slave-_slave
	
_slave:	
	opt	stack 7
; Regs used in _slave: [wreg-fsr0h+status,2+status,0]
	line	10
	
l1418:	
;Slave_full_duplex.c: 10: TRISA=0X20;
	movlw	(020h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	11
	
l1420:	
;Slave_full_duplex.c: 11: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	12
	
l1422:	
;Slave_full_duplex.c: 12: TRISC=0X18;
	movlw	(018h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	13
;Slave_full_duplex.c: 13: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	14
;Slave_full_duplex.c: 14: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	15
;Slave_full_duplex.c: 15: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	16
;Slave_full_duplex.c: 16: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	17
;Slave_full_duplex.c: 17: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	18
	
l1424:	
;Slave_full_duplex.c: 18: SSPCON=0X34;
	movlw	(034h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	19
	
l1426:	
;Slave_full_duplex.c: 19: SSPSTAT=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	line	20
	
l1428:	
;Slave_full_duplex.c: 20: if(BF==1)
	btfss	(1184/8)^080h,(1184)&7
	goto	u11
	goto	u10
u11:
	goto	l1032
u10:
	line	22
	
l1430:	
;Slave_full_duplex.c: 21: {
;Slave_full_duplex.c: 22: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	23
	
l1432:	
;Slave_full_duplex.c: 23: display=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_slave+0)+0
	clrf	(??_slave+0)+0+1
	movf	0+(??_slave+0)+0,w
	movwf	(_display)
	movf	1+(??_slave+0)+0,w
	movwf	(_display+1)
	line	24
	
l1434:	
;Slave_full_duplex.c: 24: PORTD=seg[display];
	movf	(_display),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	goto	l1032
	line	25
	
l1031:	
	line	26
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_slave
	__end_of_slave:
;; =============== function _slave ends ============

	signat	_slave,88
psect	text69,local,class=CODE,delta=2
global __ptext69
__ptext69:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
