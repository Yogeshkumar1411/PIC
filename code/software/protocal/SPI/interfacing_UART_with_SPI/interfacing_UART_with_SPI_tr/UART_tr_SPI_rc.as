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
	FNCALL	_main,_RC
	FNCALL	_RC,_master
	FNROOT	_main
	global	_PORTA
psect	text72,local,class=CODE,delta=2
global __ptext72
__ptext72:
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_RCREG
_RCREG	set	26
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_RCIF
_RCIF	set	101
	global	_SSPIF
_SSPIF	set	99
	global	_SPBRG
_SPBRG	set	153
	global	_SSPSTAT
_SSPSTAT	set	148
	global	_TRISA
_TRISA	set	133
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"UART_tr_SPI_rc.as"
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
	global	?_RC
?_RC:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	master@mas
master@mas:	; 1 bytes @ 0x0
	ds	1
	global	??_RC
??_RC:	; 0 bytes @ 0x1
	ds	1
	global	RC@data
RC@data:	; 1 bytes @ 0x2
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x3
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      3       3
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
;;   _RC->_master
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
;;                                 _RC
;; ---------------------------------------------------------------------------------
;; (1) _RC                                                   2     2      0      30
;;                                              1 COMMON     2     2      0
;;                             _master
;; ---------------------------------------------------------------------------------
;; (2) _master                                               1     1      0      15
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _RC
;;     _master
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      3       3       1       21.4%
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
;;		line 23 in file "D:\Embedded\pic\code\software\protocal\SPI\interfacing_UART_with_SPI\interfacing_UART_with_SPI_tr\UART_tr_SPI_rc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
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
;;		_RC
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\protocal\SPI\interfacing_UART_with_SPI\interfacing_UART_with_SPI_tr\UART_tr_SPI_rc.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	24
	
l2185:	
;UART_tr_SPI_rc.c: 24: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	25
;UART_tr_SPI_rc.c: 25: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	26
;UART_tr_SPI_rc.c: 26: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	27
	
l2187:	
;UART_tr_SPI_rc.c: 27: TRISC=0X90;
	movlw	(090h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	28
	
l2189:	
;UART_tr_SPI_rc.c: 28: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	29
	
l2191:	
;UART_tr_SPI_rc.c: 29: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	30
	
l2193:	
;UART_tr_SPI_rc.c: 30: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	31
	
l2195:	
;UART_tr_SPI_rc.c: 31: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	32
	
l2197:	
;UART_tr_SPI_rc.c: 32: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	33
	
l2199:	
;UART_tr_SPI_rc.c: 33: SSPCON=0X30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	34
	
l2201:	
;UART_tr_SPI_rc.c: 34: SSPSTAT=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(148)^080h	;volatile
	goto	l2203
	line	35
;UART_tr_SPI_rc.c: 35: while(1)
	
l1037:	
	line	37
	
l2203:	
;UART_tr_SPI_rc.c: 36: {
;UART_tr_SPI_rc.c: 37: RC();
	fcall	_RC
	goto	l2203
	line	39
	
l1038:	
	line	35
	goto	l2203
	
l1039:	
	line	40
	
l1040:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_RC
psect	text73,local,class=CODE,delta=2
global __ptext73
__ptext73:

;; *************** function _RC *****************
;; Defined at:
;;		line 12 in file "D:\Embedded\pic\code\software\protocal\SPI\interfacing_UART_with_SPI\interfacing_UART_with_SPI_tr\UART_tr_SPI_rc.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  data            1    2[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_master
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text73
	file	"D:\Embedded\pic\code\software\protocal\SPI\interfacing_UART_with_SPI\interfacing_UART_with_SPI_tr\UART_tr_SPI_rc.c"
	line	12
	global	__size_of_RC
	__size_of_RC	equ	__end_of_RC-_RC
	
_RC:	
	opt	stack 6
; Regs used in _RC: [wreg+status,2+status,0+pclath+cstack]
	line	14
	
l2177:	
;UART_tr_SPI_rc.c: 13: char data;
;UART_tr_SPI_rc.c: 14: while(RCIF==0);
	goto	l1031
	
l1032:	
	
l1031:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(101/8),(101)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l1031
u2150:
	goto	l2179
	
l1033:	
	line	15
	
l2179:	
;UART_tr_SPI_rc.c: 15: data=RCREG;
	movf	(26),w	;volatile
	movwf	(??_RC+0)+0
	movf	(??_RC+0)+0,w
	movwf	(RC@data)
	line	16
	
l2181:	
;UART_tr_SPI_rc.c: 16: RCIF=0;
	bcf	(101/8),(101)&7
	line	17
	
l2183:	
;UART_tr_SPI_rc.c: 17: master(data);
	movf	(RC@data),w
	fcall	_master
	line	19
	
l1034:	
	return
	opt stack 0
GLOBAL	__end_of_RC
	__end_of_RC:
;; =============== function _RC ends ============

	signat	_RC,88
	global	_master
psect	text74,local,class=CODE,delta=2
global __ptext74
__ptext74:

;; *************** function _master *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\software\protocal\SPI\interfacing_UART_with_SPI\interfacing_UART_with_SPI_tr\UART_tr_SPI_rc.c"
;; Parameters:    Size  Location     Type
;;  mas             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  mas             1    0[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_RC
;; This function uses a non-reentrant model
;;
psect	text74
	file	"D:\Embedded\pic\code\software\protocal\SPI\interfacing_UART_with_SPI\interfacing_UART_with_SPI_tr\UART_tr_SPI_rc.c"
	line	6
	global	__size_of_master
	__size_of_master	equ	__end_of_master-_master
	
_master:	
	opt	stack 6
; Regs used in _master: [wreg]
;master@mas stored from wreg
	movwf	(master@mas)
	line	7
	
l1409:	
;UART_tr_SPI_rc.c: 7: SSPBUF=mas;
	movf	(master@mas),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	8
;UART_tr_SPI_rc.c: 8: while(SSPIF==0);
	goto	l1025
	
l1026:	
	
l1025:	
	btfss	(99/8),(99)&7
	goto	u11
	goto	u10
u11:
	goto	l1025
u10:
	
l1027:	
	line	9
;UART_tr_SPI_rc.c: 9: SSPIF=0;
	bcf	(99/8),(99)&7
	line	10
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_master
	__end_of_master:
;; =============== function _master ends ============

	signat	_master,4216
psect	text75,local,class=CODE,delta=2
global __ptext75
__ptext75:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
