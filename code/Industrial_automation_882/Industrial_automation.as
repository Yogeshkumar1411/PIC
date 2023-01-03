opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F882
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
	FNCALL	_main,_eeprom_read
	FNCALL	_main,_adc
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_string
	FNCALL	_main,_delay
	FNCALL	_main,_I2C_Start
	FNCALL	_main,_I2C_Slave
	FNCALL	_main,_I2C_Restart
	FNCALL	_main,_I2C_Read
	FNCALL	_main,_I2C_Stop
	FNCALL	_main,_conversion
	FNCALL	_main,_Gate_Siren
	FNCALL	_main,_Generator_run
	FNCALL	_main,_gsm
	FNCALL	_adc,_lcd_cmd
	FNCALL	_adc,_string
	FNCALL	_adc,___awtoft
	FNCALL	_adc,___ftmul
	FNCALL	_adc,___fttol
	FNCALL	_adc,___awdiv
	FNCALL	_adc,___awmod
	FNCALL	_adc,_gsm
	FNCALL	_adc,_delay
	FNCALL	_Generator_run,_lcd_cmd
	FNCALL	_Generator_run,_string
	FNCALL	_Generator_run,___awdiv
	FNCALL	_Generator_run,___awmod
	FNCALL	_Generator_run,_delay
	FNCALL	_Generator_run,_eeprom_write
	FNCALL	_conversion,_lcd_cmd
	FNCALL	_conversion,_string
	FNCALL	_gsm,_trans
	FNCALL	_gsm,_new
	FNCALL	_gsm,_delay
	FNCALL	_gsm,_tran
	FNCALL	_string,_lcd_cmd
	FNCALL	_new,_tran
	FNCALL	_lcd_cmd,_pulse
	FNCALL	___awtoft,___ftpack
	FNCALL	___ftmul,___ftpack
	FNCALL	_tran,_delay
	FNCALL	_trans,_delay
	FNCALL	_Gate_Siren,_delay
	FNCALL	_I2C_Restart,_hold
	FNCALL	_I2C_Slave,_hold
	FNCALL	_I2C_Stop,_hold
	FNCALL	_I2C_Start,_hold
	FNCALL	_pulse,_delay
	FNROOT	_main
	global	_stop
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	23

;initializer for _stop
	retlw	06Dh
	global	_flag1
	global	_flag_supply
	global	_retain
	global	_variable
	global	_i
	global	_Generator
	global	_flag2
	global	_store
	global	_read
	global	_ADCON0
_ADCON0	set	31
	global	_ADRESH
_ADRESH	set	30
	global	_PORTA
_PORTA	set	5
	global	_PORTB
_PORTB	set	6
	global	_PORTC
_PORTC	set	7
	global	_RCSTA
_RCSTA	set	24
	global	_SSPBUF
_SSPBUF	set	19
	global	_SSPCON
_SSPCON	set	20
	global	_TXREG
_TXREG	set	25
	global	_CARRY
_CARRY	set	24
	global	_GIE
_GIE	set	95
	global	_RA0
_RA0	set	40
	global	_RA1
_RA1	set	41
	global	_RA2
_RA2	set	42
	global	_RA3
_RA3	set	43
	global	_RA4
_RA4	set	44
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC5
_RC5	set	61
	global	_SSPIF
_SSPIF	set	99
	global	_SSPOV
_SSPOV	set	166
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
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
	global	_TXSTA
_TXSTA	set	152
	global	_ACKDT
_ACKDT	set	1165
	global	_ACKEN
_ACKEN	set	1164
	global	_ACKSTAT
_ACKSTAT	set	1166
	global	_BF
_BF	set	1184
	global	_PEN
_PEN	set	1162
	global	_RCEN
_RCEN	set	1163
	global	_RSEN
_RSEN	set	1161
	global	_SEN
_SEN	set	1160
	global	_SMP
_SMP	set	1191
	global	_EEADR
_EEADR	set	269
	global	_EEDATA
_EEDATA	set	268
	global	_ANSEL
_ANSEL	set	392
	global	_ANSELH
_ANSELH	set	393
	global	_EECON1
_EECON1	set	396
	global	_EECON2
_EECON2	set	397
	global	_RD
_RD	set	3168
	global	_WR
_WR	set	3169
	global	_WREN
_WREN	set	3170
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringtab,__stringbase
stringtab:
;	String table - string pointers are 2 bytes each
	btfsc	(btemp+1),7
	ljmp	stringcode
	bcf	status,7
	btfsc	(btemp+1),0
	bsf	status,7
	movf	indf,w
	incf fsr
skipnz
incf btemp+1
	return
stringcode:
	movf btemp+1,w
andlw 7Fh
movwf	pclath
	movf	fsr,w
incf fsr
skipnz
incf btemp+1
	movwf pc
__stringbase:
psect	stringtext,class=STRCODE,delta=2,reloc=256
global __pstringtext
__pstringtext:
	
STR_8:	
	retlw	84	;'T'
	retlw	104	;'h'
	retlw	105	;'i'
	retlw	115	;'s'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	103	;'g'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	99	;'c'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	117	;'u'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	71	;'G'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	111	;'o'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	46	;'.'
	retlw	32	;' '
	retlw	84	;'T'
	retlw	97	;'a'
	retlw	107	;'k'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	110	;'n'
	retlw	32	;' '
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	0
psect	stringtext
	
STR_10:	
	retlw	71	;'G'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	121	;'y'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	46	;'.'
	retlw	53	;'5'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_9:	
	retlw	71	;'G'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	100	;'d'
	retlw	105	;'i'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	97	;'a'
	retlw	99	;'c'
	retlw	104	;'h'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	119	;'w'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	32	;' '
	retlw	108	;'l'
	retlw	105	;'i'
	retlw	116	;'t'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	0
psect	stringtext
	
STR_7:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	83	;'S'
	retlw	61	;'='
	retlw	34	;'"'
	retlw	43	;'+'
	retlw	57	;'9'
	retlw	49	;'1'
	retlw	57	;'9'
	retlw	53	;'5'
	retlw	54	;'6'
	retlw	54	;'6'
	retlw	53	;'5'
	retlw	49	;'1'
	retlw	49	;'1'
	retlw	52	;'4'
	retlw	56	;'8'
	retlw	54	;'6'
	retlw	34	;'"'
	retlw	0
psect	stringtext
	
STR_4:	
	retlw	32	;' '
	retlw	70	;'F'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	32	;' '
	retlw	69	;'E'
	retlw	66	;'B'
	retlw	32	;' '
	retlw	115	;'s'
	retlw	117	;'u'
	retlw	112	;'p'
	retlw	112	;'p'
	retlw	108	;'l'
	retlw	121	;'y'
	retlw	0
psect	stringtext
	
STR_14:	
	retlw	32	;' '
	retlw	80	;'P'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	118	;'v'
	retlw	105	;'i'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	115	;'s'
	retlw	95	;'_'
	retlw	114	;'r'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_13:	
	retlw	32	;' '
	retlw	71	;'G'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	101	;'e'
	retlw	114	;'r'
	retlw	97	;'a'
	retlw	116	;'t'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_6:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	43	;'+'
	retlw	67	;'C'
	retlw	77	;'M'
	retlw	71	;'G'
	retlw	70	;'F'
	retlw	61	;'='
	retlw	49	;'1'
	retlw	0
psect	stringtext
	
STR_1:	
	retlw	116	;'t'
	retlw	105	;'i'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	32	;' '
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_2:	
	retlw	71	;'G'
	retlw	101	;'e'
	retlw	110	;'n'
	retlw	46	;'.'
	retlw	114	;'r'
	retlw	117	;'u'
	retlw	110	;'n'
	retlw	58	;':'
	retlw	0
psect	stringtext
	
STR_11:	
	retlw	84	;'T'
	retlw	101	;'e'
	retlw	109	;'m'
	retlw	112	;'p'
	retlw	58	;':'
	retlw	32	;' '
	retlw	0
psect	stringtext
	
STR_15:	
	retlw	46	;'.'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	115	;'s'
	retlw	0
psect	stringtext
	
STR_3:	
	retlw	46	;'.'
	retlw	109	;'m'
	retlw	105	;'i'
	retlw	110	;'n'
	retlw	0
psect	stringtext
	
STR_5:	
	retlw	65	;'A'
	retlw	84	;'T'
	retlw	0
psect	stringtext
STR_12	equ	STR_11+0
	file	"Industrial_automation.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_flag1:
       ds      2

_flag_supply:
       ds      2

_retain:
       ds      2

_variable:
       ds      2

_i:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
_stop:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_Generator:
       ds      2

_flag2:
       ds      2

_store:
       ds      2

_read:
       ds      6

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

; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2
	bcf	status, 7	;select IRP bank0
	movlw	low(__pbssBANK0)
	movwf	fsr
	movlw	low((__pbssBANK0)+09h)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+0Ch)
	fcall	clear_ram
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_eeprom_write
?_eeprom_write:	; 0 bytes @ 0x0
	global	??_eeprom_read
??_eeprom_read:	; 0 bytes @ 0x0
	global	?_delay
?_delay:	; 0 bytes @ 0x0
	global	?_pulse
?_pulse:	; 0 bytes @ 0x0
	global	?_hold
?_hold:	; 0 bytes @ 0x0
	global	??_hold
??_hold:	; 0 bytes @ 0x0
	global	?_I2C_Start
?_I2C_Start:	; 0 bytes @ 0x0
	global	??_I2C_Start
??_I2C_Start:	; 0 bytes @ 0x0
	global	?_I2C_Stop
?_I2C_Stop:	; 0 bytes @ 0x0
	global	??_I2C_Stop
??_I2C_Stop:	; 0 bytes @ 0x0
	global	?_I2C_Slave
?_I2C_Slave:	; 0 bytes @ 0x0
	global	??_I2C_Slave
??_I2C_Slave:	; 0 bytes @ 0x0
	global	?_I2C_Restart
?_I2C_Restart:	; 0 bytes @ 0x0
	global	??_I2C_Restart
??_I2C_Restart:	; 0 bytes @ 0x0
	global	?_conversion
?_conversion:	; 0 bytes @ 0x0
	global	?_Gate_Siren
?_Gate_Siren:	; 0 bytes @ 0x0
	global	?_Generator_run
?_Generator_run:	; 0 bytes @ 0x0
	global	?_tran
?_tran:	; 0 bytes @ 0x0
	global	?_new
?_new:	; 0 bytes @ 0x0
	global	?_adc
?_adc:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_eeprom_read
?_eeprom_read:	; 1 bytes @ 0x0
	global	?_I2C_Read
?_I2C_Read:	; 1 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	?___ftpack
?___ftpack:	; 3 bytes @ 0x0
	global	I2C_Slave@data
I2C_Slave@data:	; 1 bytes @ 0x0
	global	eeprom_write@value
eeprom_write@value:	; 1 bytes @ 0x0
	global	delay@ms
delay@ms:	; 2 bytes @ 0x0
	global	I2C_Read@i
I2C_Read@i:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	global	___ftpack@arg
___ftpack@arg:	; 3 bytes @ 0x0
	ds	1
	global	??_eeprom_write
??_eeprom_write:	; 0 bytes @ 0x1
	global	eeprom_read@addr
eeprom_read@addr:	; 1 bytes @ 0x1
	ds	1
	global	??_delay
??_delay:	; 0 bytes @ 0x2
	global	??_pulse
??_pulse:	; 0 bytes @ 0x2
	global	?_lcd_cmd
?_lcd_cmd:	; 0 bytes @ 0x2
	global	??_I2C_Read
??_I2C_Read:	; 0 bytes @ 0x2
	global	??_Gate_Siren
??_Gate_Siren:	; 0 bytes @ 0x2
	global	?_trans
?_trans:	; 0 bytes @ 0x2
	global	??_tran
??_tran:	; 0 bytes @ 0x2
	global	Gate_Siren@read1
Gate_Siren@read1:	; 1 bytes @ 0x2
	global	tran@data2
tran@data2:	; 1 bytes @ 0x2
	global	eeprom_write@addr
eeprom_write@addr:	; 1 bytes @ 0x2
	global	lcd_cmd@a
lcd_cmd@a:	; 2 bytes @ 0x2
	global	trans@data1
trans@data1:	; 2 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	??_new
??_new:	; 0 bytes @ 0x3
	global	I2C_Read@read1
I2C_Read@read1:	; 1 bytes @ 0x3
	global	___ftpack@exp
___ftpack@exp:	; 1 bytes @ 0x3
	ds	1
	global	??_trans
??_trans:	; 0 bytes @ 0x4
	global	?_gsm
?_gsm:	; 0 bytes @ 0x4
	global	??___awdiv
??___awdiv:	; 0 bytes @ 0x4
	global	??___awmod
??___awmod:	; 0 bytes @ 0x4
	global	___ftpack@sign
___ftpack@sign:	; 1 bytes @ 0x4
	global	lcd_cmd@b
lcd_cmd@b:	; 2 bytes @ 0x4
	global	gsm@cmd
gsm@cmd:	; 2 bytes @ 0x4
	ds	1
	global	??___ftpack
??___ftpack:	; 0 bytes @ 0x5
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	ds	1
	global	??_gsm
??_gsm:	; 0 bytes @ 0x6
	global	lcd_cmd@c
lcd_cmd@c:	; 1 bytes @ 0x6
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
	global	??_lcd_cmd
??_lcd_cmd:	; 0 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?_string
?_string:	; 0 bytes @ 0x8
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	string@p
string@p:	; 2 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	2
	global	??_string
??_string:	; 0 bytes @ 0xA
	ds	1
	global	??_conversion
??_conversion:	; 0 bytes @ 0xB
	global	??_Generator_run
??_Generator_run:	; 0 bytes @ 0xB
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	ds	2
	global	conversion@disp
conversion@disp:	; 1 bytes @ 0xD
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	global	Generator_run@Gen_a
Generator_run@Gen_a:	; 2 bytes @ 0x0
	ds	2
	global	Generator_run@Gen_c
Generator_run@Gen_c:	; 2 bytes @ 0x2
	ds	2
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	global	Generator_run@Gen_e
Generator_run@Gen_e:	; 2 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	1
	global	Generator_run@Gen_f
Generator_run@Gen_f:	; 2 bytes @ 0x6
	ds	2
	global	Generator_run@Gen_b
Generator_run@Gen_b:	; 2 bytes @ 0x8
	ds	1
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xA
	global	Generator_run@Gen_d
Generator_run@Gen_d:	; 2 bytes @ 0xA
	global	___ftmul@f1
___ftmul@f1:	; 3 bytes @ 0xA
	ds	3
	global	___ftmul@f2
___ftmul@f2:	; 3 bytes @ 0xD
	ds	3
	global	??___ftmul
??___ftmul:	; 0 bytes @ 0x10
	ds	4
	global	___ftmul@exp
___ftmul@exp:	; 1 bytes @ 0x14
	ds	1
	global	___ftmul@f3_as_product
___ftmul@f3_as_product:	; 3 bytes @ 0x15
	ds	3
	global	___ftmul@cntr
___ftmul@cntr:	; 1 bytes @ 0x18
	ds	1
	global	___ftmul@sign
___ftmul@sign:	; 1 bytes @ 0x19
	ds	1
	global	??_adc
??_adc:	; 0 bytes @ 0x1A
	ds	2
	global	adc@temp
adc@temp:	; 3 bytes @ 0x1C
	ds	3
	global	adc@vari1
adc@vari1:	; 2 bytes @ 0x1F
	ds	2
	global	adc@high
adc@high:	; 2 bytes @ 0x21
	ds	2
	global	adc@low
adc@low:	; 2 bytes @ 0x23
	ds	2
	global	adc@temp_a
adc@temp_a:	; 2 bytes @ 0x25
	ds	2
	global	adc@temp_c
adc@temp_c:	; 2 bytes @ 0x27
	ds	2
	global	adc@temp_e
adc@temp_e:	; 2 bytes @ 0x29
	ds	2
	global	adc@temp_f
adc@temp_f:	; 2 bytes @ 0x2B
	ds	2
	global	adc@u
adc@u:	; 2 bytes @ 0x2D
	ds	2
	global	adc@sensorvalue
adc@sensorvalue:	; 2 bytes @ 0x2F
	ds	2
	global	adc@temp_b
adc@temp_b:	; 2 bytes @ 0x31
	ds	2
	global	adc@temp_d
adc@temp_d:	; 2 bytes @ 0x33
	ds	2
	global	adc@Final_value
adc@Final_value:	; 2 bytes @ 0x35
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x37
	ds	3
	global	main@Pre_a1
main@Pre_a1:	; 2 bytes @ 0x3A
	ds	2
	global	main@Pre_c1
main@Pre_c1:	; 2 bytes @ 0x3C
	ds	2
	global	main@Pre_e1
main@Pre_e1:	; 2 bytes @ 0x3E
	ds	2
	global	main@Pre_f1
main@Pre_f1:	; 2 bytes @ 0x40
	ds	2
	global	main@Pre_b1
main@Pre_b1:	; 2 bytes @ 0x42
	ds	2
	global	main@Pre_d1
main@Pre_d1:	; 2 bytes @ 0x44
	ds	2
;;Data sizes: Strings 272, constant 0, data 1, bss 21, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     70      80
;; BANK1           32      0      12

;;
;; Pointer list with targets:

;; ?___ftpack	float  size(1) Largest target is 0
;;
;; ?___fttol	long  size(1) Largest target is 0
;;
;; ?___ftmul	float  size(1) Largest target is 0
;;
;; ?___awtoft	float  size(1) Largest target is 0
;;
;; ?___awmod	int  size(1) Largest target is 0
;;
;; ?___awdiv	int  size(1) Largest target is 0
;;
;; trans@data1	PTR unsigned char  size(2) Largest target is 61
;;		 -> STR_10(CODE[50]), STR_9(CODE[43]), STR_8(CODE[61]), STR_7(CODE[24]), 
;;		 -> STR_6(CODE[10]), STR_5(CODE[3]), 
;;
;; Gate_Siren@read1	PTR unsigned char  size(1) Largest target is 6
;;		 -> read(BANK1[6]), 
;;
;; conversion@disp	PTR unsigned char  size(1) Largest target is 6
;;		 -> read(BANK1[6]), 
;;
;; string@p	PTR unsigned char  size(2) Largest target is 16
;;		 -> STR_15(CODE[6]), STR_14(CODE[15]), STR_13(CODE[14]), STR_12(CODE[7]), 
;;		 -> STR_11(CODE[7]), STR_4(CODE[16]), STR_3(CODE[5]), STR_2(CODE[9]), 
;;		 -> STR_1(CODE[9]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_conversion
;;   _adc->___awtoft
;;   _Generator_run->_string
;;   _conversion->_string
;;   _gsm->_trans
;;   _string->_lcd_cmd
;;   _new->_tran
;;   ___awtoft->___ftpack
;;   ___ftmul->___awtoft
;;   _tran->_delay
;;   _trans->_delay
;;   _Gate_Siren->_delay
;;   _pulse->_delay
;;   ___fttol->___ftpack
;;
;; Critical Paths under _main in BANK0
;;
;;   _main->_adc
;;   _adc->___ftmul
;;   ___ftmul->___fttol
;;
;; Critical Paths under _main in BANK1
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
;; (0) _main                                                15    15      0    5746
;;                                             55 BANK0     15    15      0
;;                            _lcd_cmd
;;                        _eeprom_read
;;                                _adc
;;                            ___awdiv
;;                            ___awmod
;;                             _string
;;                              _delay
;;                          _I2C_Start
;;                          _I2C_Slave
;;                        _I2C_Restart
;;                           _I2C_Read
;;                           _I2C_Stop
;;                         _conversion
;;                         _Gate_Siren
;;                      _Generator_run
;;                                _gsm
;; ---------------------------------------------------------------------------------
;; (1) _adc                                                 29    29      0    2623
;;                                             26 BANK0     29    29      0
;;                            _lcd_cmd
;;                             _string
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;;                            ___awdiv
;;                            ___awmod
;;                                _gsm
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _Generator_run                                       13    13      0    1109
;;                                             11 COMMON     1     1      0
;;                                              0 BANK0     12    12      0
;;                            _lcd_cmd
;;                             _string
;;                            ___awdiv
;;                            ___awmod
;;                              _delay
;;                       _eeprom_write
;; ---------------------------------------------------------------------------------
;; (1) _conversion                                           3     3      0     397
;;                                             11 COMMON     3     3      0
;;                            _lcd_cmd
;;                             _string
;; ---------------------------------------------------------------------------------
;; (1) _gsm                                                  2     0      2     243
;;                                              4 COMMON     2     0      2
;;                              _trans
;;                                _new
;;                              _delay
;;                               _tran
;; ---------------------------------------------------------------------------------
;; (2) _string                                               3     1      2     155
;;                                              8 COMMON     3     1      2
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _new                                                  0     0      0      44
;;                               _tran
;; ---------------------------------------------------------------------------------
;; (3) _lcd_cmd                                              6     1      5     110
;;                                              2 COMMON     6     1      5
;;                              _pulse
;; ---------------------------------------------------------------------------------
;; (2) ___awtoft                                             6     3      3     300
;;                                              8 COMMON     6     3      3
;;                           ___ftpack
;; ---------------------------------------------------------------------------------
;; (2) ___ftmul                                             16    10      6     535
;;                                             10 BANK0     16    10      6
;;                           ___ftpack
;;                           ___awtoft (ARG)
;;                            ___fttol (ARG)
;; ---------------------------------------------------------------------------------
;; (2) _tran                                                 1     1      0      44
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) _trans                                                2     0      2      67
;;                                              2 COMMON     2     0      2
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _Gate_Siren                                           1     1      0     220
;;                                              2 COMMON     1     1      0
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Restart                                          0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Slave                                            1     1      0      22
;;                                              0 COMMON     1     1      0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Stop                                             0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Start                                            0     0      0       0
;;                               _hold
;; ---------------------------------------------------------------------------------
;; (4) _pulse                                                0     0      0      22
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (2) ___awmod                                              7     3      4     296
;;                                              0 COMMON     7     3      4
;; ---------------------------------------------------------------------------------
;; (2) ___awdiv                                              9     5      4     300
;;                                              0 COMMON     9     5      4
;; ---------------------------------------------------------------------------------
;; (2) ___fttol                                             14    10      4     252
;;                                              8 COMMON     4     0      4
;;                                              0 BANK0     10    10      0
;;                           ___ftpack (ARG)
;; ---------------------------------------------------------------------------------
;; (3) ___ftpack                                             8     3      5     209
;;                                              0 COMMON     8     3      5
;; ---------------------------------------------------------------------------------
;; (1) _eeprom_read                                          2     2      0      22
;;                                              0 COMMON     2     2      0
;; ---------------------------------------------------------------------------------
;; (2) _eeprom_write                                         3     2      1      44
;;                                              0 COMMON     3     2      1
;; ---------------------------------------------------------------------------------
;; (1) _I2C_Read                                             4     2      2      45
;;                                              0 COMMON     4     2      2
;; ---------------------------------------------------------------------------------
;; (2) _hold                                                 0     0      0       0
;; ---------------------------------------------------------------------------------
;; (3) _delay                                                2     0      2      22
;;                                              0 COMMON     2     0      2
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 4
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _lcd_cmd
;;     _pulse
;;       _delay
;;   _eeprom_read
;;   _adc
;;     _lcd_cmd
;;       _pulse
;;         _delay
;;     _string
;;       _lcd_cmd
;;         _pulse
;;           _delay
;;     ___awtoft
;;       ___ftpack
;;     ___ftmul
;;       ___ftpack
;;       ___awtoft (ARG)
;;         ___ftpack
;;       ___fttol (ARG)
;;         ___ftpack (ARG)
;;     ___fttol
;;       ___ftpack (ARG)
;;     ___awdiv
;;     ___awmod
;;     _gsm
;;       _trans
;;         _delay
;;       _new
;;         _tran
;;           _delay
;;       _delay
;;       _tran
;;         _delay
;;     _delay
;;   ___awdiv
;;   ___awmod
;;   _string
;;     _lcd_cmd
;;       _pulse
;;         _delay
;;   _delay
;;   _I2C_Start
;;     _hold
;;   _I2C_Slave
;;     _hold
;;   _I2C_Restart
;;     _hold
;;   _I2C_Read
;;   _I2C_Stop
;;     _hold
;;   _conversion
;;     _lcd_cmd
;;       _pulse
;;         _delay
;;     _string
;;       _lcd_cmd
;;         _pulse
;;           _delay
;;   _Gate_Siren
;;     _delay
;;   _Generator_run
;;     _lcd_cmd
;;       _pulse
;;         _delay
;;     _string
;;       _lcd_cmd
;;         _pulse
;;           _delay
;;     ___awdiv
;;     ___awmod
;;     _delay
;;     _eeprom_write
;;   _gsm
;;     _trans
;;       _delay
;;     _new
;;       _tran
;;         _delay
;;     _delay
;;     _tran
;;       _delay
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;SFR3                 0      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITSFR2              0      0       0       5        0.0%
;;SFR1                 0      0       0       2        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;BANK1               20      0       C       6       37.5%
;;BITBANK1            20      0       0       5        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      6F       8        0.0%
;;ABS                  0      0      6A       7        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     46      50       4      100.0%
;;BITBANK0            50      0       0       3        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA              80      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 266 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Pre_d1          2   68[BANK0 ] int 
;;  Pre_b1          2   66[BANK0 ] int 
;;  Pre_f1          2   64[BANK0 ] int 
;;  Pre_e1          2   62[BANK0 ] int 
;;  Pre_c1          2   60[BANK0 ] int 
;;  Pre_a1          2   58[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0      12       0
;;      Temps:          0       3       0
;;      Totals:         0      15       0
;;Total ram usage:       15 bytes
;; Hardware stack levels required when called:    5
;; This function calls:
;;		_lcd_cmd
;;		_eeprom_read
;;		_adc
;;		___awdiv
;;		___awmod
;;		_string
;;		_delay
;;		_I2C_Start
;;		_I2C_Slave
;;		_I2C_Restart
;;		_I2C_Read
;;		_I2C_Stop
;;		_conversion
;;		_Gate_Siren
;;		_Generator_run
;;		_gsm
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	266
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	268
	
l3907:	
;Industrial_automation.c: 267: int Pre_a1,Pre_b1,Pre_c1,Pre_d1,Pre_e1,Pre_f1;
;Industrial_automation.c: 268: TRISC=0X98;
	movlw	(098h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	269
	
l3909:	
;Industrial_automation.c: 269: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	270
	
l3911:	
;Industrial_automation.c: 270: TRISA=0X3F;
	movlw	(03Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	271
;Industrial_automation.c: 271: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	272
	
l3913:	
;Industrial_automation.c: 272: TRISB=0X0C;
	movlw	(0Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	273
	
l3915:	
;Industrial_automation.c: 273: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	274
;Industrial_automation.c: 274: ANSEL=0X10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	275
	
l3917:	
;Industrial_automation.c: 275: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	276
	
l3919:	
;Industrial_automation.c: 276: SMP=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1191/8)^080h,(1191)&7
	line	277
	
l3921:	
;Industrial_automation.c: 277: SSPCON=0X28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	278
	
l3923:	
;Industrial_automation.c: 278: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	279
	
l3925:	
;Industrial_automation.c: 279: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	280
	
l3927:	
;Industrial_automation.c: 280: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	281
	
l3929:	
;Industrial_automation.c: 281: lcd_cmd(0,0,0X28);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	282
	
l3931:	
;Industrial_automation.c: 282: lcd_cmd(0,0,0X02);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	283
	
l3933:	
;Industrial_automation.c: 283: lcd_cmd(0,0,0X0E);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(0Eh)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	286
	
l3935:	
;Industrial_automation.c: 286: retain=eeprom_read(0);
	movlw	(0)
	fcall	_eeprom_read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(_retain)
	movf	1+(??_main+0)+0,w
	movwf	(_retain+1)
	goto	l3937
	line	287
;Industrial_automation.c: 287: while(1)
	
l1088:	
	line	289
	
l3937:	
;Industrial_automation.c: 288: {
;Industrial_automation.c: 289: adc();
	fcall	_adc
	line	290
	
l3939:	
;Industrial_automation.c: 290: if(RA1==1&&flag_supply==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7
	goto	u4001
	goto	u4000
u4001:
	goto	l3999
u4000:
	
l3941:	
	movlw	01h
	xorwf	(_flag_supply),w
	iorwf	(_flag_supply+1),w
	skipz
	goto	u4011
	goto	u4010
u4011:
	goto	l3999
u4010:
	line	292
	
l3943:	
;Industrial_automation.c: 291: {
;Industrial_automation.c: 292: stop=read[0];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_read)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_stop)
	line	293
	
l3945:	
;Industrial_automation.c: 293: Pre_a1=retain/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(_retain+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_retain),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Pre_a1+1)
	addwf	(main@Pre_a1+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@Pre_a1)
	addwf	(main@Pre_a1)

	line	294
	
l3947:	
;Industrial_automation.c: 294: Pre_b1=retain%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(_retain+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_retain),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Pre_b1+1)
	addwf	(main@Pre_b1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@Pre_b1)
	addwf	(main@Pre_b1)

	line	295
	
l3949:	
;Industrial_automation.c: 295: Pre_c1=Pre_b1/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(main@Pre_b1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@Pre_b1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Pre_c1+1)
	addwf	(main@Pre_c1+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@Pre_c1)
	addwf	(main@Pre_c1)

	line	296
	
l3951:	
;Industrial_automation.c: 296: Pre_d1=Pre_b1%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(main@Pre_b1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@Pre_b1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Pre_d1+1)
	addwf	(main@Pre_d1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@Pre_d1)
	addwf	(main@Pre_d1)

	line	297
	
l3953:	
;Industrial_automation.c: 297: Pre_e1=Pre_d1/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(main@Pre_d1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(main@Pre_d1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Pre_e1+1)
	addwf	(main@Pre_e1+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@Pre_e1)
	addwf	(main@Pre_e1)

	line	298
	
l3955:	
;Industrial_automation.c: 298: Pre_f1=Pre_d1%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(main@Pre_d1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(main@Pre_d1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@Pre_f1+1)
	addwf	(main@Pre_f1+1)
	movf	(0+(?___awmod)),w
	clrf	(main@Pre_f1)
	addwf	(main@Pre_f1)

	line	300
	
l3957:	
;Industrial_automation.c: 300: lcd_cmd(0,0,0X01);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	clrf	0+(?_lcd_cmd)+04h
	bsf	status,0
	rlf	0+(?_lcd_cmd)+04h,f
	fcall	_lcd_cmd
	line	301
	
l3959:	
;Industrial_automation.c: 301: lcd_cmd(0,0,0X80);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(080h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	302
	
l3961:	
;Industrial_automation.c: 302: string(" Generator On");
	movlw	low(STR_13|8000h)
	movwf	(?_string)
	movlw	high(STR_13|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	303
	
l3963:	
;Industrial_automation.c: 303: lcd_cmd(0,0,0X91);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(091h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	304
	
l3965:	
;Industrial_automation.c: 304: string(" Previous_run:");
	movlw	low(STR_14|8000h)
	movwf	(?_string)
	movlw	high(STR_14|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	305
	
l3967:	
;Industrial_automation.c: 305: lcd_cmd(0,0,0XD0);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(0D0h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	306
	
l3969:	
;Industrial_automation.c: 306: lcd_cmd(1,0,Pre_a1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Pre_a1),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	307
	
l3971:	
;Industrial_automation.c: 307: lcd_cmd(1,0,Pre_c1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Pre_c1),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	308
	
l3973:	
;Industrial_automation.c: 308: lcd_cmd(1,0,Pre_e1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Pre_e1),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	309
	
l3975:	
;Industrial_automation.c: 309: lcd_cmd(1,0,Pre_f1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@Pre_f1),w
	addlw	030h
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	310
	
l3977:	
;Industrial_automation.c: 310: string(".mins");
	movlw	low(STR_15|8000h)
	movwf	(?_string)
	movlw	high(STR_15|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	311
	
l3979:	
;Industrial_automation.c: 311: RC5=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	312
	
l3981:	
;Industrial_automation.c: 312: RC2=0;
	bcf	(58/8),(58)&7
	line	313
	
l3983:	
;Industrial_automation.c: 313: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3985:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3987:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3989:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3991:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3993:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	314
	
l3995:	
;Industrial_automation.c: 314: Generator=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Generator)^080h
	movlw	high(01h)
	movwf	((_Generator)^080h)+1
	line	315
	
l3997:	
;Industrial_automation.c: 315: flag_supply=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flag_supply)
	clrf	(_flag_supply+1)
	goto	l3999
	line	316
	
l1089:	
	line	317
	
l3999:	
;Industrial_automation.c: 316: }
;Industrial_automation.c: 317: I2C_Start();
	fcall	_I2C_Start
	line	318
	
l4001:	
;Industrial_automation.c: 318: I2C_Slave(0XD0);
	movlw	(0D0h)
	fcall	_I2C_Slave
	line	319
	
l4003:	
;Industrial_automation.c: 319: I2C_Slave(0X00);
	movlw	(0)
	fcall	_I2C_Slave
	line	320
	
l4005:	
;Industrial_automation.c: 320: I2C_Restart();
	fcall	_I2C_Restart
	line	321
	
l4007:	
;Industrial_automation.c: 321: I2C_Slave(0XD1);
	movlw	(0D1h)
	fcall	_I2C_Slave
	line	322
	
l4009:	
;Industrial_automation.c: 322: for(i=0;i<3;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_i)
	
l4011:	
	movlw	(03h)
	subwf	(_i),w
	skipc
	goto	u4021
	goto	u4020
u4021:
	goto	l1090
u4020:
	goto	l4021
	
l4013:	
	goto	l4021
	line	323
	
l1090:	
	line	324
;Industrial_automation.c: 323: {
;Industrial_automation.c: 324: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	325
	
l4015:	
;Industrial_automation.c: 325: read[i]=I2C_Read(i);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_i),w
	movwf	(??_main+0)+0
	clrf	(??_main+0)+0+1
	movf	0+(??_main+0)+0,w
	movwf	(?_I2C_Read)
	movf	1+(??_main+0)+0,w
	movwf	(?_I2C_Read+1)
	fcall	_I2C_Read
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+2)+0
	movf	(_i),w
	addlw	_read&0ffh
	movwf	fsr0
	movf	(??_main+2)+0,w
	bcf	status, 7	;select IRP bank1
	movwf	indf
	line	322
	
l4017:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l4019:	
	movlw	(03h)
	subwf	(_i),w
	skipc
	goto	u4031
	goto	u4030
u4031:
	goto	l1090
u4030:
	goto	l4021
	
l1091:	
	line	327
	
l4021:	
;Industrial_automation.c: 326: }
;Industrial_automation.c: 327: I2C_Stop();
	fcall	_I2C_Stop
	line	328
	
l4023:	
;Industrial_automation.c: 328: conversion(read);
	movlw	(_read)&0ffh
	fcall	_conversion
	line	329
	
l4025:	
;Industrial_automation.c: 329: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	330
	
l4027:	
;Industrial_automation.c: 330: Gate_Siren(read);
	movlw	(_read)&0ffh
	fcall	_Gate_Siren
	line	331
	
l4029:	
;Industrial_automation.c: 331: Generator_run();
	fcall	_Generator_run
	line	332
	
l4031:	
;Industrial_automation.c: 332: if(RA2==1&&flag1==0&&flag2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(42/8),(42)&7
	goto	u4041
	goto	u4040
u4041:
	goto	l4041
u4040:
	
l4033:	
	movf	((_flag1+1)),w
	iorwf	((_flag1)),w
	skipz
	goto	u4051
	goto	u4050
u4051:
	goto	l4041
u4050:
	
l4035:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_flag2+1)^080h),w
	iorwf	((_flag2)^080h),w
	skipz
	goto	u4061
	goto	u4060
u4061:
	goto	l4041
u4060:
	line	334
	
l4037:	
;Industrial_automation.c: 333: {
;Industrial_automation.c: 334: flag1=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flag1)
	movlw	high(01h)
	movwf	((_flag1))+1
	line	335
	
l4039:	
;Industrial_automation.c: 335: gsm(2);
	movlw	low(02h)
	movwf	(?_gsm)
	movlw	high(02h)
	movwf	((?_gsm))+1
	fcall	_gsm
	goto	l4041
	line	336
	
l1092:	
	line	337
	
l4041:	
;Industrial_automation.c: 336: }
;Industrial_automation.c: 337: if(RA3==1&&flag1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(43/8),(43)&7
	goto	u4071
	goto	u4070
u4071:
	goto	l4049
u4070:
	
l4043:	
	movlw	01h
	xorwf	(_flag1),w
	iorwf	(_flag1+1),w
	skipz
	goto	u4081
	goto	u4080
u4081:
	goto	l4049
u4080:
	line	339
	
l4045:	
;Industrial_automation.c: 338: {
;Industrial_automation.c: 339: gsm(3);
	movlw	low(03h)
	movwf	(?_gsm)
	movlw	high(03h)
	movwf	((?_gsm))+1
	fcall	_gsm
	line	340
	
l4047:	
;Industrial_automation.c: 340: flag1=2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flag1)
	movlw	high(02h)
	movwf	((_flag1))+1
	goto	l4049
	line	341
	
l1093:	
	line	342
	
l4049:	
;Industrial_automation.c: 341: }
;Industrial_automation.c: 342: if(RA4==1)
	btfss	(44/8),(44)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l3937
u4090:
	line	344
	
l4051:	
;Industrial_automation.c: 343: {
;Industrial_automation.c: 344: flag1=0;
	clrf	(_flag1)
	clrf	(_flag1+1)
	line	345
;Industrial_automation.c: 345: flag2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_flag2)^080h
	clrf	(_flag2+1)^080h
	goto	l3937
	line	346
	
l1094:	
	goto	l3937
	line	347
	
l1095:	
	line	287
	goto	l3937
	
l1096:	
	line	348
	
l1097:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_adc
psect	text599,local,class=CODE,delta=2
global __ptext599
__ptext599:

;; *************** function _adc *****************
;; Defined at:
;;		line 205 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Final_value     2   53[BANK0 ] int 
;;  temp            3   28[BANK0 ] float 
;;  temp_d          2   51[BANK0 ] int 
;;  temp_b          2   49[BANK0 ] int 
;;  sensorvalue     2   47[BANK0 ] int 
;;  u               2   45[BANK0 ] int 
;;  temp_f          2   43[BANK0 ] int 
;;  temp_e          2   41[BANK0 ] int 
;;  temp_c          2   39[BANK0 ] int 
;;  temp_a          2   37[BANK0 ] int 
;;  low             2   35[BANK0 ] int 
;;  high            2   33[BANK0 ] int 
;;  vari1           2   31[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0      27       0
;;      Temps:          0       2       0
;;      Totals:         0      29       0
;;Total ram usage:       29 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_cmd
;;		_string
;;		___awtoft
;;		___ftmul
;;		___fttol
;;		___awdiv
;;		___awmod
;;		_gsm
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text599
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	205
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 3
; Regs used in _adc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	212
	
l3801:	
;Industrial_automation.c: 206: auto int vari1;
;Industrial_automation.c: 207: auto float temp;
;Industrial_automation.c: 208: auto int high,low,sensorvalue;
;Industrial_automation.c: 209: auto int temp_a,temp_b,temp_c,temp_d,temp_e,temp_f;
;Industrial_automation.c: 211: int u;
;Industrial_automation.c: 212: if(u==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	((adc@u+1)),w
	iorwf	((adc@u)),w
	skipz
	goto	u3971
	goto	u3970
u3971:
	goto	l3815
u3970:
	line	214
	
l3803:	
;Industrial_automation.c: 213: {
;Industrial_automation.c: 214: lcd_cmd(0,0,0X90);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(090h)
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	215
	
l3805:	
;Industrial_automation.c: 215: string("Temp: ");
	movlw	low(STR_11|8000h)
	movwf	(?_string)
	movlw	high(STR_11|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	216
	
l3807:	
;Industrial_automation.c: 216: lcd_cmd(1,0,'0');
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	217
	
l3809:	
;Industrial_automation.c: 217: lcd_cmd(1,0,'0');
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	218
	
l3811:	
;Industrial_automation.c: 218: lcd_cmd(1,0,'0');
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	219
	
l3813:	
;Industrial_automation.c: 219: lcd_cmd(1,0,'0');
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	goto	l3815
	line	220
	
l1081:	
	line	221
	
l3815:	
;Industrial_automation.c: 220: }
;Industrial_automation.c: 221: ADCON0=0X93;
	movlw	(093h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	222
	
l3817:	
;Industrial_automation.c: 222: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	223
	
l3819:	
;Industrial_automation.c: 223: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(adc@high)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@high+1)
	line	224
	
l3821:	
;Industrial_automation.c: 224: low=ADRESL;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	movwf	(adc@low)
	movf	1+(??_adc+0)+0,w
	movwf	(adc@low+1)
	line	225
	
l3823:	
;Industrial_automation.c: 225: sensorvalue=low+(high*256);
	movf	(adc@high+1),w
	movwf	(??_adc+0)+0+1
	movf	(adc@high),w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	movf	(adc@low),w
	addwf	0+(??_adc+0)+0,w
	movwf	(adc@sensorvalue)
	movf	(adc@low+1),w
	skipnc
	incf	(adc@low+1),w
	addwf	1+(??_adc+0)+0,w
	movwf	1+(adc@sensorvalue)
	line	226
	
l3825:	
;Industrial_automation.c: 226: if(sensorvalue>=680)
	movf	(adc@sensorvalue+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02A8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3985
	movlw	low(02A8h)
	subwf	(adc@sensorvalue),w
u3985:

	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l3905
u3980:
	line	228
	
l3827:	
;Industrial_automation.c: 227: {
;Industrial_automation.c: 228: u=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(adc@u)
	movlw	high(01h)
	movwf	((adc@u))+1
	line	230
	
l3829:	
;Industrial_automation.c: 229: int Final_value;
;Industrial_automation.c: 230: vari1=sensorvalue-680;
	movf	(adc@sensorvalue),w
	addlw	low(-680)
	movwf	(adc@vari1)
	movf	(adc@sensorvalue+1),w
	skipnc
	addlw	1
	addlw	high(-680)
	movwf	1+(adc@vari1)
	line	231
	
l3831:	
;Industrial_automation.c: 231: temp=(vari1*0.2840);
	movlw	0x68
	movwf	(?___ftmul)
	movlw	0x91
	movwf	(?___ftmul+1)
	movlw	0x3e
	movwf	(?___ftmul+2)
	movf	(adc@vari1+1),w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(adc@vari1),w
	clrf	(?___awtoft)
	addwf	(?___awtoft)

	fcall	___awtoft
	movf	(0+(?___awtoft)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	movf	(1+(?___awtoft)),w
	movwf	1+(?___ftmul)+03h
	movf	(2+(?___awtoft)),w
	movwf	2+(?___ftmul)+03h
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(adc@temp)
	movf	(1+(?___ftmul)),w
	movwf	(adc@temp+1)
	movf	(2+(?___ftmul)),w
	movwf	(adc@temp+2)
	line	232
	
l3833:	
;Industrial_automation.c: 232: Final_value=temp*10;
	movf	(adc@temp),w
	movwf	0+(?___ftmul)+03h
	movf	(adc@temp+1),w
	movwf	1+(?___ftmul)+03h
	movf	(adc@temp+2),w
	movwf	2+(?___ftmul)+03h
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x20
	movwf	(?___ftmul+1)
	movlw	0x41
	movwf	(?___ftmul+2)
	fcall	___ftmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___ftmul)),w
	movwf	(?___fttol)
	movf	(1+(?___ftmul)),w
	movwf	(?___fttol+1)
	movf	(2+(?___ftmul)),w
	movwf	(?___fttol+2)
	fcall	___fttol
	movf	1+(((0+(?___fttol)))),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@Final_value+1)
	addwf	(adc@Final_value+1)
	movf	0+(((0+(?___fttol)))),w
	clrf	(adc@Final_value)
	addwf	(adc@Final_value)

	line	234
	
l3835:	
;Industrial_automation.c: 234: temp_a=Final_value/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	movf	(adc@Final_value+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(adc@Final_value),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@temp_a+1)
	addwf	(adc@temp_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@temp_a)
	addwf	(adc@temp_a)

	line	235
	
l3837:	
;Industrial_automation.c: 235: temp_b=Final_value%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(adc@Final_value+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(adc@Final_value),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@temp_b+1)
	addwf	(adc@temp_b+1)
	movf	(0+(?___awmod)),w
	clrf	(adc@temp_b)
	addwf	(adc@temp_b)

	line	236
	
l3839:	
;Industrial_automation.c: 236: temp_c=temp_b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(adc@temp_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(adc@temp_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@temp_c+1)
	addwf	(adc@temp_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@temp_c)
	addwf	(adc@temp_c)

	line	237
	
l3841:	
;Industrial_automation.c: 237: temp_d=temp_b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(adc@temp_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(adc@temp_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@temp_d+1)
	addwf	(adc@temp_d+1)
	movf	(0+(?___awmod)),w
	clrf	(adc@temp_d)
	addwf	(adc@temp_d)

	line	238
	
l3843:	
;Industrial_automation.c: 238: temp_e=temp_d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(adc@temp_d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(adc@temp_d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@temp_e+1)
	addwf	(adc@temp_e+1)
	movf	(0+(?___awdiv)),w
	clrf	(adc@temp_e)
	addwf	(adc@temp_e)

	line	239
	
l3845:	
;Industrial_automation.c: 239: temp_f=temp_d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(adc@temp_d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(adc@temp_d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@temp_f+1)
	addwf	(adc@temp_f+1)
	movf	(0+(?___awmod)),w
	clrf	(adc@temp_f)
	addwf	(adc@temp_f)

	line	240
	
l3847:	
;Industrial_automation.c: 240: lcd_cmd(0,0,0X90);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(090h)
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	241
	
l3849:	
;Industrial_automation.c: 241: string("Temp: ");
	movlw	low(STR_12|8000h)
	movwf	(?_string)
	movlw	high(STR_12|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	242
	
l3851:	
;Industrial_automation.c: 242: lcd_cmd(1,0,0X30+temp_a);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@temp_a),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	243
	
l3853:	
;Industrial_automation.c: 243: lcd_cmd(1,0,0X30+temp_c);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@temp_c),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	244
	
l3855:	
;Industrial_automation.c: 244: lcd_cmd(1,0,0X30+temp_e);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@temp_e),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	245
	
l3857:	
;Industrial_automation.c: 245: lcd_cmd(1,0,0X30+temp_f);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@temp_f),w
	addlw	030h
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	247
	
l3859:	
;Industrial_automation.c: 247: if(Final_value>=260)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@Final_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0104h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3995
	movlw	low(0104h)
	subwf	(adc@Final_value),w
u3995:

	skipc
	goto	u3991
	goto	u3990
u3991:
	goto	l1085
u3990:
	line	249
	
l3861:	
;Industrial_automation.c: 248: {
;Industrial_automation.c: 249: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	250
	
l3863:	
;Industrial_automation.c: 250: flag1=1;
	movlw	low(01h)
	movwf	(_flag1)
	movlw	high(01h)
	movwf	((_flag1))+1
	line	251
	
l3865:	
;Industrial_automation.c: 251: gsm(1);
	movlw	low(01h)
	movwf	(?_gsm)
	movlw	high(01h)
	movwf	((?_gsm))+1
	fcall	_gsm
	line	252
	
l3867:	
;Industrial_automation.c: 252: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3869:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3871:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3873:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3875:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3877:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	253
	
l3879:	
;Industrial_automation.c: 253: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3881:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3883:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3885:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3887:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3889:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	254
	
l3891:	
;Industrial_automation.c: 254: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3893:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3895:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3897:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3899:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3901:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	255
	
l3903:	
;Industrial_automation.c: 255: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	goto	l1085
	line	256
	
l1083:	
	line	257
;Industrial_automation.c: 256: }
;Industrial_automation.c: 257: }
	goto	l1085
	line	258
	
l1082:	
	line	260
	
l3905:	
;Industrial_automation.c: 258: else
;Industrial_automation.c: 259: {
;Industrial_automation.c: 260: u=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@u)
	clrf	(adc@u+1)
	goto	l1085
	line	261
	
l1084:	
	line	262
	
l1085:	
	return
	opt stack 0
GLOBAL	__end_of_adc
	__end_of_adc:
;; =============== function _adc ends ============

	signat	_adc,88
	global	_Generator_run
psect	text600,local,class=CODE,delta=2
global __ptext600
__ptext600:

;; *************** function _Generator_run *****************
;; Defined at:
;;		line 112 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  Gen_d           2   10[BANK0 ] int 
;;  Gen_b           2    8[BANK0 ] int 
;;  Gen_f           2    6[BANK0 ] int 
;;  Gen_e           2    4[BANK0 ] int 
;;  Gen_c           2    2[BANK0 ] int 
;;  Gen_a           2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0      12       0
;;      Temps:          1       0       0
;;      Totals:         1      12       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_cmd
;;		_string
;;		___awdiv
;;		___awmod
;;		_delay
;;		_eeprom_write
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text600
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	112
	global	__size_of_Generator_run
	__size_of_Generator_run	equ	__end_of_Generator_run-_Generator_run
	
_Generator_run:	
	opt	stack 3
; Regs used in _Generator_run: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	114
	
l3723:	
;Industrial_automation.c: 113: auto int Gen_a,Gen_b,Gen_c,Gen_d,Gen_e,Gen_f;
;Industrial_automation.c: 114: lcd_cmd(0,0,0XC0);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(0C0h)
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	115
	
l3725:	
;Industrial_automation.c: 115: string("Gen.run:");
	movlw	low(STR_2|8000h)
	movwf	(?_string)
	movlw	high(STR_2|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	116
	
l3727:	
;Industrial_automation.c: 116: Gen_a=variable/1000;
	movlw	low(03E8h)
	movwf	(?___awdiv)
	movlw	high(03E8h)
	movwf	((?___awdiv))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_variable+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_variable),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Generator_run@Gen_a+1)
	addwf	(Generator_run@Gen_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(Generator_run@Gen_a)
	addwf	(Generator_run@Gen_a)

	line	117
	
l3729:	
;Industrial_automation.c: 117: Gen_b=variable%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	movf	(_variable+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_variable),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Generator_run@Gen_b+1)
	addwf	(Generator_run@Gen_b+1)
	movf	(0+(?___awmod)),w
	clrf	(Generator_run@Gen_b)
	addwf	(Generator_run@Gen_b)

	line	118
	
l3731:	
;Industrial_automation.c: 118: Gen_c=Gen_b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(Generator_run@Gen_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Generator_run@Gen_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Generator_run@Gen_c+1)
	addwf	(Generator_run@Gen_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(Generator_run@Gen_c)
	addwf	(Generator_run@Gen_c)

	line	119
	
l3733:	
;Industrial_automation.c: 119: Gen_d=Gen_b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(Generator_run@Gen_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Generator_run@Gen_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Generator_run@Gen_d+1)
	addwf	(Generator_run@Gen_d+1)
	movf	(0+(?___awmod)),w
	clrf	(Generator_run@Gen_d)
	addwf	(Generator_run@Gen_d)

	line	120
	
l3735:	
;Industrial_automation.c: 120: Gen_e=Gen_d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(Generator_run@Gen_d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(Generator_run@Gen_d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Generator_run@Gen_e+1)
	addwf	(Generator_run@Gen_e+1)
	movf	(0+(?___awdiv)),w
	clrf	(Generator_run@Gen_e)
	addwf	(Generator_run@Gen_e)

	line	121
	
l3737:	
;Industrial_automation.c: 121: Gen_f=Gen_d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(Generator_run@Gen_d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(Generator_run@Gen_d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(Generator_run@Gen_f+1)
	addwf	(Generator_run@Gen_f+1)
	movf	(0+(?___awmod)),w
	clrf	(Generator_run@Gen_f)
	addwf	(Generator_run@Gen_f)

	line	122
	
l3739:	
;Industrial_automation.c: 122: lcd_cmd(1,0,Gen_a+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(Generator_run@Gen_a),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	123
	
l3741:	
;Industrial_automation.c: 123: lcd_cmd(1,0,Gen_c+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Generator_run@Gen_c),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	124
	
l3743:	
;Industrial_automation.c: 124: lcd_cmd(1,0,Gen_e+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Generator_run@Gen_e),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	125
	
l3745:	
;Industrial_automation.c: 125: lcd_cmd(1,0,Gen_f+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(Generator_run@Gen_f),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	126
	
l3747:	
;Industrial_automation.c: 126: string(".min");
	movlw	low(STR_3|8000h)
	movwf	(?_string)
	movlw	high(STR_3|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	127
	
l3749:	
;Industrial_automation.c: 127: if(RA0==1&&flag_supply==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l3779
u3930:
	
l3751:	
	movf	((_flag_supply+1)),w
	iorwf	((_flag_supply)),w
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l3779
u3940:
	line	129
	
l3753:	
;Industrial_automation.c: 128: {
;Industrial_automation.c: 129: Generator=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Generator)^080h
	clrf	(_Generator+1)^080h
	line	130
	
l3755:	
;Industrial_automation.c: 130: RC5=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	131
	
l3757:	
;Industrial_automation.c: 131: RC2=1;
	bsf	(58/8),(58)&7
	line	132
	
l3759:	
;Industrial_automation.c: 132: lcd_cmd(0,0,0X01);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	clrf	0+(?_lcd_cmd)+04h
	bsf	status,0
	rlf	0+(?_lcd_cmd)+04h,f
	fcall	_lcd_cmd
	line	133
	
l3761:	
;Industrial_automation.c: 133: lcd_cmd(0,0,0X80);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(080h)
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	134
	
l3763:	
;Industrial_automation.c: 134: string(" From EB supply");
	movlw	low(STR_4|8000h)
	movwf	(?_string)
	movlw	high(STR_4|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	135
	
l3765:	
;Industrial_automation.c: 135: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3767:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3769:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3771:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3773:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3775:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	136
	
l3777:	
;Industrial_automation.c: 136: flag_supply=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flag_supply)
	movlw	high(01h)
	movwf	((_flag_supply))+1
	goto	l3779
	line	137
	
l1051:	
	line	138
	
l3779:	
;Industrial_automation.c: 137: }
;Industrial_automation.c: 138: if(Generator==1&&read[0]==stop)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_Generator)^080h,w
	iorwf	(_Generator+1)^080h,w
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l3797
u3950:
	
l3781:	
	movf	(_read)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_stop),w
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l3797
u3960:
	line	141
	
l3783:	
;Industrial_automation.c: 139: {
;Industrial_automation.c: 141: variable++;
	movlw	low(01h)
	addwf	(_variable),f
	skipnc
	incf	(_variable+1),f
	movlw	high(01h)
	addwf	(_variable+1),f
	line	142
	
l3785:	
;Industrial_automation.c: 142: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3787:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3789:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3791:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3793:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3795:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3797
	line	143
	
l1052:	
	line	144
	
l3797:	
;Industrial_automation.c: 143: }
;Industrial_automation.c: 144: store=retain+variable;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_variable),w
	addwf	(_retain),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_store)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_variable+1),w
	skipnc
	incf	(_variable+1),w
	addwf	(_retain+1),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_store)^080h
	line	145
	
l3799:	
;Industrial_automation.c: 145: eeprom_write(0,store);
	movf	(_store)^080h,w
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0)
	fcall	_eeprom_write
	line	147
	
l1053:	
	return
	opt stack 0
GLOBAL	__end_of_Generator_run
	__end_of_Generator_run:
;; =============== function _Generator_run ends ============

	signat	_Generator_run,88
	global	_conversion
psect	text601,local,class=CODE,delta=2
global __ptext601
__ptext601:

;; *************** function _conversion *****************
;; Defined at:
;;		line 84 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  disp            1    wreg     PTR unsigned char 
;;		 -> read(6), 
;; Auto vars:     Size  Location     Type
;;  disp            1   13[COMMON] PTR unsigned char 
;;		 -> read(6), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          2       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_cmd
;;		_string
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text601
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	84
	global	__size_of_conversion
	__size_of_conversion	equ	__end_of_conversion-_conversion
	
_conversion:	
	opt	stack 3
; Regs used in _conversion: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;conversion@disp stored from wreg
	movwf	(conversion@disp)
	line	85
	
l3703:	
;Industrial_automation.c: 85: lcd_cmd(0,0,0X80);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(080h)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	86
	
l3705:	
;Industrial_automation.c: 86: string("time  : ");
	movlw	low(STR_1|8000h)
	movwf	(?_string)
	movlw	high(STR_1|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	87
	
l3707:	
;Industrial_automation.c: 87: lcd_cmd(1,0,((disp[2]&0X30)>>4)+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(conversion@disp),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u3905:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u3905
	movf	0+(??_conversion+0)+0,w
	andlw	03h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	88
	
l3709:	
;Industrial_automation.c: 88: lcd_cmd(1,0,(disp[2]&0X0F)+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(conversion@disp),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	89
	
l3711:	
;Industrial_automation.c: 89: lcd_cmd(1,0,':');
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(03Ah)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	91
	
l3713:	
;Industrial_automation.c: 91: lcd_cmd(1,0,((disp[1]&0X70)>>4)+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(conversion@disp),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u3915:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u3915
	movf	0+(??_conversion+0)+0,w
	andlw	07h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	92
	
l3715:	
;Industrial_automation.c: 92: lcd_cmd(1,0,(disp[1]&0X0F)+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(conversion@disp),w
	addlw	01h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	93
	
l3717:	
;Industrial_automation.c: 93: lcd_cmd(1,0,':');
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(03Ah)
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	95
	
l3719:	
;Industrial_automation.c: 95: lcd_cmd(1,0,((disp[0]&0X70)>>4)+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(conversion@disp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_conversion+0)+0
	movlw	04h
u3925:
	clrc
	rrf	(??_conversion+0)+0,f
	addlw	-1
	skipz
	goto	u3925
	movf	0+(??_conversion+0)+0,w
	andlw	07h
	addlw	030h
	movwf	(??_conversion+1)+0
	movf	(??_conversion+1)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	96
	
l3721:	
;Industrial_automation.c: 96: lcd_cmd(1,0,(disp[0]&0X0F)+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(conversion@disp),w
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	andlw	0Fh
	addlw	030h
	movwf	(??_conversion+0)+0
	movf	(??_conversion+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	98
	
l1038:	
	return
	opt stack 0
GLOBAL	__end_of_conversion
	__end_of_conversion:
;; =============== function _conversion ends ============

	signat	_conversion,4216
	global	_gsm
psect	text602,local,class=CODE,delta=2
global __ptext602
__ptext602:

;; *************** function _gsm *****************
;; Defined at:
;;		line 172 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  cmd             2    4[COMMON] int 
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_trans
;;		_new
;;		_delay
;;		_tran
;; This function is called by:
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text602
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	172
	global	__size_of_gsm
	__size_of_gsm	equ	__end_of_gsm-_gsm
	
_gsm:	
	opt	stack 4
; Regs used in _gsm: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	173
	
l3663:	
;Industrial_automation.c: 173: if(flag1==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_flag1),w
	iorwf	(_flag1+1),w
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l1078
u3860:
	line	175
	
l3665:	
;Industrial_automation.c: 174: {
;Industrial_automation.c: 175: trans("AT");
	movlw	low(STR_5|8000h)
	movwf	(?_trans)
	movlw	high(STR_5|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	line	176
	
l3667:	
;Industrial_automation.c: 176: new();
	fcall	_new
	line	177
	
l3669:	
;Industrial_automation.c: 177: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	178
;Industrial_automation.c: 178: trans("AT+CMGF=1");
	movlw	low(STR_6|8000h)
	movwf	(?_trans)
	movlw	high(STR_6|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	line	179
	
l3671:	
;Industrial_automation.c: 179: new();
	fcall	_new
	line	180
	
l3673:	
;Industrial_automation.c: 180: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	181
;Industrial_automation.c: 181: trans("AT+CMGS=\"+919566511486\"");
	movlw	low(STR_7|8000h)
	movwf	(?_trans)
	movlw	high(STR_7|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	line	182
	
l3675:	
;Industrial_automation.c: 182: new();
	fcall	_new
	line	183
	
l3677:	
;Industrial_automation.c: 183: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	184
	
l3679:	
;Industrial_automation.c: 184: if(cmd==1)
	movlw	01h
	xorwf	(gsm@cmd),w
	iorwf	(gsm@cmd+1),w
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l3683
u3870:
	line	186
	
l3681:	
;Industrial_automation.c: 185: {
;Industrial_automation.c: 186: trans("This an emergency due to Generator overheat. Take an action.");
	movlw	low(STR_8|8000h)
	movwf	(?_trans)
	movlw	high(STR_8|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	goto	l3683
	line	187
	
l1075:	
	line	188
	
l3683:	
;Industrial_automation.c: 187: }
;Industrial_automation.c: 188: if(cmd==2)
	movlw	02h
	xorwf	(gsm@cmd),w
	iorwf	(gsm@cmd+1),w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l3687
u3880:
	line	190
	
l3685:	
;Industrial_automation.c: 189: {
;Industrial_automation.c: 190: trans("Generator diesel reached low level 1 liter");
	movlw	low(STR_9|8000h)
	movwf	(?_trans)
	movlw	high(STR_9|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	goto	l3687
	line	191
	
l1076:	
	line	192
	
l3687:	
;Industrial_automation.c: 191: }
;Industrial_automation.c: 192: if(cmd==3)
	movlw	03h
	xorwf	(gsm@cmd),w
	iorwf	(gsm@cmd+1),w
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l3691
u3890:
	line	194
	
l3689:	
;Industrial_automation.c: 193: {
;Industrial_automation.c: 194: trans("Generator diesel reached very low level 0.5 liter");
	movlw	low(STR_10|8000h)
	movwf	(?_trans)
	movlw	high(STR_10|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	goto	l3691
	line	195
	
l1077:	
	line	196
	
l3691:	
;Industrial_automation.c: 195: }
;Industrial_automation.c: 196: new();
	fcall	_new
	line	197
	
l3693:	
;Industrial_automation.c: 197: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	198
	
l3695:	
;Industrial_automation.c: 198: tran(0X1A);
	movlw	(01Ah)
	fcall	_tran
	line	199
	
l3697:	
;Industrial_automation.c: 199: new();
	fcall	_new
	line	200
	
l3699:	
;Industrial_automation.c: 200: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	201
	
l3701:	
;Industrial_automation.c: 201: flag2=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_flag2)^080h
	movlw	high(01h)
	movwf	((_flag2)^080h)+1
	goto	l1078
	line	202
	
l1074:	
	line	203
	
l1078:	
	return
	opt stack 0
GLOBAL	__end_of_gsm
	__end_of_gsm:
;; =============== function _gsm ends ============

	signat	_gsm,4216
	global	_string
psect	text603,local,class=CODE,delta=2
global __ptext603
__ptext603:

;; *************** function _string *****************
;; Defined at:
;;		line 76 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  p               2    8[COMMON] PTR unsigned char 
;;		 -> STR_15(6), STR_14(15), STR_13(14), STR_12(7), 
;;		 -> STR_11(7), STR_4(16), STR_3(5), STR_2(9), 
;;		 -> STR_1(9), 
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_lcd_cmd
;; This function is called by:
;;		_conversion
;;		_Generator_run
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text603
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	76
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
	
_string:	
	opt	stack 3
; Regs used in _string: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	77
	
l3655:	
;Industrial_automation.c: 77: while(*p)
	goto	l3661
	
l1033:	
	line	79
	
l3657:	
;Industrial_automation.c: 78: {
;Industrial_automation.c: 79: lcd_cmd(1,0,*p++);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(string@p+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(string@p),w
	movwf	fsr0
	fcall	stringtab
	movwf	(??_string+0)+0
	movf	(??_string+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	
l3659:	
	movlw	low(01h)
	addwf	(string@p),f
	skipnc
	incf	(string@p+1),f
	movlw	high(01h)
	addwf	(string@p+1),f
	goto	l3661
	line	80
	
l1032:	
	line	77
	
l3661:	
	movf	(string@p+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(string@p),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3851
	goto	u3850
u3851:
	goto	l3657
u3850:
	goto	l1035
	
l1034:	
	line	81
	
l1035:	
	return
	opt stack 0
GLOBAL	__end_of_string
	__end_of_string:
;; =============== function _string ends ============

	signat	_string,4216
	global	_new
psect	text604,local,class=CODE,delta=2
global __ptext604
__ptext604:

;; *************** function _new *****************
;; Defined at:
;;		line 167 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_tran
;; This function is called by:
;;		_gsm
;; This function uses a non-reentrant model
;;
psect	text604
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	167
	global	__size_of_new
	__size_of_new	equ	__end_of_new-_new
	
_new:	
	opt	stack 4
; Regs used in _new: [wreg+status,2+status,0+pclath+cstack]
	line	168
	
l3653:	
;Industrial_automation.c: 168: tran(0X0D);
	movlw	(0Dh)
	fcall	_tran
	line	169
;Industrial_automation.c: 169: tran(0X0A);
	movlw	(0Ah)
	fcall	_tran
	line	170
	
l1071:	
	return
	opt stack 0
GLOBAL	__end_of_new
	__end_of_new:
;; =============== function _new ends ============

	signat	_new,88
	global	_lcd_cmd
psect	text605,local,class=CODE,delta=2
global __ptext605
__ptext605:

;; *************** function _lcd_cmd *****************
;; Defined at:
;;		line 17 in file "D:\Embedded\pic\code\Industrial_automation_882\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               2    2[COMMON] int 
;;  b               2    4[COMMON] int 
;;  c               1    6[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         5       0       0
;;      Locals:         0       0       0
;;      Temps:          1       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_pulse
;; This function is called by:
;;		_string
;;		_conversion
;;		_Generator_run
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text605
	file	"D:\Embedded\pic\code\Industrial_automation_882\lcd.h"
	line	17
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 3
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l3643:	
;lcd.h: 18: RB1=a;
	btfsc	(lcd_cmd@a),0
	goto	u3801
	goto	u3800
	
u3801:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	goto	u3814
u3800:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
u3814:
	line	19
;lcd.h: 19: RB2=b;
	btfsc	(lcd_cmd@b),0
	goto	u3821
	goto	u3820
	
u3821:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(50/8),(50)&7
	goto	u3834
u3820:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(50/8),(50)&7
u3834:
	line	20
	
l3645:	
;lcd.h: 20: PORTB=c;
	movf	(lcd_cmd@c),w
	movwf	(6)	;volatile
	line	21
	
l3647:	
;lcd.h: 21: pulse();
	fcall	_pulse
	line	22
	
l3649:	
;lcd.h: 22: PORTB=c<<4;
	movf	(lcd_cmd@c),w
	movwf	(??_lcd_cmd+0)+0
	movlw	(04h)-1
u3845:
	clrc
	rlf	(??_lcd_cmd+0)+0,f
	addlw	-1
	skipz
	goto	u3845
	clrc
	rlf	(??_lcd_cmd+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	23
	
l3651:	
;lcd.h: 23: pulse();
	fcall	_pulse
	line	24
	
l1000:	
	return
	opt stack 0
GLOBAL	__end_of_lcd_cmd
	__end_of_lcd_cmd:
;; =============== function _lcd_cmd ends ============

	signat	_lcd_cmd,12408
	global	___awtoft
psect	text606,local,class=CODE,delta=2
global __ptext606
__ptext606:

;; *************** function ___awtoft *****************
;; Defined at:
;;		line 33 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\awtoft.c"
;; Parameters:    Size  Location     Type
;;  c               2    8[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  3    8[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         3       0       0
;;      Locals:         1       0       0
;;      Temps:          2       0       0
;;      Totals:         6       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text606
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awtoft.c"
	line	33
	global	__size_of___awtoft
	__size_of___awtoft	equ	__end_of___awtoft-___awtoft
	
___awtoft:	
	opt	stack 5
; Regs used in ___awtoft: [wreg+status,2+status,0+pclath+cstack]
	line	36
	
l3635:	
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3791
	goto	u3790
u3791:
	goto	l3639
u3790:
	line	38
	
l3637:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l3639
	line	40
	
l1283:	
	line	41
	
l3639:	
	movf	(___awtoft@c),w
	movwf	(?___ftpack)
	movf	(___awtoft@c+1),w
	movwf	(?___ftpack+1)
	clrf	(?___ftpack+2)
	movlw	(08Eh)
	movwf	(??___awtoft+0)+0
	movf	(??___awtoft+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___awtoft@sign),w
	movwf	(??___awtoft+1)+0
	movf	(??___awtoft+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	movwf	(?___awtoft)
	movf	(1+(?___ftpack)),w
	movwf	(?___awtoft+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___awtoft+2)
	goto	l1284
	
l3641:	
	line	42
	
l1284:	
	return
	opt stack 0
GLOBAL	__end_of___awtoft
	__end_of___awtoft:
;; =============== function ___awtoft ends ============

	signat	___awtoft,4219
	global	___ftmul
psect	text607,local,class=CODE,delta=2
global __ptext607
__ptext607:

;; *************** function ___ftmul *****************
;; Defined at:
;;		line 52 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\ftmul.c"
;; Parameters:    Size  Location     Type
;;  f1              3   10[BANK0 ] float 
;;  f2              3   13[BANK0 ] float 
;; Auto vars:     Size  Location     Type
;;  f3_as_produc    3   21[BANK0 ] unsigned um
;;  sign            1   25[BANK0 ] unsigned char 
;;  cntr            1   24[BANK0 ] unsigned char 
;;  exp             1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  3   10[BANK0 ] float 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       6       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         0      16       0
;;Total ram usage:       16 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___ftpack
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text607
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\ftmul.c"
	line	52
	global	__size_of___ftmul
	__size_of___ftmul	equ	__end_of___ftmul-___ftmul
	
___ftmul:	
	opt	stack 5
; Regs used in ___ftmul: [wreg+status,2+status,0+pclath+cstack]
	line	56
	
l3585:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@exp)
	movf	((___ftmul@exp)),f
	skipz
	goto	u3651
	goto	u3650
u3651:
	goto	l3591
u3650:
	line	57
	
l3587:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1246
	
l3589:	
	goto	l1246
	
l1245:	
	line	58
	
l3591:	
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	clrc
	rlf	(??___ftmul+0)+1,w
	rlf	(??___ftmul+0)+2,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	movf	((___ftmul@sign)),f
	skipz
	goto	u3661
	goto	u3660
u3661:
	goto	l3597
u3660:
	line	59
	
l3593:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1246
	
l3595:	
	goto	l1246
	
l1247:	
	line	60
	
l3597:	
	movf	(___ftmul@sign),w
	addlw	07Bh
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	addwf	(___ftmul@exp),f
	line	61
	movf	(___ftmul@f1),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f1+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f1+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3675:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3670:
	addlw	-1
	skipz
	goto	u3675
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3685:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3680:
	addlw	-1
	skipz
	goto	u3685
	movf	0+(??___ftmul+0)+0,w
	movwf	(??___ftmul+3)+0
	movf	(??___ftmul+3)+0,w
	xorwf	(___ftmul@sign),f
	line	63
	movlw	(080h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	andwf	(___ftmul@sign),f
	line	64
	
l3599:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3601:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3603:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3605:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l3607:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3609
	line	70
	
l1248:	
	line	71
	
l3609:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3691
	goto	u3690
u3691:
	goto	l3613
u3690:
	line	72
	
l3611:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3701
	addwf	(___ftmul@f3_as_product+1),f
u3701:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3702
	addwf	(___ftmul@f3_as_product+2),f
u3702:

	goto	l3613
	
l1249:	
	line	73
	
l3613:	
	movlw	01h
u3715:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3715

	line	74
	
l3615:	
	movlw	01h
u3725:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3725
	line	75
	
l3617:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3731
	goto	u3730
u3731:
	goto	l3609
u3730:
	goto	l3619
	
l1250:	
	line	76
	
l3619:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3621
	line	77
	
l1251:	
	line	78
	
l3621:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3741
	goto	u3740
u3741:
	goto	l3625
u3740:
	line	79
	
l3623:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3751
	addwf	(___ftmul@f3_as_product+1),f
u3751:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3752
	addwf	(___ftmul@f3_as_product+2),f
u3752:

	goto	l3625
	
l1252:	
	line	80
	
l3625:	
	movlw	01h
u3765:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3765

	line	81
	
l3627:	
	movlw	01h
u3775:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3775

	line	82
	
l3629:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3781
	goto	u3780
u3781:
	goto	l3621
u3780:
	goto	l3631
	
l1253:	
	line	83
	
l3631:	
	movf	(___ftmul@f3_as_product),w
	movwf	(?___ftpack)
	movf	(___ftmul@f3_as_product+1),w
	movwf	(?___ftpack+1)
	movf	(___ftmul@f3_as_product+2),w
	movwf	(?___ftpack+2)
	movf	(___ftmul@exp),w
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	0+(?___ftpack)+03h
	movf	(___ftmul@sign),w
	movwf	(??___ftmul+1)+0
	movf	(??___ftmul+1)+0,w
	movwf	0+(?___ftpack)+04h
	fcall	___ftpack
	movf	(0+(?___ftpack)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movf	(1+(?___ftpack)),w
	movwf	(?___ftmul+1)
	movf	(2+(?___ftpack)),w
	movwf	(?___ftmul+2)
	goto	l1246
	
l3633:	
	line	84
	
l1246:	
	return
	opt stack 0
GLOBAL	__end_of___ftmul
	__end_of___ftmul:
;; =============== function ___ftmul ends ============

	signat	___ftmul,8315
	global	_tran
psect	text608,local,class=CODE,delta=2
global __ptext608
__ptext608:

;; *************** function _tran *****************
;; Defined at:
;;		line 160 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  data2           1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data2           1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_new
;;		_gsm
;; This function uses a non-reentrant model
;;
psect	text608
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	160
	global	__size_of_tran
	__size_of_tran	equ	__end_of_tran-_tran
	
_tran:	
	opt	stack 5
; Regs used in _tran: [wreg+status,2+status,0+pclath+cstack]
;tran@data2 stored from wreg
	movwf	(tran@data2)
	line	161
	
l3581:	
;Industrial_automation.c: 161: TXREG=data2;
	movf	(tran@data2),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	162
;Industrial_automation.c: 162: while(TXIF==0);
	goto	l1065
	
l1066:	
	
l1065:	
	btfss	(100/8),(100)&7
	goto	u3641
	goto	u3640
u3641:
	goto	l1065
u3640:
	
l1067:	
	line	163
;Industrial_automation.c: 163: TXIF=0;
	bcf	(100/8),(100)&7
	line	164
	
l3583:	
;Industrial_automation.c: 164: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	165
	
l1068:	
	return
	opt stack 0
GLOBAL	__end_of_tran
	__end_of_tran:
;; =============== function _tran ends ============

	signat	_tran,4216
	global	_trans
psect	text609,local,class=CODE,delta=2
global __ptext609
__ptext609:

;; *************** function _trans *****************
;; Defined at:
;;		line 150 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  data1           2    2[COMMON] PTR unsigned char 
;;		 -> STR_10(50), STR_9(43), STR_8(61), STR_7(24), 
;;		 -> STR_6(10), STR_5(3), 
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_gsm
;; This function uses a non-reentrant model
;;
psect	text609
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	150
	global	__size_of_trans
	__size_of_trans	equ	__end_of_trans-_trans
	
_trans:	
	opt	stack 5
; Regs used in _trans: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	151
	
l3571:	
;Industrial_automation.c: 151: while(*data1)
	goto	l3579
	
l1057:	
	line	153
	
l3573:	
;Industrial_automation.c: 152: {
;Industrial_automation.c: 153: TXREG=*data1++;
	movf	(trans@data1+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(trans@data1),w
	movwf	fsr0
	fcall	stringtab
	movwf	(25)	;volatile
	
l3575:	
	movlw	low(01h)
	addwf	(trans@data1),f
	skipnc
	incf	(trans@data1+1),f
	movlw	high(01h)
	addwf	(trans@data1+1),f
	line	154
;Industrial_automation.c: 154: while(TXIF==0);
	goto	l1058
	
l1059:	
	
l1058:	
	btfss	(100/8),(100)&7
	goto	u3621
	goto	u3620
u3621:
	goto	l1058
u3620:
	
l1060:	
	line	155
;Industrial_automation.c: 155: TXIF=0;
	bcf	(100/8),(100)&7
	line	156
	
l3577:	
;Industrial_automation.c: 156: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3579
	line	157
	
l1056:	
	line	151
	
l3579:	
	movf	(trans@data1+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(trans@data1),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3631
	goto	u3630
u3631:
	goto	l3573
u3630:
	goto	l1062
	
l1061:	
	line	158
	
l1062:	
	return
	opt stack 0
GLOBAL	__end_of_trans
	__end_of_trans:
;; =============== function _trans ends ============

	signat	_trans,4216
	global	_Gate_Siren
psect	text610,local,class=CODE,delta=2
global __ptext610
__ptext610:

;; *************** function _Gate_Siren *****************
;; Defined at:
;;		line 101 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  read1           1    wreg     PTR unsigned char 
;;		 -> read(6), 
;; Auto vars:     Size  Location     Type
;;  read1           1    2[COMMON] PTR unsigned char 
;;		 -> read(6), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text610
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	101
	global	__size_of_Gate_Siren
	__size_of_Gate_Siren	equ	__end_of_Gate_Siren-_Gate_Siren
	
_Gate_Siren:	
	opt	stack 6
; Regs used in _Gate_Siren: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Gate_Siren@read1 stored from wreg
	line	103
	movwf	(Gate_Siren@read1)
	
l3549:	
;Industrial_automation.c: 103: if((read1[2]==0X10&&read1[1]==0X00&&read1[0]==0X00)||(read1[2]==0X01&&read1[1]==0X00&&read1[0]==0X00)||(read1[2]==0X05&&read1[1]==0X00&&read1[0]==0X00))
	movf	(Gate_Siren@read1),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	010h
	skipz
	goto	u3531
	goto	u3530
u3531:
	goto	l3555
u3530:
	
l3551:	
	movf	(Gate_Siren@read1),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l3555
u3540:
	
l3553:	
	movf	(Gate_Siren@read1),w
	movwf	fsr0
	movf	indf
	skipnz
	goto	u3551
	goto	u3550
u3551:
	goto	l1043
u3550:
	goto	l3555
	
l1045:	
	
l3555:	
	movf	(Gate_Siren@read1),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u3561
	goto	u3560
u3561:
	goto	l3561
u3560:
	
l3557:	
	movf	(Gate_Siren@read1),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l3561
u3570:
	
l3559:	
	movf	(Gate_Siren@read1),w
	movwf	fsr0
	movf	indf
	skipnz
	goto	u3581
	goto	u3580
u3581:
	goto	l1043
u3580:
	goto	l3561
	
l1047:	
	
l3561:	
	movf	(Gate_Siren@read1),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	xorlw	05h
	skipz
	goto	u3591
	goto	u3590
u3591:
	goto	l1048
u3590:
	
l3563:	
	movf	(Gate_Siren@read1),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l1048
u3600:
	
l3565:	
	movf	(Gate_Siren@read1),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l1048
u3610:
	
l1043:	
	line	105
;Industrial_automation.c: 104: {
;Industrial_automation.c: 105: RC0=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	line	106
	
l3567:	
;Industrial_automation.c: 106: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	107
	
l3569:	
;Industrial_automation.c: 107: RC0=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	goto	l1048
	line	108
	
l1041:	
	line	109
	
l1048:	
	return
	opt stack 0
GLOBAL	__end_of_Gate_Siren
	__end_of_Gate_Siren:
;; =============== function _Gate_Siren ends ============

	signat	_Gate_Siren,4216
	global	_I2C_Restart
psect	text611,local,class=CODE,delta=2
global __ptext611
__ptext611:

;; *************** function _I2C_Restart *****************
;; Defined at:
;;		line 53 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text611
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	53
	global	__size_of_I2C_Restart
	__size_of_I2C_Restart	equ	__end_of_I2C_Restart-_I2C_Restart
	
_I2C_Restart:	
	opt	stack 6
; Regs used in _I2C_Restart: [status,2+status,0+pclath+cstack]
	line	54
	
l3545:	
;Industrial_automation.c: 54: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	55
	
l3547:	
;Industrial_automation.c: 55: hold();
	fcall	_hold
	line	56
	
l1021:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Restart
	__end_of_I2C_Restart:
;; =============== function _I2C_Restart ends ============

	signat	_I2C_Restart,88
	global	_I2C_Slave
psect	text612,local,class=CODE,delta=2
global __ptext612
__ptext612:

;; *************** function _I2C_Slave *****************
;; Defined at:
;;		line 46 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  data            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  data            1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          0       0       0
;;      Totals:         1       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text612
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	46
	global	__size_of_I2C_Slave
	__size_of_I2C_Slave	equ	__end_of_I2C_Slave-_I2C_Slave
	
_I2C_Slave:	
	opt	stack 6
; Regs used in _I2C_Slave: [wreg+status,2+status,0+pclath+cstack]
;I2C_Slave@data stored from wreg
	movwf	(I2C_Slave@data)
	line	47
	
l3539:	
;Industrial_automation.c: 47: ACKSTAT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1166/8)^080h,(1166)&7
	line	48
	
l3541:	
;Industrial_automation.c: 48: SSPBUF=data;
	movf	(I2C_Slave@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	49
;Industrial_automation.c: 49: while(ACKSTAT==1);
	goto	l1015
	
l1016:	
	
l1015:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3521
	goto	u3520
u3521:
	goto	l1015
u3520:
	goto	l3543
	
l1017:	
	line	50
	
l3543:	
;Industrial_automation.c: 50: hold();
	fcall	_hold
	line	51
	
l1018:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Slave
	__end_of_I2C_Slave:
;; =============== function _I2C_Slave ends ============

	signat	_I2C_Slave,4216
	global	_I2C_Stop
psect	text613,local,class=CODE,delta=2
global __ptext613
__ptext613:

;; *************** function _I2C_Stop *****************
;; Defined at:
;;		line 41 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text613
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	41
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 6
; Regs used in _I2C_Stop: [status,2+status,0+pclath+cstack]
	line	42
	
l3535:	
;Industrial_automation.c: 42: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	43
	
l3537:	
;Industrial_automation.c: 43: hold();
	fcall	_hold
	line	44
	
l1012:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Stop
	__end_of_I2C_Stop:
;; =============== function _I2C_Stop ends ============

	signat	_I2C_Stop,88
	global	_I2C_Start
psect	text614,local,class=CODE,delta=2
global __ptext614
__ptext614:

;; *************** function _I2C_Start *****************
;; Defined at:
;;		line 36 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_hold
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text614
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	36
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 6
; Regs used in _I2C_Start: [status,2+status,0+pclath+cstack]
	line	37
	
l3531:	
;Industrial_automation.c: 37: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	38
	
l3533:	
;Industrial_automation.c: 38: hold();
	fcall	_hold
	line	39
	
l1009:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Start
	__end_of_I2C_Start:
;; =============== function _I2C_Start ends ============

	signat	_I2C_Start,88
	global	_pulse
psect	text615,local,class=CODE,delta=2
global __ptext615
__ptext615:

;; *************** function _pulse *****************
;; Defined at:
;;		line 10 in file "D:\Embedded\pic\code\Industrial_automation_882\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcd_cmd
;; This function uses a non-reentrant model
;;
psect	text615
	file	"D:\Embedded\pic\code\Industrial_automation_882\lcd.h"
	line	10
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 3
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l3525:	
;lcd.h: 11: RB3=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(51/8),(51)&7
	line	12
	
l3527:	
;lcd.h: 12: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	13
	
l3529:	
;lcd.h: 13: RB3=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(51/8),(51)&7
	line	14
;lcd.h: 14: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	15
	
l997:	
	return
	opt stack 0
GLOBAL	__end_of_pulse
	__end_of_pulse:
;; =============== function _pulse ends ============

	signat	_pulse,88
	global	___awmod
psect	text616,local,class=CODE,delta=2
global __ptext616
__ptext616:

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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         2       0       0
;;      Temps:          1       0       0
;;      Totals:         7       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Generator_run
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text616
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awmod.c"
	line	5
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
	opt	stack 6
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	8
	
l3445:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3371
	goto	u3370
u3371:
	goto	l3449
u3370:
	line	10
	
l3447:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3449
	line	12
	
l1355:	
	line	13
	
l3449:	
	btfss	(___awmod@divisor+1),7
	goto	u3381
	goto	u3380
u3381:
	goto	l3453
u3380:
	line	14
	
l3451:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3453
	
l1356:	
	line	15
	
l3453:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3391
	goto	u3390
u3391:
	goto	l3471
u3390:
	line	16
	
l3455:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3461
	
l1359:	
	line	18
	
l3457:	
	movlw	01h
	
u3405:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3405
	line	19
	
l3459:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3461
	line	20
	
l1358:	
	line	17
	
l3461:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3411
	goto	u3410
u3411:
	goto	l3457
u3410:
	goto	l3463
	
l1360:	
	goto	l3463
	line	21
	
l1361:	
	line	22
	
l3463:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3425
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3425:
	skipc
	goto	u3421
	goto	u3420
u3421:
	goto	l3467
u3420:
	line	23
	
l3465:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3467
	
l1362:	
	line	24
	
l3467:	
	movlw	01h
	
u3435:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3435
	line	25
	
l3469:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3441
	goto	u3440
u3441:
	goto	l3463
u3440:
	goto	l3471
	
l1363:	
	goto	l3471
	line	26
	
l1357:	
	line	27
	
l3471:	
	movf	(___awmod@sign),w
	skipz
	goto	u3450
	goto	l3475
u3450:
	line	28
	
l3473:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3475
	
l1364:	
	line	29
	
l3475:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1365
	
l3477:	
	line	30
	
l1365:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
;; =============== function ___awmod ends ============

	signat	___awmod,8314
	global	___awdiv
psect	text617,local,class=CODE,delta=2
global __ptext617
__ptext617:

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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         4       0       0
;;      Temps:          1       0       0
;;      Totals:         9       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Generator_run
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text617
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\awdiv.c"
	line	5
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
	opt	stack 6
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	9
	
l3405:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3271
	goto	u3270
u3271:
	goto	l3409
u3270:
	line	11
	
l3407:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3409
	line	13
	
l1287:	
	line	14
	
l3409:	
	btfss	(___awdiv@dividend+1),7
	goto	u3281
	goto	u3280
u3281:
	goto	l3415
u3280:
	line	15
	
l3411:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3413:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3415
	line	17
	
l1288:	
	line	18
	
l3415:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3417:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3291
	goto	u3290
u3291:
	goto	l3437
u3290:
	line	20
	
l3419:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3425
	
l1291:	
	line	22
	
l3421:	
	movlw	01h
	
u3305:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3305
	line	23
	
l3423:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3425
	line	24
	
l1290:	
	line	21
	
l3425:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3311
	goto	u3310
u3311:
	goto	l3421
u3310:
	goto	l3427
	
l1292:	
	goto	l3427
	line	25
	
l1293:	
	line	26
	
l3427:	
	movlw	01h
	
u3325:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3325
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3335
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3335:
	skipc
	goto	u3331
	goto	u3330
u3331:
	goto	l3433
u3330:
	line	28
	
l3429:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3431:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3433
	line	30
	
l1294:	
	line	31
	
l3433:	
	movlw	01h
	
u3345:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3345
	line	32
	
l3435:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3351
	goto	u3350
u3351:
	goto	l3427
u3350:
	goto	l3437
	
l1295:	
	goto	l3437
	line	33
	
l1289:	
	line	34
	
l3437:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3360
	goto	l3441
u3360:
	line	35
	
l3439:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3441
	
l1296:	
	line	36
	
l3441:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1297
	
l3443:	
	line	37
	
l1297:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
;; =============== function ___awdiv ends ============

	signat	___awdiv,8314
	global	___fttol
psect	text618,local,class=CODE,delta=2
global __ptext618
__ptext618:

;; *************** function ___fttol *****************
;; Defined at:
;;		line 45 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\fttol.c"
;; Parameters:    Size  Location     Type
;;  f1              3    8[COMMON] float 
;; Auto vars:     Size  Location     Type
;;  lval            4    5[BANK0 ] unsigned long 
;;  exp1            1    9[BANK0 ] unsigned char 
;;  sign1           1    4[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[COMMON] long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         4       0       0
;;      Locals:         0       6       0
;;      Temps:          0       4       0
;;      Totals:         4      10       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_adc
;; This function uses a non-reentrant model
;;
psect	text618
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\fttol.c"
	line	45
	global	__size_of___fttol
	__size_of___fttol	equ	__end_of___fttol-___fttol
	
___fttol:	
	opt	stack 6
; Regs used in ___fttol: [wreg+status,2+status,0]
	line	49
	
l3349:	
	movf	(___fttol@f1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	clrc
	rlf	(??___fttol+0)+1,w
	rlf	(??___fttol+0)+2,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@exp1)
	movf	((___fttol@exp1)),f
	skipz
	goto	u3161
	goto	u3160
u3161:
	goto	l3355
u3160:
	line	50
	
l3351:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1257
	
l3353:	
	goto	l1257
	
l1256:	
	line	51
	
l3355:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3175:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3170:
	addlw	-1
	skipz
	goto	u3175
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3357:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3359:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3361:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3363:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3365:	
	btfss	(___fttol@exp1),7
	goto	u3181
	goto	u3180
u3181:
	goto	l3375
u3180:
	line	57
	
l3367:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3191
	goto	u3190
u3191:
	goto	l3373
u3190:
	line	58
	
l3369:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1257
	
l3371:	
	goto	l1257
	
l1259:	
	goto	l3373
	line	59
	
l1260:	
	line	60
	
l3373:	
	movlw	01h
u3205:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3205

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3211
	goto	u3210
u3211:
	goto	l3373
u3210:
	goto	l3385
	
l1261:	
	line	62
	goto	l3385
	
l1258:	
	line	63
	
l3375:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3221
	goto	u3220
u3221:
	goto	l3383
u3220:
	line	64
	
l3377:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1257
	
l3379:	
	goto	l1257
	
l1263:	
	line	65
	goto	l3383
	
l1265:	
	line	66
	
l3381:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3235:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3235
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3383
	line	68
	
l1264:	
	line	65
	
l3383:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3241
	goto	u3240
u3241:
	goto	l3381
u3240:
	goto	l3385
	
l1266:	
	goto	l3385
	line	69
	
l1262:	
	line	70
	
l3385:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3250
	goto	l3389
u3250:
	line	71
	
l3387:	
	comf	(___fttol@lval),f
	comf	(___fttol@lval+1),f
	comf	(___fttol@lval+2),f
	comf	(___fttol@lval+3),f
	incf	(___fttol@lval),f
	skipnz
	incf	(___fttol@lval+1),f
	skipnz
	incf	(___fttol@lval+2),f
	skipnz
	incf	(___fttol@lval+3),f
	goto	l3389
	
l1267:	
	line	72
	
l3389:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1257
	
l3391:	
	line	73
	
l1257:	
	return
	opt stack 0
GLOBAL	__end_of___fttol
	__end_of___fttol:
;; =============== function ___fttol ends ============

	signat	___fttol,4220
	global	___ftpack
psect	text619,local,class=CODE,delta=2
global __ptext619
__ptext619:

;; *************** function ___ftpack *****************
;; Defined at:
;;		line 63 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\float.c"
;; Parameters:    Size  Location     Type
;;  arg             3    0[COMMON] unsigned um
;;  exp             1    3[COMMON] unsigned char 
;;  sign            1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  3    0[COMMON] float 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         5       0       0
;;      Locals:         0       0       0
;;      Temps:          3       0       0
;;      Totals:         8       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		___ftmul
;;		___awtoft
;;		___ftadd
;;		___ftdiv
;;		___lbtoft
;;		___abtoft
;;		___lwtoft
;;		___altoft
;;		___lltoft
;;		___attoft
;;		___lttoft
;; This function uses a non-reentrant model
;;
psect	text619
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\float.c"
	line	63
	global	__size_of___ftpack
	__size_of___ftpack	equ	__end_of___ftpack-___ftpack
	
___ftpack:	
	opt	stack 5
; Regs used in ___ftpack: [wreg+status,2+status,0]
	line	64
	
l3275:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2970
	goto	l3279
u2970:
	
l3277:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2981
	goto	u2980
u2981:
	goto	l3285
u2980:
	goto	l3279
	
l1481:	
	line	65
	
l3279:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1482
	
l3281:	
	goto	l1482
	
l1479:	
	line	66
	goto	l3285
	
l1484:	
	line	67
	
l3283:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u2995:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u2995

	goto	l3285
	line	69
	
l1483:	
	line	66
	
l3285:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3001
	goto	u3000
u3001:
	goto	l3283
u3000:
	goto	l1486
	
l1485:	
	line	70
	goto	l1486
	
l1487:	
	line	71
	
l3287:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3289:	
	movlw	01h
	addwf	(___ftpack@arg),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+1),f
	movlw	0
	skipnc
movlw 1
	addwf	(___ftpack@arg+2),f
	line	73
	
l3291:	
	movlw	01h
u3015:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3015

	line	74
	
l1486:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3021
	goto	u3020
u3021:
	goto	l3287
u3020:
	goto	l3295
	
l1488:	
	line	75
	goto	l3295
	
l1490:	
	line	76
	
l3293:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3035:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3035
	goto	l3295
	line	78
	
l1489:	
	line	75
	
l3295:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3041
	goto	u3040
u3041:
	goto	l3293
u3040:
	
l1491:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l1492
u3050:
	line	80
	
l3297:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1492:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3299:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3065:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3060:
	addlw	-1
	skipz
	goto	u3065
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3301:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3070
	goto	l1493
u3070:
	line	84
	
l3303:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1493:	
	line	85
	line	86
	
l1482:	
	return
	opt stack 0
GLOBAL	__end_of___ftpack
	__end_of___ftpack:
;; =============== function ___ftpack ends ============

	signat	___ftpack,12411
	global	_eeprom_read
psect	text620,local,class=CODE,delta=2
global __ptext620
__ptext620:

;; *************** function _eeprom_read *****************
;; Defined at:
;;		line 8 in file "eeread.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    1[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text620
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\eeread.c"
	line	8
	global	__size_of_eeprom_read
	__size_of_eeprom_read	equ	__end_of_eeprom_read-_eeprom_read
	
_eeprom_read:	
	opt	stack 7
; Regs used in _eeprom_read: [wreg+status,2+status,0]
;eeprom_read@addr stored from wreg
	line	10
	movwf	(eeprom_read@addr)
	line	9
	
l1110:	
	line	10
# 10 "C:\Program Files\HI-TECH Software\PICC\9.81\sources\eeread.c"
clrwdt ;#
psect	text620
	line	11
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1110
u2720:
	goto	l3201
	
l1111:	
	line	12
	
l3201:	
	movf	(eeprom_read@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movlw	(03Fh)
	movwf	(??_eeprom_read+0)+0
	movf	(??_eeprom_read+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	bsf	(3168/8)^0180h,(3168)&7
	clrc
	btfsc	(3168/8)^0180h,(3168)&7
	setc
	movlw	0
	skipnc
	movlw	1

	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movf	(268)^0100h,w	;volatile
	goto	l1112
	
l3203:	
	line	13
	
l1112:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_read
	__end_of_eeprom_read:
;; =============== function _eeprom_read ends ============

	signat	_eeprom_read,4217
	global	_eeprom_write
psect	text621,local,class=CODE,delta=2
global __ptext621
__ptext621:

;; *************** function _eeprom_write *****************
;; Defined at:
;;		line 8 in file "C:\Program Files\HI-TECH Software\PICC\9.81\sources\eewrite.c"
;; Parameters:    Size  Location     Type
;;  addr            1    wreg     unsigned char 
;;  value           1    0[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  addr            1    2[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         1       0       0
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         3       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Generator_run
;; This function uses a non-reentrant model
;;
psect	text621
	file	"C:\Program Files\HI-TECH Software\PICC\9.81\sources\eewrite.c"
	line	8
	global	__size_of_eeprom_write
	__size_of_eeprom_write	equ	__end_of_eeprom_write-_eeprom_write
	
_eeprom_write:	
	opt	stack 6
; Regs used in _eeprom_write: [wreg+status,2+status,0]
;eeprom_write@addr stored from wreg
	movwf	(eeprom_write@addr)
	line	9
	
l1131:	
	goto	l1132
	
l1133:	
	
l1132:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1132
u2690:
	goto	l3181
	
l1134:	
	
l3181:	
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l3183:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l3185:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
l3187:	
	btfss	(95/8),(95)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1135
u2700:
	
l3189:	
	bsf	(24/8),(24)&7
	
l1135:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
l3191:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l3193:	
	bsf	(3169/8)^0180h,(3169)&7
	
l3195:	
	bcf	(3170/8)^0180h,(3170)&7
	
l3197:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1138
u2710:
	
l3199:	
	bsf	(95/8),(95)&7
	goto	l1138
	
l1136:	
	goto	l1138
	
l1137:	
	line	10
	
l1138:	
	return
	opt stack 0
GLOBAL	__end_of_eeprom_write
	__end_of_eeprom_write:
;; =============== function _eeprom_write ends ============

	signat	_eeprom_write,8312
	global	_I2C_Read
psect	text622,local,class=CODE,delta=2
global __ptext622
__ptext622:

;; *************** function _I2C_Read *****************
;; Defined at:
;;		line 58 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  i               2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  read1           1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  1    wreg      unsigned char 
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         1       0       0
;;      Temps:          1       0       0
;;      Totals:         4       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text622
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	58
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 7
; Regs used in _I2C_Read: [wreg]
	line	60
	
l3167:	
;Industrial_automation.c: 59: unsigned char read1;
;Industrial_automation.c: 60: if(i==2)
	movlw	02h
	xorwf	(I2C_Read@i),w
	iorwf	(I2C_Read@i+1),w
	skipz
	goto	u2671
	goto	u2670
u2671:
	goto	l1024
u2670:
	line	62
	
l3169:	
;Industrial_automation.c: 61: {
;Industrial_automation.c: 62: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	63
;Industrial_automation.c: 63: }
	goto	l1026
	line	64
	
l1024:	
	line	66
;Industrial_automation.c: 64: else
;Industrial_automation.c: 65: {
;Industrial_automation.c: 66: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	goto	l1026
	line	67
	
l1025:	
	line	68
;Industrial_automation.c: 67: }
;Industrial_automation.c: 68: while(BF==0);
	goto	l1026
	
l1027:	
	
l1026:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u2681
	goto	u2680
u2681:
	goto	l1026
u2680:
	goto	l3171
	
l1028:	
	line	69
	
l3171:	
;Industrial_automation.c: 69: read1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	movwf	(I2C_Read@read1)
	line	70
	
l3173:	
;Industrial_automation.c: 70: SSPOV=0;
	bcf	(166/8),(166)&7
	line	71
	
l3175:	
;Industrial_automation.c: 71: ACKEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1164/8)^080h,(1164)&7
	line	72
	
l3177:	
;Industrial_automation.c: 72: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	73
;Industrial_automation.c: 73: return read1;
	movf	(I2C_Read@read1),w
	goto	l1029
	
l3179:	
	line	74
	
l1029:	
	return
	opt stack 0
GLOBAL	__end_of_I2C_Read
	__end_of_I2C_Read:
;; =============== function _I2C_Read ends ============

	signat	_I2C_Read,4217
	global	_hold
psect	text623,local,class=CODE,delta=2
global __ptext623
__ptext623:

;; *************** function _hold *****************
;; Defined at:
;;		line 31 in file "D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		None
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         0       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Slave
;;		_I2C_Restart
;; This function uses a non-reentrant model
;;
psect	text623
	file	"D:\Embedded\pic\code\Industrial_automation_882\Industrial_automation.c"
	line	31
	global	__size_of_hold
	__size_of_hold	equ	__end_of_hold-_hold
	
_hold:	
	opt	stack 6
; Regs used in _hold: []
	line	32
	
l3165:	
;Industrial_automation.c: 32: while(SSPIF==0);
	goto	l1003
	
l1004:	
	
l1003:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2661
	goto	u2660
u2661:
	goto	l1003
u2660:
	
l1005:	
	line	33
;Industrial_automation.c: 33: SSPIF=0;
	bcf	(99/8),(99)&7
	line	34
	
l1006:	
	return
	opt stack 0
GLOBAL	__end_of_hold
	__end_of_hold:
;; =============== function _hold ends ============

	signat	_hold,88
	global	_delay
psect	text624,local,class=CODE,delta=2
global __ptext624
__ptext624:

;; *************** function _delay *****************
;; Defined at:
;;		line 6 in file "D:\Embedded\pic\code\Industrial_automation_882\lcd.h"
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
;; Data sizes:     COMMON   BANK0   BANK1
;;      Params:         2       0       0
;;      Locals:         0       0       0
;;      Temps:          0       0       0
;;      Totals:         2       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_pulse
;;		_Gate_Siren
;;		_Generator_run
;;		_trans
;;		_tran
;;		_gsm
;;		_adc
;;		_main
;; This function uses a non-reentrant model
;;
psect	text624
	file	"D:\Embedded\pic\code\Industrial_automation_882\lcd.h"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	7
	
l3161:	
;lcd.h: 7: while(ms--);
	goto	l3163
	
l992:	
	goto	l3163
	
l991:	
	
l3163:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2655
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2655:

	skipz
	goto	u2651
	goto	u2650
u2651:
	goto	l3163
u2650:
	goto	l994
	
l993:	
	line	8
	
l994:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
;; =============== function _delay ends ============

	signat	_delay,4216
psect	text625,local,class=CODE,delta=2
global __ptext625
__ptext625:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
