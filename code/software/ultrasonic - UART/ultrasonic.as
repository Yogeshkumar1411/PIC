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
	FNCALL	_main,_TX
	FNCALL	_main,_adc
	FNCALL	_adc,___awdiv
	FNCALL	_adc,___wmul
	FNCALL	_adc,___awmod
	FNCALL	_adc,_TX2
	FNCALL	_adc,_TX1
	FNCALL	_TX,_TX1
	FNROOT	_main
	global	_a
	global	_b
	global	_c
	global	_d
	global	_distance
	global	_e
	global	_f
	global	_high
	global	_low
	global	_time
	global	_ADCON0
psect	text177,local,class=CODE,delta=2
global __ptext177
__ptext177:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_RCSTA
_RCSTA	set	24
	global	_TXREG
_TXREG	set	25
	global	_RA1
_RA1	set	41
	global	_TXIF
_TXIF	set	100
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
	global	_SPBRG
_SPBRG	set	153
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
	retlw	68	;'D'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	strings
	file	"ultrasonic.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_time:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_a:
       ds      2

_b:
       ds      2

_c:
       ds      2

_d:
       ds      2

_distance:
       ds      2

_e:
       ds      2

_f:
       ds      2

_high:
       ds      2

_low:
       ds      2

psect clrtext,class=CODE,delta=2
global clear_ram
;	Called with FSR containing the base address, and
;	W with the last address+1
clear_ram:
	clrwdt			;clear the watchdog before getting into this loop
clrloop:
	clrf	indf		;clear RAM location pointed to by FSR
	incf	fsr,f		;increment pointer
	xorwf	fsr,w		;XOR with final address
	btfsc	status,2	;have we reached the end yet?
	retlw	0		;all done for this memory range, return
	xorwf	fsr,w		;XOR again to restore value
	goto	clrloop		;do the next byte

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+012h)
	fcall	clear_ram
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_TX2
?_TX2:	; 0 bytes @ 0x0
	global	?_TX1
?_TX1:	; 0 bytes @ 0x0
	global	??_TX1
??_TX1:	; 0 bytes @ 0x0
	global	?_TX
?_TX:	; 0 bytes @ 0x0
	global	?_adc
?_adc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	TX1@data
TX1@data:	; 1 bytes @ 0x0
	global	TX2@val
TX2@val:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	1
	global	??_TX
??_TX:	; 0 bytes @ 0x1
	ds	1
	global	??_TX2
??_TX2:	; 0 bytes @ 0x2
	global	TX@ptr
TX@ptr:	; 1 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	2
	global	??___wmul
??___wmul:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	??_adc
??_adc:	; 0 bytes @ 0x9
	ds	2
	global	adc@limit
adc@limit:	; 1 bytes @ 0xB
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xC
;;Data sizes: Strings 11, constant 0, data 0, bss 20, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      14
;; BANK0           80      0      18
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; ?___wmul	unsigned int  size(1) Largest target is 0
;;
;; TX@ptr	PTR unsigned char  size(1) Largest target is 11
;;		 -> STR_1(CODE[11]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_adc
;;   _adc->___awdiv
;;   _TX->_TX1
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
;; (0) _main                                                 0     0      0     800
;;                                 _TX
;;                                _adc
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                  3     3      0     755
;;                                              9 COMMON     3     3      0
;;                            ___awdiv
;;                             ___wmul
;;                            ___awmod
;;                                _TX2
;;                                _TX1
;; ---------------------------------------------------------------------------------
;; (1) _TX                                                   2     2      0      45
;;                                              1 COMMON     2     2      0
;;                                _TX1
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___wmul                                               6     2      4      92
;;                                              0 COMMON     6     2      4
;; ---------------------------------------------------------------------------------
;; (2) _TX1                                                  1     1      0      22
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; (2) _TX2                                                  2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _TX
;;     _TX1
;;   _adc
;;     ___awdiv
;;     ___wmul
;;     ___awmod
;;     _TX2
;;     _TX1
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       2       2        0.0%
;;ABS                  0      0      20       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0      12       5       22.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      22      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 43 in file "D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_TX
;;		_adc
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
	line	43
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	44
	
l2486:	
;ultrasonic.c: 44: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	45
	
l2488:	
;ultrasonic.c: 45: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	46
	
l2490:	
;ultrasonic.c: 46: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	47
	
l2492:	
;ultrasonic.c: 47: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	48
	
l2494:	
;ultrasonic.c: 48: ANSEL=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	49
;ultrasonic.c: 49: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	50
	
l2496:	
;ultrasonic.c: 50: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	51
	
l2498:	
;ultrasonic.c: 51: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	52
	
l2500:	
;ultrasonic.c: 52: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	goto	l2502
	line	53
;ultrasonic.c: 53: while(1)
	
l1063:	
	line	55
	
l2502:	
;ultrasonic.c: 54: {
;ultrasonic.c: 55: TX("Distance: ");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_TX
	line	56
	
l2504:	
;ultrasonic.c: 56: adc();
	fcall	_adc
	goto	l1065
	line	57
;ultrasonic.c: 57: while(1);
	
l1064:	
	
l1065:	
	goto	l1065
	
l1066:	
	goto	l2502
	line	58
	
l1067:	
	line	53
	goto	l2502
	
l1068:	
	line	60
	
l1069:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_adc
psect	text178,local,class=CODE,delta=2
global __ptext178
__ptext178:

;; *************** function _adc *****************
;; Defined at:
;;		line 23 in file "D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  limit           1   11[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___awdiv
;;		___wmul
;;		___awmod
;;		_TX2
;;		_TX1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text178
	file	"D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
	line	23
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 6
; Regs used in _adc: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	24
	
l2460:	
;ultrasonic.c: 24: RA1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(41/8),(41)&7
	line	25
	
l2462:	
;ultrasonic.c: 25: char limit=13;
	movlw	(0Dh)
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(adc@limit)
	line	26
;ultrasonic.c: 26: ADCON0=0X83;
	movlw	(083h)
	movwf	(31)	;volatile
	line	27
;ultrasonic.c: 27: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	28
;ultrasonic.c: 28: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_high)
	movf	1+(??_adc+0)+0,w
	movwf	(_high+1)
	line	29
;ultrasonic.c: 29: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_low)
	movf	1+(??_adc+0)+0,w
	movwf	(_low+1)
	line	30
	
l2464:	
;ultrasonic.c: 30: time=low+(high*256);
	movf	(_high+1),w
	movwf	(??_adc+0)+0+1
	movf	(_high),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	(_low),w
	addwf	0+(??_adc+0)+0,w
	movwf	(_time)
	movf	(_low+1),w
	skipnc
	incf	(_low+1),w
	addwf	1+(??_adc+0)+0,w
	movwf	1+(_time)
	line	31
	
l2466:	
;ultrasonic.c: 31: distance=(time/2)*343;
	movlw	low(02h)
	movwf	(?___awdiv)
	movlw	high(02h)
	movwf	((?___awdiv))+1
	movf	(_time+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_time),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_distance+1)
	addwf	(_distance+1)
	movf	(0+(?___awdiv)),w
	clrf	(_distance)
	addwf	(_distance)

	
l2468:	
	movlw	low(0157h)
	movwf	(?___wmul)
	movlw	high(0157h)
	movwf	((?___wmul))+1
	movf	(_distance+1),w
	clrf	1+(?___wmul)+02h
	addwf	1+(?___wmul)+02h
	movf	(_distance),w
	clrf	0+(?___wmul)+02h
	addwf	0+(?___wmul)+02h

	fcall	___wmul
	movf	(1+(?___wmul)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_distance+1)
	addwf	(_distance+1)
	movf	(0+(?___wmul)),w
	clrf	(_distance)
	addwf	(_distance)

	line	32
	
l2470:	
;ultrasonic.c: 32: a=time/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_time+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_time),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_a+1)
	addwf	(_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_a)
	addwf	(_a)

	line	33
	
l2472:	
;ultrasonic.c: 33: b=time%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_time+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_time),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_b+1)
	addwf	(_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_b)
	addwf	(_b)

	line	34
	
l2474:	
;ultrasonic.c: 34: c=b/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_c+1)
	addwf	(_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_c)
	addwf	(_c)

	line	35
	
l2476:	
;ultrasonic.c: 35: d=b%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_d+1)
	addwf	(_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_d)
	addwf	(_d)

	line	36
	
l2478:	
;ultrasonic.c: 36: TX2(a+0X30);
	movf	(_a),w
	addlw	low(030h)
	movwf	(?_TX2)
	movf	(_a+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_TX2)
	fcall	_TX2
	line	37
	
l2480:	
;ultrasonic.c: 37: TX2(c+0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_c),w
	addlw	low(030h)
	movwf	(?_TX2)
	movf	(_c+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_TX2)
	fcall	_TX2
	line	38
	
l2482:	
;ultrasonic.c: 38: TX2(d+0X30);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_d),w
	addlw	low(030h)
	movwf	(?_TX2)
	movf	(_d+1),w
	skipnc
	addlw	1
	addlw	high(030h)
	movwf	1+(?_TX2)
	fcall	_TX2
	line	39
	
l2484:	
;ultrasonic.c: 39: TX1(limit);
	movf	(adc@limit),w
	fcall	_TX1
	line	41
	
l1060:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,88
	global	_TX
psect	text179,local,class=CODE,delta=2
global __ptext179
__ptext179:

;; *************** function _TX *****************
;; Defined at:
;;		line 19 in file "D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
;; Parameters:    Size  Location     Type
;;  ptr             1    wreg     PTR unsigned char 
;;		 -> STR_1(11), 
;; Auto vars:     Size  Location     Type
;;  ptr             1    2[COMMON] PTR unsigned char 
;;		 -> STR_1(11), 
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
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_TX1
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text179
	file	"D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
	line	19
	global	__size_of_TX
	__size_of_TX	equ	__end_of_TX-_TX
	
_TX:	
	opt	stack 6
; Regs used in _TX: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;TX@ptr stored from wreg
	movwf	(TX@ptr)
	line	20
	
l2456:	
;ultrasonic.c: 20: TX1(*ptr++);
	movf	(TX@ptr),w
	movwf	fsr0
	fcall	stringdir
	fcall	_TX1
	
l2458:	
	movlw	(01h)
	movwf	(??_TX+0)+0
	movf	(??_TX+0)+0,w
	addwf	(TX@ptr),f
	line	21
	
l1057:	
	return
	opt stack 0
GLOBAL	__end_of_TX
	__end_of_TX:
;; =============== function _TX ends ============

	signat	_TX,4216
	global	___awmod
psect	text180,local,class=CODE,delta=2
global __ptext180
__ptext180:

;; *************** function ___awmod *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text180
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l2422:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u2321
	goto	u2320
u2321:
	goto	l2426
u2320:
	line	10
	
l2424:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l2426
	line	12
	
l1286:	
	line	13
	
l2426:	
	btfss	(___awmod@divisor+1),7
	goto	u2331
	goto	u2330
u2331:
	goto	l2430
u2330:
	line	14
	
l2428:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l2430
	
l1287:	
	line	15
	
l2430:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u2341
	goto	u2340
u2341:
	goto	l2448
u2340:
	line	16
	
l2432:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l2438
	
l1290:	
	line	18
	
l2434:	
	movlw	01h
	
u2355:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u2355
	line	19
	
l2436:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l2438
	line	20
	
l1289:	
	line	17
	
l2438:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u2361
	goto	u2360
u2361:
	goto	l2434
u2360:
	goto	l2440
	
l1291:	
	goto	l2440
	line	21
	
l1292:	
	line	22
	
l2440:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u2375
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u2375:
	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2444
u2370:
	line	23
	
l2442:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l2444
	
l1293:	
	line	24
	
l2444:	
	movlw	01h
	
u2385:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u2385
	line	25
	
l2446:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u2391
	goto	u2390
u2391:
	goto	l2440
u2390:
	goto	l2448
	
l1294:	
	goto	l2448
	line	26
	
l1288:	
	line	27
	
l2448:	
	movf	(___awmod@sign),w
	skipz
	goto	u2400
	goto	l2452
u2400:
	line	28
	
l2450:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l2452
	
l1295:	
	line	29
	
l2452:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1296
	
l2454:	
	line	30
	
l1296:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text181,local,class=CODE,delta=2
global __ptext181
__ptext181:

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 5 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text181
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l2382:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u2221
	goto	u2220
u2221:
	goto	l2386
u2220:
	line	11
	
l2384:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l2386
	line	13
	
l1218:	
	line	14
	
l2386:	
	btfss	(___awdiv@dividend+1),7
	goto	u2231
	goto	u2230
u2231:
	goto	l2392
u2230:
	line	15
	
l2388:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l2390:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l2392
	line	17
	
l1219:	
	line	18
	
l2392:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l2394:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u2241
	goto	u2240
u2241:
	goto	l2414
u2240:
	line	20
	
l2396:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l2402
	
l1222:	
	line	22
	
l2398:	
	movlw	01h
	
u2255:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u2255
	line	23
	
l2400:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l2402
	line	24
	
l1221:	
	line	21
	
l2402:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u2261
	goto	u2260
u2261:
	goto	l2398
u2260:
	goto	l2404
	
l1223:	
	goto	l2404
	line	25
	
l1224:	
	line	26
	
l2404:	
	movlw	01h
	
u2275:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u2275
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u2285
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u2285:
	skipc
	goto	u2281
	goto	u2280
u2281:
	goto	l2410
u2280:
	line	28
	
l2406:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l2408:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l2410
	line	30
	
l1225:	
	line	31
	
l2410:	
	movlw	01h
	
u2295:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u2295
	line	32
	
l2412:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u2301
	goto	u2300
u2301:
	goto	l2404
u2300:
	goto	l2414
	
l1226:	
	goto	l2414
	line	33
	
l1220:	
	line	34
	
l2414:	
	movf	(___awdiv@sign),w
	skipz
	goto	u2310
	goto	l2418
u2310:
	line	35
	
l2416:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l2418
	
l1227:	
	line	36
	
l2418:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1228
	
l2420:	
	line	37
	
l1228:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___wmul
psect	text182,local,class=CODE,delta=2
global __ptext182
__ptext182:

;; *************** function ___wmul *****************
;; Defined at:
;;		line 3 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\wmul.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text182
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\wmul.c"
	line	3
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	4
	
l2370:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l2372
	line	6
	
l1078:	
	line	7
	
l2372:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l1079
u2180:
	line	8
	
l2374:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l1079:	
	line	9
	movlw	01h
	
u2195:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u2195
	line	10
	
l2376:	
	movlw	01h
	
u2205:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u2205
	line	11
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u2211
	goto	u2210
u2211:
	goto	l2372
u2210:
	goto	l2378
	
l1080:	
	line	12
	
l2378:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l1081
	
l2380:	
	line	13
	
l1081:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
;; =============== function ___wmul ends ============

	signat	___wmul,8314
	global	_TX1
psect	text183,local,class=CODE,delta=2
global __ptext183
__ptext183:

;; *************** function _TX1 *****************
;; Defined at:
;;		line 13 in file "D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
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
;;		_TX
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text183
	file	"D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
	global	__size_of_TX1
	__size_of_TX1	equ	__end_of_TX1-_TX1
	
_TX1:	
	opt	stack 6
; Regs used in _TX1: [wreg]
;TX1@data stored from wreg
	movwf	(TX1@data)
	line	14
	
l2368:	
;ultrasonic.c: 14: TXREG=data;
	movf	(TX1@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	15
;ultrasonic.c: 15: while(TXIF==0);
	goto	l1051
	
l1052:	
	
l1051:	
	btfss	(100/8),(100)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1051
u2170:
	
l1053:	
	line	16
;ultrasonic.c: 16: TXIF=0;
	bcf	(100/8),(100)&7
	line	17
	
l1054:	
	return
	opt stack 0
GLOBAL	__end_of_TX1
	__end_of_TX1:
;; =============== function _TX1 ends ============

	signat	_TX1,4216
	global	_TX2
psect	text184,local,class=CODE,delta=2
global __ptext184
__ptext184:

;; *************** function _TX2 *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
;; Parameters:    Size  Location     Type
;;  val             2    0[COMMON] int 
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
psect	text184
	file	"D:\Embedded\pic\code\software\ultrasonic\ultrasonic.c"
	line	7
	global	__size_of_TX2
	__size_of_TX2	equ	__end_of_TX2-_TX2
	
_TX2:	
	opt	stack 6
; Regs used in _TX2: [wreg]
	line	8
	
l2366:	
;ultrasonic.c: 8: TXREG=val;
	movf	(TX2@val),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	9
;ultrasonic.c: 9: while(TXIF==0);
	goto	l1045
	
l1046:	
	
l1045:	
	btfss	(100/8),(100)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l1045
u2160:
	
l1047:	
	line	10
;ultrasonic.c: 10: TXIF=0;
	bcf	(100/8),(100)&7
	line	11
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_TX2
	__end_of_TX2:
;; =============== function _TX2 ends ============

	signat	_TX2,4216
psect	text185,local,class=CODE,delta=2
global __ptext185
__ptext185:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
