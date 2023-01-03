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
	FNCALL	_main,_lcd_cmd
	FNCALL	_main,_adc
	FNCALL	_main,_print
	FNCALL	_print,_lcd_cmd
	FNCALL	_lcd_cmd,_delay
	FNROOT	_main
	global	_DV
	global	_high
	global	_low
	global	_out
	global	_ADCON0
psect	text128,local,class=CODE,delta=2
global __ptext128
__ptext128:
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTC
_PORTC	set	7
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
	global	_RC0
_RC0	set	56
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
	global	_ADCON1
_ADCON1	set	159
	global	_ADRESL
_ADRESL	set	158
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
	retlw	83	;'S'
	retlw	116	;'t'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	58	;':'
	retlw	0
psect	strings
	
STR_2:	
	retlw	100	;'d'
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	strings
	
STR_3:	
	retlw	115	;'s'
	retlw	97	;'a'
	retlw	102	;'f'
	retlw	101	;'e'
	retlw	0
psect	strings
	file	"car.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssCOMMON,class=COMMON,space=1
global __pbssCOMMON
__pbssCOMMON:
_high:
       ds      2

_low:
       ds      2

_out:
       ds      2

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_DV:
       ds      2

; Clear objects allocated to COMMON
psect cinit,class=CODE,delta=2
	clrf	((__pbssCOMMON)+0)&07Fh
	clrf	((__pbssCOMMON)+1)&07Fh
	clrf	((__pbssCOMMON)+2)&07Fh
	clrf	((__pbssCOMMON)+3)&07Fh
	clrf	((__pbssCOMMON)+4)&07Fh
	clrf	((__pbssCOMMON)+5)&07Fh
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
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
	global	?_print
?_print:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_adc
?_adc:	; 2 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	ds	2
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	??_adc
??_adc:	; 0 bytes @ 0x2
	global	lcd_cmd@b
lcd_cmd@b:	; 1 bytes @ 0x2
	ds	1
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x3
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x4
	global	lcd_cmd@a
lcd_cmd@a:	; 1 bytes @ 0x4
	ds	1
	global	??_print
??_print:	; 0 bytes @ 0x5
	ds	1
	global	print@p
print@p:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	1
;;Data sizes: Strings 19, constant 0, data 0, bss 8, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14      8      14
;; BANK0           80      0       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; ?_adc	int  size(1) Largest target is 0
;;
;; print@p	PTR unsigned char  size(1) Largest target is 7
;;		 -> STR_3(CODE[5]), STR_2(CODE[7]), STR_1(CODE[7]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_print
;;   _print->_lcd_cmd
;;   _lcd_cmd->_delay
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
;; (0) _main                                                 1     1      0     150
;;                                              7 COMMON     1     1      0
;;                            _lcd_cmd
;;                                _adc
;;                              _print
;; ---------------------------------------------------------------------------------
;; (1) _print                                                2     2      0      90
;;                                              5 COMMON     2     2      0
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _lcd_cmd                                              3     1      2      60
;;                                              2 COMMON     3     1      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                 16    14      2       0
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      15
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 3
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _delay
;;   _adc
;;   _print
;;     _lcd_cmd
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      8       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0      10       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0      13      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 54 in file "D:\Embedded\pic\code\software\car\car.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;;		_adc
;;		_print
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\software\car\car.c"
	line	54
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l2281:	
;car.c: 55: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	56
	
l2283:	
;car.c: 56: TRISA=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	57
	
l2285:	
;car.c: 57: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	58
	
l2287:	
;car.c: 58: TRISC=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(135)^080h	;volatile
	line	59
	
l2289:	
;car.c: 59: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	60
	
l2291:	
;car.c: 60: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	61
	
l2293:	
;car.c: 61: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	62
	
l2295:	
;car.c: 62: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	63
	
l2297:	
;car.c: 63: ANSEL=0X01;
	movlw	(01h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	64
;car.c: 64: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	65
	
l2299:	
;car.c: 65: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	66
	
l2301:	
;car.c: 66: lcd_cmd(0,0,0X38);
	clrf	(?_lcd_cmd)
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	67
	
l2303:	
;car.c: 67: lcd_cmd(0,0,0X0E);
	clrf	(?_lcd_cmd)
	movlw	(0Eh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	goto	l2305
	line	68
;car.c: 68: while(1)
	
l1051:	
	line	70
	
l2305:	
;car.c: 69: {
;car.c: 70: out=adc();
	fcall	_adc
	movf	(1+(?_adc)),w
	clrf	(_out+1)
	addwf	(_out+1)
	movf	(0+(?_adc)),w
	clrf	(_out)
	addwf	(_out)

	line	72
	
l2307:	
;car.c: 72: lcd_cmd(0,0,0XC0);
	clrf	(?_lcd_cmd)
	movlw	(0C0h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	73
	
l2309:	
;car.c: 73: print("State:");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_print
	line	74
	
l2311:	
;car.c: 74: if(out>=600)
	movf	(_out+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0258h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2225
	movlw	low(0258h)
	subwf	(_out),w
u2225:

	skipc
	goto	u2221
	goto	u2220
u2221:
	goto	l2319
u2220:
	line	76
	
l2313:	
;car.c: 75: {
;car.c: 76: lcd_cmd(0,0,0XC6);
	clrf	(?_lcd_cmd)
	movlw	(0C6h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	77
	
l2315:	
;car.c: 77: print("danger");
	movlw	((STR_2-__stringbase))&0ffh
	fcall	_print
	line	78
	
l2317:	
;car.c: 78: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	l2319
	line	79
	
l1052:	
	line	80
	
l2319:	
;car.c: 79: }
;car.c: 80: if(out<600)
	movf	(_out+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0258h))^80h
	subwf	btemp+1,w
	skipz
	goto	u2235
	movlw	low(0258h)
	subwf	(_out),w
u2235:

	skipnc
	goto	u2231
	goto	u2230
u2231:
	goto	l2305
u2230:
	line	82
	
l2321:	
;car.c: 81: {
;car.c: 82: lcd_cmd(0,0,0XC6);
	clrf	(?_lcd_cmd)
	movlw	(0C6h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(0)
	fcall	_lcd_cmd
	line	83
	
l2323:	
;car.c: 83: print("safe");
	movlw	((STR_3-__stringbase))&0ffh
	fcall	_print
	line	84
	
l2325:	
;car.c: 84: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	goto	l2305
	line	85
	
l1053:	
	goto	l2305
	line	86
	
l1054:	
	line	68
	goto	l2305
	
l1055:	
	line	87
	
l1056:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_print
psect	text129,local,class=CODE,delta=2
global __ptext129
__ptext129:

;; *************** function _print *****************
;; Defined at:
;;		line 25 in file "D:\Embedded\pic\code\software\car\car.c"
;; Parameters:    Size  Location     Type
;;  p               1    wreg     PTR unsigned char 
;;		 -> STR_3(5), STR_2(7), STR_1(7), 
;; Auto vars:     Size  Location     Type
;;  p               1    6[COMMON] PTR unsigned char 
;;		 -> STR_3(5), STR_2(7), STR_1(7), 
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text129
	file	"D:\Embedded\pic\code\software\car\car.c"
	line	25
	global	__size_of_print
	__size_of_print	equ	__end_of_print-_print
	
_print:	
	opt	stack 5
; Regs used in _print: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;print@p stored from wreg
	movwf	(print@p)
	line	26
	
l2219:	
;car.c: 26: while(*p!='\0')
	goto	l2225
	
l1043:	
	line	28
	
l2221:	
;car.c: 27: {
;car.c: 28: lcd_cmd(1,0,*p);
	clrf	(?_lcd_cmd)
	movf	(print@p),w
	movwf	fsr0
	fcall	stringdir
	movwf	(??_print+0)+0
	movf	(??_print+0)+0,w
	movwf	0+(?_lcd_cmd)+01h
	movlw	(01h)
	fcall	_lcd_cmd
	line	29
	
l2223:	
;car.c: 29: p++;
	movlw	(01h)
	movwf	(??_print+0)+0
	movf	(??_print+0)+0,w
	addwf	(print@p),f
	goto	l2225
	line	30
	
l1042:	
	line	26
	
l2225:	
	movf	(print@p),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2191
	goto	u2190
u2191:
	goto	l2221
u2190:
	goto	l1045
	
l1044:	
	line	31
	
l1045:	
	return
	opt stack 0
GLOBAL	__end_of_print
	__end_of_print:
;; =============== function _print ends ============

	signat	_print,4216
	global	_lcd_cmd
psect	text130,local,class=CODE,delta=2
global __ptext130
__ptext130:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 15 in file "D:\Embedded\pic\code\software\car\car.c"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    2[COMMON] unsigned char 
;;  c               1    3[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_print
;;		_main
;; This function uses a non-reentrant model
;;
psect	text130
	file	"D:\Embedded\pic\code\software\car\car.c"
	line	15
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 5
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
;lcd_cmd@a stored from wreg
	movwf	(lcd_cmd@a)
	line	16
	
l2207:	
;car.c: 16: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u2151
	goto	u2150
	
u2151:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u2164
u2150:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u2164:
	line	17
;car.c: 17: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u2171
	goto	u2170
	
u2171:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u2184
u2170:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u2184:
	line	18
	
l2209:	
;car.c: 18: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	19
	
l2211:	
;car.c: 19: RE2=1;
	bsf	(74/8),(74)&7
	line	20
	
l2213:	
;car.c: 20: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	21
	
l2215:	
;car.c: 21: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	22
	
l2217:	
;car.c: 22: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	23
	
l1039:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	_adc
psect	text131,local,class=CODE,delta=2
global __ptext131
__ptext131:

;; *************** function _adc *****************
;; Defined at:
;;		line 33 in file "D:\Embedded\pic\code\software\car\car.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  f               2    0        int 
;;  e               2    0        int 
;;  d               2    0        int 
;;  c               2    0        int 
;;  b               2    0        int 
;;  a               2    0        int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text131
	file	"D:\Embedded\pic\code\software\car\car.c"
	line	33
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 7
; Regs used in _adc: [wreg+status,2+status,0+btemp+1]
	line	35
	
l2273:	
;car.c: 34: int a,b,c,d,e,f;
;car.c: 35: ADCON0=0X83;
	movlw	(083h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	36
;car.c: 36: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_low)
	movf	1+(??_adc+0)+0,w
	movwf	(_low+1)
	line	37
;car.c: 37: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(_high)
	movf	1+(??_adc+0)+0,w
	movwf	(_high+1)
	line	38
	
l2275:	
;car.c: 38: DV=low+(high*256);
	movf	(_high+1),w
	movwf	(??_adc+0)+0+1
	movf	(_high),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	(_low),w
	addwf	0+(??_adc+0)+0,w
	movwf	(_DV)
	movf	(_low+1),w
	skipnc
	incf	(_low+1),w
	addwf	1+(??_adc+0)+0,w
	movwf	1+(_DV)
	line	50
	
l2277:	
;car.c: 50: return DV;
	movf	(_DV+1),w
	clrf	(?_adc+1)
	addwf	(?_adc+1)
	movf	(_DV),w
	clrf	(?_adc)
	addwf	(?_adc)

	goto	l1048
	
l2279:	
	line	51
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,90
	global	_delay
psect	text132,local,class=CODE,delta=2
global __ptext132
__ptext132:

;; *************** function _delay *****************
;; Defined at:
;;		line 11 in file "D:\Embedded\pic\code\software\car\car.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
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
;;		_lcd_cmd
;; This function uses a non-reentrant model
;;
psect	text132
	file	"D:\Embedded\pic\code\software\car\car.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	12
	
l1429:	
;car.c: 12: while(ms--);
	goto	l1431
	
l1034:	
	goto	l1431
	
l1033:	
	
l1431:	
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
	goto	l1431
u10:
	goto	l1036
	
l1035:	
	line	13
	
l1036:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text133,local,class=CODE,delta=2
global __ptext133
__ptext133:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
