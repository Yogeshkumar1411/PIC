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
	global	_PORTA
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:
_PORTA	set	5
	global	_TRISA
_TRISA	set	133
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	file	"butterfly.as"
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
	ds	3
	global	main@i
main@i:	; 2 bytes @ 0x5
	ds	2
	global	main@k
main@k:	; 2 bytes @ 0x7
	ds	2
	global	main@j
main@j:	; 2 bytes @ 0x9
	ds	2
	global	main@l
main@l:	; 2 bytes @ 0xB
	ds	2
;;Data sizes: Strings 0, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     13      13
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
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                11    11      0     105
;;                                              2 COMMON    11    11      0
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
;;COMMON               E      D       D       1       92.9%
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
;;		line 7 in file "D:\Embedded\pic\code\software\led\butterfly\butterfly.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  l               2   11[COMMON] int 
;;  j               2    9[COMMON] int 
;;  k               2    7[COMMON] int 
;;  i               2    5[COMMON] int 
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
;;      Locals:         8       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:        11       0       0       0       0
;;Total ram usage:       11 bytes
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\led\butterfly\butterfly.c"
	line	7
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 7
; Regs used in _main: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	9
	
l2179:	
;butterfly.c: 8: int i,j,k,l;
;butterfly.c: 9: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	10
;butterfly.c: 10: TRISA=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	11
;butterfly.c: 11: ANSEL=0X00;
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	clrf	(392)^0180h	;volatile
	line	12
;butterfly.c: 12: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	goto	l2181
	line	13
;butterfly.c: 13: while(1)
	
l1031:	
	line	15
	
l2181:	
;butterfly.c: 14: {
;butterfly.c: 15: for(i=3,j=4;i>=0,j<=7;i--,j++)
	movlw	low(03h)
	movwf	(main@i)
	movlw	high(03h)
	movwf	((main@i))+1
	
l2183:	
	movlw	low(04h)
	movwf	(main@j)
	movlw	high(04h)
	movwf	((main@j))+1
	goto	l2193
	line	16
	
l1033:	
	line	17
	
l2185:	
;butterfly.c: 16: {
;butterfly.c: 17: PORTA|=(1<<i|1<<j);
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@j),w
	goto	u2154
u2155:
	clrc
	rlf	(??_main+0)+0,f
u2154:
	addlw	-1
	skipz
	goto	u2155
	movlw	(01h)
	movwf	(??_main+1)+0
	incf	(main@i),w
	goto	u2164
u2165:
	clrc
	rlf	(??_main+1)+0,f
u2164:
	addlw	-1
	skipz
	goto	u2165
	movf	0+(??_main+1)+0,w
	iorwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	iorwf	(5),f	;volatile
	line	18
	
l2187:	
;butterfly.c: 18: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	15
	
l2189:	
	movlw	low(-1)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(-1)
	addwf	(main@i+1),f
	
l2191:	
	movlw	low(01h)
	addwf	(main@j),f
	skipnc
	incf	(main@j+1),f
	movlw	high(01h)
	addwf	(main@j+1),f
	goto	l2193
	
l1032:	
	
l2193:	
	movf	(main@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(08h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2175
	movlw	low(08h)
	subwf	(main@j),w
u2175:

	skipc
	goto	u2171
	goto	u2170
u2171:
	goto	l2185
u2170:
	goto	l2195
	
l1034:	
	line	20
	
l2195:	
;butterfly.c: 19: }
;butterfly.c: 20: for(k=0,l=7;k<=3,l>=4;k++,l--)
	clrf	(main@k)
	clrf	(main@k+1)
	
l2197:	
	movlw	low(07h)
	movwf	(main@l)
	movlw	high(07h)
	movwf	((main@l))+1
	goto	l2207
	line	21
	
l1036:	
	line	22
	
l2199:	
;butterfly.c: 21: {
;butterfly.c: 22: PORTA^=(1<<l|1<<k);
	movlw	(01h)
	movwf	(??_main+0)+0
	incf	(main@k),w
	goto	u2184
u2185:
	clrc
	rlf	(??_main+0)+0,f
u2184:
	addlw	-1
	skipz
	goto	u2185
	movlw	(01h)
	movwf	(??_main+1)+0
	incf	(main@l),w
	goto	u2194
u2195:
	clrc
	rlf	(??_main+1)+0,f
u2194:
	addlw	-1
	skipz
	goto	u2195
	movf	0+(??_main+1)+0,w
	iorwf	0+(??_main+0)+0,w
	movwf	(??_main+2)+0
	movf	(??_main+2)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(5),f	;volatile
	line	23
	
l2201:	
;butterfly.c: 23: delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	20
	
l2203:	
	movlw	low(01h)
	addwf	(main@k),f
	skipnc
	incf	(main@k+1),f
	movlw	high(01h)
	addwf	(main@k+1),f
	
l2205:	
	movlw	low(-1)
	addwf	(main@l),f
	skipnc
	incf	(main@l+1),f
	movlw	high(-1)
	addwf	(main@l+1),f
	goto	l2207
	
l1035:	
	
l2207:	
	movf	(main@l+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(04h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2205
	movlw	low(04h)
	subwf	(main@l),w
u2205:

	skipnc
	goto	u2201
	goto	u2200
u2201:
	goto	l2199
u2200:
	goto	l2181
	
l1037:	
	goto	l2181
	line	25
	
l1038:	
	line	13
	goto	l2181
	
l1039:	
	line	26
	
l1040:	
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
;;		line 3 in file "D:\Embedded\pic\code\software\led\butterfly\butterfly.c"
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
	file	"D:\Embedded\pic\code\software\led\butterfly\butterfly.c"
	line	3
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 7
; Regs used in _delay: [wreg]
	line	4
	
l1409:	
;butterfly.c: 4: while(a--);
	goto	l1411
	
l1026:	
	goto	l1411
	
l1025:	
	
l1411:	
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
	goto	l1411
u10:
	goto	l1028
	
l1027:	
	line	5
	
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
