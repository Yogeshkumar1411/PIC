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
	FNROOT	_main
	global	_PORTA
psect	text60,local,class=CODE,delta=2
global __ptext60
__ptext60:
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
	global	_RC0
_RC0	set	56
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
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	74	;'J'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	111	;'o'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"master.as"
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
	global	?_master
?_master:	; 0 bytes @ 0x0
	global	??_master
??_master:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	ds	1
	global	master@ptr
master@ptr:	; 1 bytes @ 0x1
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x2
;;Data sizes: Strings 22, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      2       2
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; master@ptr	PTR unsigned char  size(1) Largest target is 22
;;		 -> STR_1(CODE[22]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_master
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
;; (0) _main                                                 0     0      0      30
;;                             _master
;; ---------------------------------------------------------------------------------
;; (2) _master                                               2     2      0      30
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _master
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      2       2       1       14.3%
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
;;		line 25 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave_string\Master\master.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_master
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave_string\Master\master.c"
	line	25
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	26
	
l2190:	
;master.c: 26: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	27
;master.c: 27: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	28
;master.c: 28: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	29
;master.c: 29: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	30
;master.c: 30: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	31
;master.c: 31: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	32
;master.c: 32: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	33
;master.c: 33: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	34
;master.c: 34: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	35
	
l2192:	
;master.c: 35: TRISC=0X11;
	movlw	(011h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	36
	
l2194:	
;master.c: 36: SSPCON=0X32;
	movlw	(032h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	37
	
l2196:	
;master.c: 37: SSPSTAT=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	goto	l2198
	line	38
;master.c: 38: while(1)
	
l1034:	
	line	40
	
l2198:	
;master.c: 39: {
;master.c: 40: if(RC0==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l2198
u2160:
	line	42
	
l2200:	
;master.c: 41: {
;master.c: 42: master("Jan Batch soon to end");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_master
	line	43
;master.c: 43: while(RC0==1);
	goto	l1036
	
l1037:	
	
l1036:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(56/8),(56)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1036
u2170:
	goto	l2198
	
l1038:	
	goto	l2198
	line	45
	
l1035:	
	goto	l2198
	line	46
	
l1039:	
	line	38
	goto	l2198
	
l1040:	
	line	47
	
l1041:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_master
psect	text61,local,class=CODE,delta=2
global __ptext61
__ptext61:

;; *************** function _master *****************
;; Defined at:
;;		line 14 in file "D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave_string\Master\master.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    wreg     PTR unsigned char 
;;		 -> STR_1(22), 
;; Auto vars:     Size  Location     Type
;;  ptr             1    1[COMMON] PTR unsigned char 
;;		 -> STR_1(22), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath
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
;; Hardware stack levels used:    2
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text61
	file	"D:\Embedded\pic\code\software\protocal\SPI\Basic-1_mas-1_slave_string\Master\master.c"
	line	14
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 6
; Regs used in _master: [wreg-fsr0h+status,2+status,0+pclath]
;master@ptr stored from wreg
	movwf	(master@ptr)
	line	15
	
l1414:	
;master.c: 15: while(*ptr)
	goto	l1420
	
l1026:	
	line	17
	
l1416:	
;master.c: 16: {
;master.c: 17: SSPBUF=*ptr;
	movf	(master@ptr),w
	movwf	fsr0
	fcall	stringdir
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	18
;master.c: 18: while(SSPIF==0);
	goto	l1027
	
l1028:	
	
l1027:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l1027
u10:
	
l1029:	
	line	19
;master.c: 19: SSPIF=0;
	bcf	(99/8),(99)&7
	line	20
	
l1418:	
;master.c: 20: ptr++;
	movlw	(01h)
	movwf	(??_master+0)+0
	movf	(??_master+0)+0,w
	addwf	(master@ptr),f
	goto	l1420
	line	21
	
l1025:	
	line	15
	
l1420:	
	movf	(master@ptr),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u21
	goto	u20
u21:
	goto	l1416
u20:
	goto	l1422
	
l1030:	
	line	22
	
l1422:	
;master.c: 21: }
;master.c: 22: SSPBUF='\0';
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(19)	;volatile
	line	23
	
l1031:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,4216
psect	text62,local,class=CODE,delta=2
global __ptext62
__ptext62:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
