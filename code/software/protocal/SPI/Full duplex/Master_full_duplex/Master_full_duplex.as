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
	FNCALL	_main,_master
	FNCALL	_main,_slave
	FNROOT	_main
	global	_seg
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
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
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RA0
_RA0	set	40
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
	global	_BF
_BF	set	1184
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"Master_full_duplex.as"
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
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
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
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	master@num
master@num:	; 2 bytes @ 0x0
	ds	2
	global	??_master
??_master:	; 0 bytes @ 0x2
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
;;   _main->_master
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
;; (0) _main                                                 0     0      0      15
;;                             _master
;;                              _slave
;; ---------------------------------------------------------------------------------
;; (1) _master                                               2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; (1) _slave                                                2     2      0       0
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _master
;;   _slave
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
;;		line 27 in file "D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
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
;;		_master
;;		_slave
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
	line	27
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	28
	
l2194:	
;Master_full_duplex.c: 28: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	29
	
l2196:	
;Master_full_duplex.c: 29: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	30
	
l2198:	
;Master_full_duplex.c: 30: TRISC=0X10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	31
;Master_full_duplex.c: 31: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	32
;Master_full_duplex.c: 32: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	33
;Master_full_duplex.c: 33: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	34
;Master_full_duplex.c: 34: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	35
;Master_full_duplex.c: 35: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	36
	
l2200:	
;Master_full_duplex.c: 36: SSPCON=0X20;
	movlw	(020h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	37
	
l2202:	
;Master_full_duplex.c: 37: SSPSTAT=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(148)^080h	;volatile
	goto	l2204
	line	38
;Master_full_duplex.c: 38: while(1)
	
l1041:	
	line	40
	
l2204:	
;Master_full_duplex.c: 39: {
;Master_full_duplex.c: 40: if(RA0==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l2208
u2160:
	line	42
	
l2206:	
;Master_full_duplex.c: 41: {
;Master_full_duplex.c: 42: count++;
	movlw	low(01h)
	addwf	(_count),f
	skipnc
	incf	(_count+1),f
	movlw	high(01h)
	addwf	(_count+1),f
	line	43
;Master_full_duplex.c: 43: while(RA0==1);
	goto	l1043
	
l1044:	
	
l1043:	
	btfsc	(40/8),(40)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1043
u2170:
	goto	l2208
	
l1045:	
	goto	l2208
	line	44
	
l1042:	
	line	45
	
l2208:	
;Master_full_duplex.c: 44: }
;Master_full_duplex.c: 45: if(count>=10)
	movf	(_count+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Ah))^80h
	subwf	btemp+1,w
	skipz
	goto	u2185
	movlw	low(0Ah)
	subwf	(_count),w
u2185:

	skipc
	goto	u2181
	goto	u2180
u2181:
	goto	l2212
u2180:
	line	47
	
l2210:	
;Master_full_duplex.c: 46: {
;Master_full_duplex.c: 47: count=0;
	clrf	(_count)
	clrf	(_count+1)
	goto	l2212
	line	48
	
l1046:	
	line	49
	
l2212:	
;Master_full_duplex.c: 48: }
;Master_full_duplex.c: 49: master(count);
	movf	(_count+1),w
	clrf	(?_master+1)
	addwf	(?_master+1)
	movf	(_count),w
	clrf	(?_master)
	addwf	(?_master)

	fcall	_master
	line	50
	
l2214:	
;Master_full_duplex.c: 50: slave();
	fcall	_slave
	goto	l2204
	line	51
	
l1047:	
	line	38
	goto	l2204
	
l1048:	
	line	52
	
l1049:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_master
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _master *****************
;; Defined at:
;;		line 20 in file "D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
;; Parameters:    Size  Location     Type
;;  num             2    0[COMMON] int 
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text73
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
	line	20
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 7
; Regs used in _master: [wreg]
	line	21
	
l1426:	
;Master_full_duplex.c: 21: SSPBUF=num;
	movf	(master@num),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	22
;Master_full_duplex.c: 22: while(SSPIF==0);
	goto	l1035
	
l1036:	
	
l1035:	
	btfss	(99/8),(99)&7
	goto	u21
	goto	u20
u21:
	goto	l1035
u20:
	
l1037:	
	line	23
;Master_full_duplex.c: 23: SSPIF=0;
	bcf	(99/8),(99)&7
	line	24
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,4216
	global	_slave
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _slave *****************
;; Defined at:
;;		line 9 in file "D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
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
psect	text74
	file	"D:\Embedded\pic\code\software\protocal\SPI\Full duplex\Master_full_duplex\Master_full_duplex.c"
	line	9
	global	__size_of_slave
	__size_of_slave	equ	__end_of_slave-_slave
	
_slave:	
	opt	stack 7
; Regs used in _slave: [wreg-fsr0h+status,2+status,0]
	line	10
	
l1418:	
;Master_full_duplex.c: 10: if(BF==1)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(1184/8)^080h,(1184)&7
	goto	u11
	goto	u10
u11:
	goto	l1032
u10:
	line	12
	
l1420:	
;Master_full_duplex.c: 11: {
;Master_full_duplex.c: 12: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	13
	
l1422:	
;Master_full_duplex.c: 13: display=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_slave+0)+0
	clrf	(??_slave+0)+0+1
	movf	0+(??_slave+0)+0,w
	movwf	(_display)
	movf	1+(??_slave+0)+0,w
	movwf	(_display+1)
	line	14
	
l1424:	
;Master_full_duplex.c: 14: PORTD=seg[display];
	movf	(_display),w
	addlw	_seg&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(8)	;volatile
	goto	l1032
	line	15
	
l1031:	
	line	16
	
l1032:	
	return
	opt stack 0
GLOBAL	__end_of_slave
	__end_of_slave:
;; =============== function _slave ends ============

	signat	_slave,88
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
