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
	global	_PORTB
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"ledblinkadd.as"
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
	global	delay@a
delay@a:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_main
??_main:	; 0 bytes @ 0x2
	ds	1
	global	main@i
main@i:	; 2 bytes @ 0x3
	ds	2
	global	main@count
main@count:	; 2 bytes @ 0x5
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      7       7
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
;; (0) _main                                                 5     5      0      45
;;                                              2 COMMON     5     5      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 1
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      7       7       1       50.0%
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
;;		line 11 in file "D:\Embedded\pic\code\software\led\ledblinkadd\ledblinkadd.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  count           2    5[COMMON] int 
;;  i               2    3[COMMON] int 
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
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\led\ledblinkadd\ledblinkadd.c"
	line	11
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+pclath+cstack]
	line	12
	
l2192:	
;ledblinkadd.c: 12: int i,count=0;
	clrf	(main@count)
	clrf	(main@count+1)
	line	13
;ledblinkadd.c: 13: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	14
;ledblinkadd.c: 14: TRISB=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	15
;ledblinkadd.c: 15: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	16
;ledblinkadd.c: 16: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	17
;ledblinkadd.c: 17: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	18
	
l2194:	
;ledblinkadd.c: 18: TRISC=0X07;
	movlw	(07h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	goto	l2196
	line	19
;ledblinkadd.c: 19: while(1)
	
l1031:	
	line	21
	
l2196:	
;ledblinkadd.c: 20: {
;ledblinkadd.c: 21: if(RC0==1)
	bcf	status, 5	;RP0=0, select bank0
	btfss	(56/8),(56)&7
	goto	u2151
	goto	u2150
u2151:
	goto	l1032
u2150:
	line	23
	
l2198:	
;ledblinkadd.c: 22: {
;ledblinkadd.c: 23: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	24
;ledblinkadd.c: 24: while(RC0==1);
	goto	l1033
	
l1034:	
	
l1033:	
	btfsc	(56/8),(56)&7
	goto	u2161
	goto	u2160
u2161:
	goto	l1033
u2160:
	goto	l1032
	
l1035:	
	line	25
	
l1032:	
	line	26
;ledblinkadd.c: 25: }
;ledblinkadd.c: 26: if(RC1==1)
	btfss	(57/8),(57)&7
	goto	u2171
	goto	u2170
u2171:
	goto	l1036
u2170:
	line	28
	
l2200:	
;ledblinkadd.c: 27: {
;ledblinkadd.c: 28: count++;
	movlw	low(01h)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(01h)
	addwf	(main@count+1),f
	line	29
;ledblinkadd.c: 29: while(RC1==1);
	goto	l1037
	
l1038:	
	
l1037:	
	btfsc	(57/8),(57)&7
	goto	u2181
	goto	u2180
u2181:
	goto	l1037
u2180:
	goto	l1036
	
l1039:	
	line	30
	
l1036:	
	line	31
;ledblinkadd.c: 30: }
;ledblinkadd.c: 31: if(RC2==1)
	btfss	(58/8),(58)&7
	goto	u2191
	goto	u2190
u2191:
	goto	l1040
u2190:
	line	33
	
l2202:	
;ledblinkadd.c: 32: {
;ledblinkadd.c: 33: for(i=0;i<count;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	goto	l2214
	line	34
	
l1042:	
	line	35
	
l2204:	
;ledblinkadd.c: 34: {
;ledblinkadd.c: 35: PORTB=0X01;
	movlw	(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	36
	
l2206:	
;ledblinkadd.c: 36: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	37
	
l2208:	
;ledblinkadd.c: 37: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	38
	
l2210:	
;ledblinkadd.c: 38: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	33
	
l2212:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	goto	l2214
	
l1041:	
	
l2214:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	(??_main+0)+0
	movf	(main@count+1),w
	xorlw	80h
	subwf	(??_main+0)+0,w
	skipz
	goto	u2205
	movf	(main@count),w
	subwf	(main@i),w
u2205:

	skipc
	goto	u2201
	goto	u2200
u2201:
	goto	l2204
u2200:
	goto	l1044
	
l1043:	
	line	40
;ledblinkadd.c: 40: }while(RC2==1);
	goto	l1044
	
l1045:	
	
l1044:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(58/8),(58)&7
	goto	u2211
	goto	u2210
u2211:
	goto	l1044
u2210:
	goto	l1040
	
l1046:	
	line	41
	
l1040:	
	line	42
;ledblinkadd.c: 41: }
;ledblinkadd.c: 42: if(RC3==1)
	btfss	(59/8),(59)&7
	goto	u2221
	goto	u2220
u2221:
	goto	l2196
u2220:
	line	44
	
l2216:	
;ledblinkadd.c: 43: {
;ledblinkadd.c: 44: count--;
	movlw	low(-1)
	addwf	(main@count),f
	skipnc
	incf	(main@count+1),f
	movlw	high(-1)
	addwf	(main@count+1),f
	line	45
;ledblinkadd.c: 45: while(RC3==1);
	goto	l1048
	
l1049:	
	
l1048:	
	btfsc	(59/8),(59)&7
	goto	u2231
	goto	u2230
u2231:
	goto	l1048
u2230:
	goto	l2196
	
l1050:	
	goto	l2196
	line	46
	
l1047:	
	goto	l2196
	line	47
	
l1051:	
	line	19
	goto	l2196
	
l1052:	
	line	48
	
l1053:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_delay
psect	text55,local,class=CODE,delta=2
global __ptext55
__ptext55:

;; *************** function _delay *****************
;; Defined at:
;;		line 7 in file "D:\Embedded\pic\code\software\led\ledblinkadd\ledblinkadd.c"
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text55
	file	"D:\Embedded\pic\code\software\led\ledblinkadd\ledblinkadd.c"
	line	7
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	8
	
l1422:	
;ledblinkadd.c: 8: while(a--);
	goto	l1424
	
l1026:	
	goto	l1424
	
l1025:	
	
l1424:	
	movlw	low(01h)
	subwf	(delay@a),f
	movlw	high(01h)
	skipc
	decf	(delay@a+1),f
	subwf	(delay@a+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@a+1)),w
	skipz
	goto	u15
	movlw	low(0FFFFh)
	xorwf	((delay@a)),w
u15:

	skipz
	goto	u11
	goto	u10
u11:
	goto	l1424
u10:
	goto	l1028
	
l1027:	
	line	9
	
l1028:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text56,local,class=CODE,delta=2
global __ptext56
__ptext56:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
