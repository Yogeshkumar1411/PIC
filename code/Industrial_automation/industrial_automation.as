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
	global	adc@F1726
psect	idataBANK0,class=CODE,space=0,delta=2
global __pidataBANK0
__pidataBANK0:
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	26

;initializer for _stop
	retlw	06Dh
psect	idataBANK1,class=CODE,space=0,delta=2
global __pidataBANK1
__pidataBANK1:
	line	234

;initializer for adc@F1726
	retlw	046h
	retlw	069h
	retlw	06Eh
	retlw	061h
	retlw	06Ch
	retlw	05Fh
	retlw	076h
	retlw	061h
	retlw	06Ch
	retlw	075h
	retlw	065h
	retlw	0
	global	_Gen_a
	global	_Gen_b
	global	_Gen_c
	global	_Gen_d
	global	_Gen_e
	global	_Gen_f
	global	_Pre_b1
	global	_Pre_d1
	global	_flag1
	global	_flag_supply
	global	_retain
	global	_sensorvalue
	global	_variable
	global	_i
	global	_temp
	global	_Generator
	global	_Pre_a1
	global	_Pre_c1
	global	_Pre_e1
	global	_Pre_f1
	global	_flag2
	global	_high
	global	_low
	global	_store
	global	_temp_a
	global	_temp_b
	global	_temp_c
	global	_temp_d
	global	_temp_e
	global	_temp_f
	global	_vari1
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
	global	_PORTD
_PORTD	set	8
	global	_PORTE
_PORTE	set	9
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
	global	_RA4
_RA4	set	44
	global	_RB0
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB3
_RB3	set	51
	global	_RB4
_RB4	set	52
	global	_RB5
_RB5	set	53
	global	_RC1
_RC1	set	57
	global	_RE0
_RE0	set	72
	global	_RE1
_RE1	set	73
	global	_RE2
_RE2	set	74
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
	global	_TRISD
_TRISD	set	136
	global	_TRISE
_TRISE	set	137
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
	file	"industrial_automation.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect	bssBANK0,class=BANK0,space=1
global __pbssBANK0
__pbssBANK0:
_Gen_a:
       ds      2

_Gen_b:
       ds      2

_Gen_c:
       ds      2

_Gen_d:
       ds      2

_Gen_e:
       ds      2

_Gen_f:
       ds      2

_Pre_b1:
       ds      2

_Pre_d1:
       ds      2

_flag1:
       ds      2

_flag_supply:
       ds      2

_retain:
       ds      2

_sensorvalue:
       ds      2

_variable:
       ds      2

_i:
       ds      1

psect	dataBANK0,class=BANK0,space=1
global __pdataBANK0
__pdataBANK0:
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	26
_stop:
       ds      1

psect	bssBANK1,class=BANK1,space=1
global __pbssBANK1
__pbssBANK1:
_temp:
       ds      3

_Generator:
       ds      2

_Pre_a1:
       ds      2

_Pre_c1:
       ds      2

_Pre_e1:
       ds      2

_Pre_f1:
       ds      2

_flag2:
       ds      2

_high:
       ds      2

_low:
       ds      2

_store:
       ds      2

_temp_a:
       ds      2

_temp_b:
       ds      2

_temp_c:
       ds      2

_temp_d:
       ds      2

_temp_e:
       ds      2

_temp_f:
       ds      2

_vari1:
       ds      2

_read:
       ds      6

psect	dataBANK1,class=BANK1,space=1
global __pdataBANK1
__pdataBANK1:
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	234
adc@F1726:
       ds      12

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
	movlw	low((__pbssBANK0)+01Bh)
	fcall	clear_ram
; Clear objects allocated to BANK1
psect cinit,class=CODE,delta=2
	movlw	low(__pbssBANK1)
	movwf	fsr
	movlw	low((__pbssBANK1)+029h)
	fcall	clear_ram
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
; Initialize objects allocated to BANK1
psect cinit,class=CODE,delta=2
global init_ram, __pidataBANK1
	movlw low(__pdataBANK1+12)
	movwf btemp-1,f
	movlw high(__pidataBANK1)
	movwf btemp,f
	movlw low(__pidataBANK1)
	movwf btemp+1,f
	movlw low(__pdataBANK1)
	movwf fsr,f
	fcall init_ram
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
	global	?_string
?_string:	; 0 bytes @ 0x7
	global	string@p
string@p:	; 2 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
	global	?___awtoft
?___awtoft:	; 3 bytes @ 0x8
	global	?___fttol
?___fttol:	; 4 bytes @ 0x8
	global	___awtoft@c
___awtoft@c:	; 2 bytes @ 0x8
	global	___fttol@f1
___fttol@f1:	; 3 bytes @ 0x8
	ds	1
	global	??_string
??_string:	; 0 bytes @ 0x9
	ds	1
	global	??_conversion
??_conversion:	; 0 bytes @ 0xA
	global	??_Generator_run
??_Generator_run:	; 0 bytes @ 0xA
	ds	1
	global	??___awtoft
??___awtoft:	; 0 bytes @ 0xB
	ds	1
	global	conversion@disp
conversion@disp:	; 1 bytes @ 0xC
	ds	1
	global	___awtoft@sign
___awtoft@sign:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	??___fttol
??___fttol:	; 0 bytes @ 0x0
	ds	4
	global	___fttol@sign1
___fttol@sign1:	; 1 bytes @ 0x4
	ds	1
	global	___fttol@lval
___fttol@lval:	; 4 bytes @ 0x5
	ds	4
	global	___fttol@exp1
___fttol@exp1:	; 1 bytes @ 0x9
	ds	1
	global	?___ftmul
?___ftmul:	; 3 bytes @ 0xA
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
	ds	4
	global	adc@DV
adc@DV:	; 12 bytes @ 0x1E
	ds	12
	global	adc@Final_value
adc@Final_value:	; 2 bytes @ 0x2A
	ds	2
	global	adc@u
adc@u:	; 2 bytes @ 0x2C
	ds	2
	global	adc@j
adc@j:	; 2 bytes @ 0x2E
	ds	2
	global	??_main
??_main:	; 0 bytes @ 0x30
	ds	3
;;Data sizes: Strings 272, constant 0, data 13, bss 68, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80     51      79
;; BANK1           80      0      53
;; BANK3           96      0       0
;; BANK2           96      0       0

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
;; (0) _main                                                 3     3      0    4340
;;                                             48 BANK0      3     3      0
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
;; (1) _adc                                                 22    22      0    1713
;;                                             26 BANK0     22    22      0
;;                            _lcd_cmd
;;                             _string
;;                           ___awtoft
;;                            ___ftmul
;;                            ___fttol
;;                                _gsm
;;                              _delay
;; ---------------------------------------------------------------------------------
;; (1) _Generator_run                                        1     1      0     883
;;                                             10 COMMON     1     1      0
;;                            _lcd_cmd
;;                             _string
;;                            ___awdiv
;;                            ___awmod
;;                              _delay
;;                       _eeprom_write
;; ---------------------------------------------------------------------------------
;; (1) _conversion                                           3     3      0     353
;;                                             10 COMMON     3     3      0
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
;; (2) _string                                               3     1      2     133
;;                                              7 COMMON     3     1      2
;;                            _lcd_cmd
;; ---------------------------------------------------------------------------------
;; (2) _new                                                  0     0      0      44
;;                               _tran
;; ---------------------------------------------------------------------------------
;; (3) _lcd_cmd                                              5     0      5      88
;;                                              2 COMMON     5     0      5
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
;;BANK1               50      0      35       7       66.3%
;;BITBANK1            50      0       0       6        0.0%
;;CODE                 0      0       0       0        0.0%
;;DATA                 0      0      97      12        0.0%
;;ABS                  0      0      92       3        0.0%
;;NULL                 0      0       0       0        0.0%
;;STACK                0      0       5       2        0.0%
;;BANK0               50     33      4F       5       98.8%
;;BITBANK0            50      0       0       4        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR0              0      0       0       1        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 261 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;;      Temps:          0       3       0       0       0
;;      Totals:         0       3       0       0       0
;;Total ram usage:        3 bytes
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	261
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 3
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	262
	
l3894:	
;industrial_automation.c: 262: TRISC=0X98;
	movlw	(098h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(135)^080h	;volatile
	line	263
	
l3896:	
;industrial_automation.c: 263: PORTC=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(7)	;volatile
	line	264
	
l3898:	
;industrial_automation.c: 264: TRISA=0X2F;
	movlw	(02Fh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(133)^080h	;volatile
	line	265
;industrial_automation.c: 265: PORTA=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(5)	;volatile
	line	266
;industrial_automation.c: 266: TRISD=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(136)^080h	;volatile
	line	267
;industrial_automation.c: 267: PORTD=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(8)	;volatile
	line	268
	
l3900:	
;industrial_automation.c: 268: TRISB=0X3C;
	movlw	(03Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	269
	
l3902:	
;industrial_automation.c: 269: PORTB=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	270
	
l3904:	
;industrial_automation.c: 270: TRISE=0X00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(137)^080h	;volatile
	line	271
	
l3906:	
;industrial_automation.c: 271: PORTE=0X00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(9)	;volatile
	line	272
;industrial_automation.c: 272: ANSEL=0X10;
	movlw	(010h)
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	movwf	(392)^0180h	;volatile
	line	273
	
l3908:	
;industrial_automation.c: 273: ANSELH=0X00;
	clrf	(393)^0180h	;volatile
	line	274
	
l3910:	
;industrial_automation.c: 274: SMP=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1191/8)^080h,(1191)&7
	line	275
	
l3912:	
;industrial_automation.c: 275: SSPCON=0X28;
	movlw	(028h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(20)	;volatile
	line	276
	
l3914:	
;industrial_automation.c: 276: TXSTA=0X26;
	movlw	(026h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(152)^080h	;volatile
	line	277
	
l3916:	
;industrial_automation.c: 277: RCSTA=0X90;
	movlw	(090h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(24)	;volatile
	line	278
	
l3918:	
;industrial_automation.c: 278: SPBRG=25;
	movlw	(019h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(153)^080h	;volatile
	line	279
	
l3920:	
;industrial_automation.c: 279: lcd_cmd(0,0,0X38);
	movlw	low(0)
	movwf	(?_lcd_cmd)
	movlw	high(0)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movlw	(038h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	280
	
l3922:	
;industrial_automation.c: 280: lcd_cmd(0,0,0X0E);
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
	line	283
	
l3924:	
;industrial_automation.c: 283: retain=eeprom_read(0);
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
	goto	l3926
	line	284
;industrial_automation.c: 284: while(1)
	
l1197:	
	line	286
	
l3926:	
;industrial_automation.c: 285: {
;industrial_automation.c: 286: adc();
	fcall	_adc
	line	287
	
l3928:	
;industrial_automation.c: 287: if(RA1==1&&flag_supply==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(41/8),(41)&7
	goto	u4021
	goto	u4020
u4021:
	goto	l3988
u4020:
	
l3930:	
	movlw	01h
	xorwf	(_flag_supply),w
	iorwf	(_flag_supply+1),w
	skipz
	goto	u4031
	goto	u4030
u4031:
	goto	l3988
u4030:
	line	289
	
l3932:	
;industrial_automation.c: 288: {
;industrial_automation.c: 289: stop=read[0];
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_read)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(_stop)
	line	290
	
l3934:	
;industrial_automation.c: 290: Pre_a1=retain/1000;
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Pre_a1+1)^080h
	addwf	(_Pre_a1+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(_Pre_a1)^080h
	addwf	(_Pre_a1)^080h

	line	291
	
l3936:	
;industrial_automation.c: 291: Pre_b1=retain%1000;
	movlw	low(03E8h)
	movwf	(?___awmod)
	movlw	high(03E8h)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	clrf	(_Pre_b1+1)
	addwf	(_Pre_b1+1)
	movf	(0+(?___awmod)),w
	clrf	(_Pre_b1)
	addwf	(_Pre_b1)

	line	292
	
l3938:	
;industrial_automation.c: 292: Pre_c1=Pre_b1/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_Pre_b1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_Pre_b1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Pre_c1+1)^080h
	addwf	(_Pre_c1+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(_Pre_c1)^080h
	addwf	(_Pre_c1)^080h

	line	293
	
l3940:	
;industrial_automation.c: 293: Pre_d1=Pre_b1%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Pre_b1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_Pre_b1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Pre_d1+1)
	addwf	(_Pre_d1+1)
	movf	(0+(?___awmod)),w
	clrf	(_Pre_d1)
	addwf	(_Pre_d1)

	line	294
	
l3942:	
;industrial_automation.c: 294: Pre_e1=Pre_d1/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_Pre_d1+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_Pre_d1),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Pre_e1+1)^080h
	addwf	(_Pre_e1+1)^080h
	movf	(0+(?___awdiv)),w
	clrf	(_Pre_e1)^080h
	addwf	(_Pre_e1)^080h

	line	295
	
l3944:	
;industrial_automation.c: 295: Pre_f1=Pre_d1%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_Pre_d1+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_Pre_d1),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Pre_f1+1)^080h
	addwf	(_Pre_f1+1)^080h
	movf	(0+(?___awmod)),w
	clrf	(_Pre_f1)^080h
	addwf	(_Pre_f1)^080h

	line	297
	
l3946:	
;industrial_automation.c: 297: lcd_cmd(0,0,0X01);
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
	line	298
	
l3948:	
;industrial_automation.c: 298: lcd_cmd(0,0,0X80);
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
	line	299
	
l3950:	
;industrial_automation.c: 299: string(" Generator On");
	movlw	low(STR_13|8000h)
	movwf	(?_string)
	movlw	high(STR_13|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	300
	
l3952:	
;industrial_automation.c: 300: lcd_cmd(0,0,0X91);
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
	line	301
	
l3954:	
;industrial_automation.c: 301: string(" Previous_run:");
	movlw	low(STR_14|8000h)
	movwf	(?_string)
	movlw	high(STR_14|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	302
	
l3956:	
;industrial_automation.c: 302: lcd_cmd(0,0,0XD0);
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
	line	303
	
l3958:	
;industrial_automation.c: 303: lcd_cmd(1,0,Pre_a1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Pre_a1)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	304
	
l3960:	
;industrial_automation.c: 304: lcd_cmd(1,0,Pre_c1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Pre_c1)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	305
	
l3962:	
;industrial_automation.c: 305: lcd_cmd(1,0,Pre_e1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Pre_e1)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	306
	
l3964:	
;industrial_automation.c: 306: lcd_cmd(1,0,Pre_f1+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_Pre_f1)^080h,w
	addlw	030h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	307
	
l3966:	
;industrial_automation.c: 307: string(".mins");
	movlw	low(STR_15|8000h)
	movwf	(?_string)
	movlw	high(STR_15|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	308
	
l3968:	
;industrial_automation.c: 308: RB1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(49/8),(49)&7
	line	309
	
l3970:	
;industrial_automation.c: 309: RB0=0;
	bcf	(48/8),(48)&7
	line	310
	
l3972:	
;industrial_automation.c: 310: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3974:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3976:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3978:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3980:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3982:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	311
	
l3984:	
;industrial_automation.c: 311: Generator=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_Generator)^080h
	movlw	high(01h)
	movwf	((_Generator)^080h)+1
	line	312
	
l3986:	
;industrial_automation.c: 312: flag_supply=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_flag_supply)
	clrf	(_flag_supply+1)
	goto	l3988
	line	313
	
l1198:	
	line	314
	
l3988:	
;industrial_automation.c: 313: }
;industrial_automation.c: 314: I2C_Start();
	fcall	_I2C_Start
	line	315
	
l3990:	
;industrial_automation.c: 315: I2C_Slave(0XD0);
	movlw	(0D0h)
	fcall	_I2C_Slave
	line	316
	
l3992:	
;industrial_automation.c: 316: I2C_Slave(0X00);
	movlw	(0)
	fcall	_I2C_Slave
	line	317
	
l3994:	
;industrial_automation.c: 317: I2C_Restart();
	fcall	_I2C_Restart
	line	318
	
l3996:	
;industrial_automation.c: 318: I2C_Slave(0XD1);
	movlw	(0D1h)
	fcall	_I2C_Slave
	line	319
	
l3998:	
;industrial_automation.c: 319: for(i=0;i<3;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_i)
	
l4000:	
	movlw	(03h)
	subwf	(_i),w
	skipc
	goto	u4041
	goto	u4040
u4041:
	goto	l1199
u4040:
	goto	l4010
	
l4002:	
	goto	l4010
	line	320
	
l1199:	
	line	321
;industrial_automation.c: 320: {
;industrial_automation.c: 321: RCEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1163/8)^080h,(1163)&7
	line	322
	
l4004:	
;industrial_automation.c: 322: read[i]=I2C_Read(i);
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
	line	319
	
l4006:	
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_i),f
	
l4008:	
	movlw	(03h)
	subwf	(_i),w
	skipc
	goto	u4051
	goto	u4050
u4051:
	goto	l1199
u4050:
	goto	l4010
	
l1200:	
	line	324
	
l4010:	
;industrial_automation.c: 323: }
;industrial_automation.c: 324: I2C_Stop();
	fcall	_I2C_Stop
	line	325
	
l4012:	
;industrial_automation.c: 325: conversion(read);
	movlw	(_read)&0ffh
	fcall	_conversion
	line	326
	
l4014:	
;industrial_automation.c: 326: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	327
	
l4016:	
;industrial_automation.c: 327: Gate_Siren(read);
	movlw	(_read)&0ffh
	fcall	_Gate_Siren
	line	328
	
l4018:	
;industrial_automation.c: 328: Generator_run();
	fcall	_Generator_run
	line	329
	
l4020:	
;industrial_automation.c: 329: if(RB3==1&&flag1==0&&flag2==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(51/8),(51)&7
	goto	u4061
	goto	u4060
u4061:
	goto	l4030
u4060:
	
l4022:	
	movf	((_flag1+1)),w
	iorwf	((_flag1)),w
	skipz
	goto	u4071
	goto	u4070
u4071:
	goto	l4030
u4070:
	
l4024:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	((_flag2+1)^080h),w
	iorwf	((_flag2)^080h),w
	skipz
	goto	u4081
	goto	u4080
u4081:
	goto	l4030
u4080:
	line	331
	
l4026:	
;industrial_automation.c: 330: {
;industrial_automation.c: 331: flag1=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flag1)
	movlw	high(01h)
	movwf	((_flag1))+1
	line	332
	
l4028:	
;industrial_automation.c: 332: gsm(2);
	movlw	low(02h)
	movwf	(?_gsm)
	movlw	high(02h)
	movwf	((?_gsm))+1
	fcall	_gsm
	goto	l4030
	line	333
	
l1201:	
	line	334
	
l4030:	
;industrial_automation.c: 333: }
;industrial_automation.c: 334: if(RB4==1&&flag1==1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7
	goto	u4091
	goto	u4090
u4091:
	goto	l4038
u4090:
	
l4032:	
	movlw	01h
	xorwf	(_flag1),w
	iorwf	(_flag1+1),w
	skipz
	goto	u4101
	goto	u4100
u4101:
	goto	l4038
u4100:
	line	336
	
l4034:	
;industrial_automation.c: 335: {
;industrial_automation.c: 336: gsm(3);
	movlw	low(03h)
	movwf	(?_gsm)
	movlw	high(03h)
	movwf	((?_gsm))+1
	fcall	_gsm
	line	337
	
l4036:	
;industrial_automation.c: 337: flag1=2;
	movlw	low(02h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flag1)
	movlw	high(02h)
	movwf	((_flag1))+1
	goto	l4038
	line	338
	
l1202:	
	line	339
	
l4038:	
;industrial_automation.c: 338: }
;industrial_automation.c: 339: if(RB5==1)
	btfss	(53/8),(53)&7
	goto	u4111
	goto	u4110
u4111:
	goto	l3926
u4110:
	line	341
	
l4040:	
;industrial_automation.c: 340: {
;industrial_automation.c: 341: flag1=0;
	clrf	(_flag1)
	clrf	(_flag1+1)
	line	342
;industrial_automation.c: 342: flag2=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_flag2)^080h
	clrf	(_flag2+1)^080h
	goto	l3926
	line	343
	
l1203:	
	goto	l3926
	line	344
	
l1204:	
	line	284
	goto	l3926
	
l1205:	
	line	345
	
l1206:	
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
;;		line 209 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DV             12   30[BANK0 ] unsigned char [12]
;;  Final_value     2   42[BANK0 ] int 
;;  j               2   46[BANK0 ] int 
;;  u               2   44[BANK0 ] int 
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
;;      Locals:         0      18       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      22       0       0       0
;;Total ram usage:       22 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    4
;; This function calls:
;;		_lcd_cmd
;;		_string
;;		___awtoft
;;		___ftmul
;;		___fttol
;;		_gsm
;;		_delay
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text599
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	209
	global	__size_of_adc
	__size_of_adc	equ	__end_of_adc-_adc
	
_adc:	
	opt	stack 3
; Regs used in _adc: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	210
	
l3798:	
;industrial_automation.c: 210: int j=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@j)
	clrf	(adc@j+1)
	line	212
	
l3800:	
;industrial_automation.c: 211: int u;
;industrial_automation.c: 212: if(u==0)
	movf	((adc@u+1)),w
	iorwf	((adc@u)),w
	skipz
	goto	u3971
	goto	u3970
u3971:
	goto	l3814
u3970:
	line	214
	
l3802:	
;industrial_automation.c: 213: {
;industrial_automation.c: 214: lcd_cmd(0,0,0X90);
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
	
l3804:	
;industrial_automation.c: 215: string("Temp: ");
	movlw	low(STR_11|8000h)
	movwf	(?_string)
	movlw	high(STR_11|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	216
	
l3806:	
;industrial_automation.c: 216: lcd_cmd(1,0,'0');
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
	
l3808:	
;industrial_automation.c: 217: lcd_cmd(1,0,'0');
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
	
l3810:	
;industrial_automation.c: 218: lcd_cmd(1,0,'0');
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
	
l3812:	
;industrial_automation.c: 219: lcd_cmd(1,0,'0');
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
	goto	l3814
	line	220
	
l1185:	
	line	221
	
l3814:	
;industrial_automation.c: 220: }
;industrial_automation.c: 221: ADCON0=0X93;
	movlw	(093h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(31)	;volatile
	line	222
	
l3816:	
;industrial_automation.c: 222: ADCON1=0X80;
	movlw	(080h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	223
	
l3818:	
;industrial_automation.c: 223: high=ADRESH;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(30),w	;volatile
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_high)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_adc+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_high+1)^080h
	line	224
	
l3820:	
;industrial_automation.c: 224: low=ADRESL;
	movf	(158)^080h,w	;volatile
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	clrf	(??_adc+0)+0+1
	movf	0+(??_adc+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_low)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(??_adc+0)+0,w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_low+1)^080h
	line	225
	
l3822:	
;industrial_automation.c: 225: sensorvalue=low+(high*256);
	movf	(_high+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0+1
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_high)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	(??_adc+0)+1
	clrf	(??_adc+0)+0
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_low)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	0+(??_adc+0)+0,w
	movwf	(_sensorvalue)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_low+1)^080h,w
	skipnc
	incf	(_low+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	1+(??_adc+0)+0,w
	movwf	1+(_sensorvalue)
	line	226
	
l3824:	
;industrial_automation.c: 226: if(sensorvalue>=680)
	movf	(_sensorvalue+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(02A8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u3985
	movlw	low(02A8h)
	subwf	(_sensorvalue),w
u3985:

	skipc
	goto	u3981
	goto	u3980
u3981:
	goto	l3892
u3980:
	line	228
	
l3826:	
;industrial_automation.c: 227: {
;industrial_automation.c: 228: u=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(adc@u)
	movlw	high(01h)
	movwf	((adc@u))+1
	line	230
	
l3828:	
;industrial_automation.c: 229: int Final_value;
;industrial_automation.c: 230: vari1=sensorvalue-680;
	movf	(_sensorvalue),w
	addlw	low(-680)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_vari1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_sensorvalue+1),w
	skipnc
	addlw	1
	addlw	high(-680)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	1+(_vari1)^080h
	line	231
	
l3830:	
;industrial_automation.c: 231: temp=(vari1*0.2840);
	movlw	0x68
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(?___ftmul)
	movlw	0x91
	movwf	(?___ftmul+1)
	movlw	0x3e
	movwf	(?___ftmul+2)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_vari1+1)^080h,w
	clrf	(?___awtoft+1)
	addwf	(?___awtoft+1)
	movf	(_vari1)^080h,w
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
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_temp)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(1+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_temp+1)^080h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(2+(?___ftmul)),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_temp+2)^080h
	line	232
	
l3832:	
;industrial_automation.c: 232: Final_value=temp*10;
	movf	(_temp)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	0+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_temp+1)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	1+(?___ftmul)+03h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movf	(_temp+2)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
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
	
l3834:	
;industrial_automation.c: 234: char DV[]="Final_value";
	movlw	(adc@DV)&0ffh
	movwf	fsr0
	movlw	low(adc@F1726)
	movwf	(??_adc+0)+0
	movf	fsr0,w
	movwf	((??_adc+0)+0+1)
	movlw	12
	movwf	((??_adc+0)+0+2)
u3990:
	movf	(??_adc+0)+0,w
	movwf	fsr0
	bcf	status, 7	;select IRP bank1
	
	movf	indf,w
	movwf	((??_adc+0)+0+3)
	incf	(??_adc+0)+0,f
	movf	((??_adc+0)+0+1),w
	movwf	fsr0
	
	movf	((??_adc+0)+0+3),w
	movwf	indf
	incf	((??_adc+0)+0+1),f
	decfsz	((??_adc+0)+0+2),f
	goto	u3990
	line	235
	
l3836:	
;industrial_automation.c: 235: lcd_cmd(0,0,0X90);
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
	line	236
	
l3838:	
;industrial_automation.c: 236: string("Temp: ");
	movlw	low(STR_12|8000h)
	movwf	(?_string)
	movlw	high(STR_12|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	237
;industrial_automation.c: 237: while(DV[j]!='\0')
	goto	l3844
	
l1190:	
	line	239
	
l3840:	
;industrial_automation.c: 238: {
;industrial_automation.c: 239: lcd_cmd(1,0,DV[j]);
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
	movf	(adc@j),w
	addlw	adc@DV&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	movwf	(??_adc+0)+0
	movf	(??_adc+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	240
	
l3842:	
;industrial_automation.c: 240: j++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(adc@j),f
	skipnc
	incf	(adc@j+1),f
	movlw	high(01h)
	addwf	(adc@j+1),f
	goto	l3844
	line	241
	
l1189:	
	line	237
	
l3844:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(adc@j),w
	addlw	adc@DV&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,f
	skipz
	goto	u4001
	goto	u4000
u4001:
	goto	l3840
u4000:
	goto	l3846
	
l1191:	
	line	242
	
l3846:	
;industrial_automation.c: 241: }
;industrial_automation.c: 242: if(Final_value>=260)
	movf	(adc@Final_value+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0104h))^80h
	subwf	btemp+1,w
	skipz
	goto	u4015
	movlw	low(0104h)
	subwf	(adc@Final_value),w
u4015:

	skipc
	goto	u4011
	goto	u4010
u4011:
	goto	l1194
u4010:
	line	244
	
l3848:	
;industrial_automation.c: 243: {
;industrial_automation.c: 244: RA4=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(44/8),(44)&7
	line	245
	
l3850:	
;industrial_automation.c: 245: flag1=1;
	movlw	low(01h)
	movwf	(_flag1)
	movlw	high(01h)
	movwf	((_flag1))+1
	line	246
	
l3852:	
;industrial_automation.c: 246: gsm(1);
	movlw	low(01h)
	movwf	(?_gsm)
	movlw	high(01h)
	movwf	((?_gsm))+1
	fcall	_gsm
	line	247
	
l3854:	
;industrial_automation.c: 247: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3856:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3858:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3860:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3862:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3864:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	248
	
l3866:	
;industrial_automation.c: 248: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3868:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3870:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3872:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3874:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3876:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	249
	
l3878:	
;industrial_automation.c: 249: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3880:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3882:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3884:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3886:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3888:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	250
	
l3890:	
;industrial_automation.c: 250: RA4=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(44/8),(44)&7
	goto	l1194
	line	251
	
l1192:	
	line	252
;industrial_automation.c: 251: }
;industrial_automation.c: 252: }
	goto	l1194
	line	253
	
l1186:	
	line	255
	
l3892:	
;industrial_automation.c: 253: else
;industrial_automation.c: 254: {
;industrial_automation.c: 255: u=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(adc@u)
	clrf	(adc@u+1)
	goto	l1194
	line	256
	
l1193:	
	line	257
	
l1194:	
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
;;		line 117 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;;      Temps:          1       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	117
	global	__size_of_Generator_run
	__size_of_Generator_run	equ	__end_of_Generator_run-_Generator_run
	
_Generator_run:	
	opt	stack 3
; Regs used in _Generator_run: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	118
	
l3720:	
;industrial_automation.c: 118: lcd_cmd(0,0,0XC0);
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
	line	119
	
l3722:	
;industrial_automation.c: 119: string("Gen.run:");
	movlw	low(STR_2|8000h)
	movwf	(?_string)
	movlw	high(STR_2|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	120
	
l3724:	
;industrial_automation.c: 120: Gen_a=variable/1000;
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
	clrf	(_Gen_a+1)
	addwf	(_Gen_a+1)
	movf	(0+(?___awdiv)),w
	clrf	(_Gen_a)
	addwf	(_Gen_a)

	line	121
	
l3726:	
;industrial_automation.c: 121: Gen_b=variable%1000;
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
	clrf	(_Gen_b+1)
	addwf	(_Gen_b+1)
	movf	(0+(?___awmod)),w
	clrf	(_Gen_b)
	addwf	(_Gen_b)

	line	122
	
l3728:	
;industrial_automation.c: 122: Gen_c=Gen_b/100;
	movlw	low(064h)
	movwf	(?___awdiv)
	movlw	high(064h)
	movwf	((?___awdiv))+1
	movf	(_Gen_b+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_Gen_b),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Gen_c+1)
	addwf	(_Gen_c+1)
	movf	(0+(?___awdiv)),w
	clrf	(_Gen_c)
	addwf	(_Gen_c)

	line	123
	
l3730:	
;industrial_automation.c: 123: Gen_d=Gen_b%100;
	movlw	low(064h)
	movwf	(?___awmod)
	movlw	high(064h)
	movwf	((?___awmod))+1
	movf	(_Gen_b+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_Gen_b),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Gen_d+1)
	addwf	(_Gen_d+1)
	movf	(0+(?___awmod)),w
	clrf	(_Gen_d)
	addwf	(_Gen_d)

	line	124
	
l3732:	
;industrial_automation.c: 124: Gen_e=Gen_d/10;
	movlw	low(0Ah)
	movwf	(?___awdiv)
	movlw	high(0Ah)
	movwf	((?___awdiv))+1
	movf	(_Gen_d+1),w
	clrf	1+(?___awdiv)+02h
	addwf	1+(?___awdiv)+02h
	movf	(_Gen_d),w
	clrf	0+(?___awdiv)+02h
	addwf	0+(?___awdiv)+02h

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Gen_e+1)
	addwf	(_Gen_e+1)
	movf	(0+(?___awdiv)),w
	clrf	(_Gen_e)
	addwf	(_Gen_e)

	line	125
	
l3734:	
;industrial_automation.c: 125: Gen_f=Gen_d%10;
	movlw	low(0Ah)
	movwf	(?___awmod)
	movlw	high(0Ah)
	movwf	((?___awmod))+1
	movf	(_Gen_d+1),w
	clrf	1+(?___awmod)+02h
	addwf	1+(?___awmod)+02h
	movf	(_Gen_d),w
	clrf	0+(?___awmod)+02h
	addwf	0+(?___awmod)+02h

	fcall	___awmod
	movf	(1+(?___awmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(_Gen_f+1)
	addwf	(_Gen_f+1)
	movf	(0+(?___awmod)),w
	clrf	(_Gen_f)
	addwf	(_Gen_f)

	line	126
	
l3736:	
;industrial_automation.c: 126: lcd_cmd(1,0,Gen_a+0X30);
	movlw	low(01h)
	movwf	(?_lcd_cmd)
	movlw	high(01h)
	movwf	((?_lcd_cmd))+1
	movlw	low(0)
	movwf	0+(?_lcd_cmd)+02h
	movlw	high(0)
	movwf	(0+(?_lcd_cmd)+02h)+1
	movf	(_Gen_a),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	127
	
l3738:	
;industrial_automation.c: 127: lcd_cmd(1,0,Gen_c+0X30);
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
	movf	(_Gen_c),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	128
	
l3740:	
;industrial_automation.c: 128: lcd_cmd(1,0,Gen_e+0X30);
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
	movf	(_Gen_e),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	129
	
l3742:	
;industrial_automation.c: 129: lcd_cmd(1,0,Gen_f+0X30);
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
	movf	(_Gen_f),w
	addlw	030h
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	0+(?_lcd_cmd)+04h
	fcall	_lcd_cmd
	line	130
	
l3744:	
;industrial_automation.c: 130: string(".min");
	movlw	low(STR_3|8000h)
	movwf	(?_string)
	movlw	high(STR_3|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	131
	
l3746:	
;industrial_automation.c: 131: if(RA0==1&&flag_supply==0)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(40/8),(40)&7
	goto	u3931
	goto	u3930
u3931:
	goto	l3776
u3930:
	
l3748:	
	movf	((_flag_supply+1)),w
	iorwf	((_flag_supply)),w
	skipz
	goto	u3941
	goto	u3940
u3941:
	goto	l3776
u3940:
	line	133
	
l3750:	
;industrial_automation.c: 132: {
;industrial_automation.c: 133: Generator=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(_Generator)^080h
	clrf	(_Generator+1)^080h
	line	134
	
l3752:	
;industrial_automation.c: 134: RB1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(49/8),(49)&7
	line	135
	
l3754:	
;industrial_automation.c: 135: RB0=1;
	bsf	(48/8),(48)&7
	line	136
	
l3756:	
;industrial_automation.c: 136: lcd_cmd(0,0,0X01);
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
	line	137
	
l3758:	
;industrial_automation.c: 137: lcd_cmd(0,0,0X80);
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
	line	138
	
l3760:	
;industrial_automation.c: 138: string(" From EB supply");
	movlw	low(STR_4|8000h)
	movwf	(?_string)
	movlw	high(STR_4|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	139
	
l3762:	
;industrial_automation.c: 139: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3764:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3766:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3768:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3770:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3772:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	line	140
	
l3774:	
;industrial_automation.c: 140: flag_supply=1;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(_flag_supply)
	movlw	high(01h)
	movwf	((_flag_supply))+1
	goto	l3776
	line	141
	
l1155:	
	line	142
	
l3776:	
;industrial_automation.c: 141: }
;industrial_automation.c: 142: if(Generator==1&&read[0]==stop)
	movlw	01h
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	xorwf	(_Generator)^080h,w
	iorwf	(_Generator+1)^080h,w
	skipz
	goto	u3951
	goto	u3950
u3951:
	goto	l3794
u3950:
	
l3778:	
	movf	(_read)^080h,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_stop),w
	skipz
	goto	u3961
	goto	u3960
u3961:
	goto	l3794
u3960:
	line	145
	
l3780:	
;industrial_automation.c: 143: {
;industrial_automation.c: 145: variable++;
	movlw	low(01h)
	addwf	(_variable),f
	skipnc
	incf	(_variable+1),f
	movlw	high(01h)
	addwf	(_variable+1),f
	line	146
	
l3782:	
;industrial_automation.c: 146: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3784:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3786:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3788:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3790:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	
l3792:	
	movlw	low(0EA60h)
	movwf	(?_delay)
	movlw	high(0EA60h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3794
	line	147
	
l1156:	
	line	148
	
l3794:	
;industrial_automation.c: 147: }
;industrial_automation.c: 148: store=retain+variable;
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
	line	149
	
l3796:	
;industrial_automation.c: 149: eeprom_write(0,store);
	movf	(_store)^080h,w
	movwf	(??_Generator_run+0)+0
	movf	(??_Generator_run+0)+0,w
	movwf	(?_eeprom_write)
	movlw	(0)
	fcall	_eeprom_write
	line	151
	
l1157:	
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
;;		line 89 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  disp            1    wreg     PTR unsigned char 
;;		 -> read(6), 
;; Auto vars:     Size  Location     Type
;;  disp            1   12[COMMON] PTR unsigned char 
;;		 -> read(6), 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	89
	global	__size_of_conversion
	__size_of_conversion	equ	__end_of_conversion-_conversion
	
_conversion:	
	opt	stack 3
; Regs used in _conversion: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;conversion@disp stored from wreg
	movwf	(conversion@disp)
	line	90
	
l3700:	
;industrial_automation.c: 90: lcd_cmd(0,0,0X80);
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
	line	91
	
l3702:	
;industrial_automation.c: 91: string("time  : ");
	movlw	low(STR_1|8000h)
	movwf	(?_string)
	movlw	high(STR_1|8000h)
	movwf	((?_string))+1
	fcall	_string
	line	92
	
l3704:	
;industrial_automation.c: 92: lcd_cmd(1,0,((disp[2]&0X30)>>4)+0X30);
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
	line	93
	
l3706:	
;industrial_automation.c: 93: lcd_cmd(1,0,(disp[2]&0X0F)+0X30);
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
	line	94
	
l3708:	
;industrial_automation.c: 94: lcd_cmd(1,0,':');
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
	line	96
	
l3710:	
;industrial_automation.c: 96: lcd_cmd(1,0,((disp[1]&0X70)>>4)+0X30);
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
	line	97
	
l3712:	
;industrial_automation.c: 97: lcd_cmd(1,0,(disp[1]&0X0F)+0X30);
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
	line	98
	
l3714:	
;industrial_automation.c: 98: lcd_cmd(1,0,':');
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
	line	100
	
l3716:	
;industrial_automation.c: 100: lcd_cmd(1,0,((disp[0]&0X70)>>4)+0X30);
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
	line	101
	
l3718:	
;industrial_automation.c: 101: lcd_cmd(1,0,(disp[0]&0X0F)+0X30);
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
	line	103
	
l1142:	
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
;;		line 176 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	176
	global	__size_of_gsm
	__size_of_gsm	equ	__end_of_gsm-_gsm
	
_gsm:	
	opt	stack 4
; Regs used in _gsm: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	177
	
l3660:	
;industrial_automation.c: 177: if(flag1==1)
	movlw	01h
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	xorwf	(_flag1),w
	iorwf	(_flag1+1),w
	skipz
	goto	u3861
	goto	u3860
u3861:
	goto	l1182
u3860:
	line	179
	
l3662:	
;industrial_automation.c: 178: {
;industrial_automation.c: 179: trans("AT");
	movlw	low(STR_5|8000h)
	movwf	(?_trans)
	movlw	high(STR_5|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	line	180
	
l3664:	
;industrial_automation.c: 180: new();
	fcall	_new
	line	181
	
l3666:	
;industrial_automation.c: 181: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	182
;industrial_automation.c: 182: trans("AT+CMGF=1");
	movlw	low(STR_6|8000h)
	movwf	(?_trans)
	movlw	high(STR_6|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	line	183
	
l3668:	
;industrial_automation.c: 183: new();
	fcall	_new
	line	184
	
l3670:	
;industrial_automation.c: 184: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	185
;industrial_automation.c: 185: trans("AT+CMGS=\"+919566511486\"");
	movlw	low(STR_7|8000h)
	movwf	(?_trans)
	movlw	high(STR_7|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	line	186
	
l3672:	
;industrial_automation.c: 186: new();
	fcall	_new
	line	187
	
l3674:	
;industrial_automation.c: 187: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	188
	
l3676:	
;industrial_automation.c: 188: if(cmd==1)
	movlw	01h
	xorwf	(gsm@cmd),w
	iorwf	(gsm@cmd+1),w
	skipz
	goto	u3871
	goto	u3870
u3871:
	goto	l3680
u3870:
	line	190
	
l3678:	
;industrial_automation.c: 189: {
;industrial_automation.c: 190: trans("This an emergency due to Generator overheat. Take an action.");
	movlw	low(STR_8|8000h)
	movwf	(?_trans)
	movlw	high(STR_8|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	goto	l3680
	line	191
	
l1179:	
	line	192
	
l3680:	
;industrial_automation.c: 191: }
;industrial_automation.c: 192: if(cmd==2)
	movlw	02h
	xorwf	(gsm@cmd),w
	iorwf	(gsm@cmd+1),w
	skipz
	goto	u3881
	goto	u3880
u3881:
	goto	l3684
u3880:
	line	194
	
l3682:	
;industrial_automation.c: 193: {
;industrial_automation.c: 194: trans("Generator diesel reached low level 1 liter");
	movlw	low(STR_9|8000h)
	movwf	(?_trans)
	movlw	high(STR_9|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	goto	l3684
	line	195
	
l1180:	
	line	196
	
l3684:	
;industrial_automation.c: 195: }
;industrial_automation.c: 196: if(cmd==3)
	movlw	03h
	xorwf	(gsm@cmd),w
	iorwf	(gsm@cmd+1),w
	skipz
	goto	u3891
	goto	u3890
u3891:
	goto	l3688
u3890:
	line	198
	
l3686:	
;industrial_automation.c: 197: {
;industrial_automation.c: 198: trans("Generator diesel reached very low level 0.5 liter");
	movlw	low(STR_10|8000h)
	movwf	(?_trans)
	movlw	high(STR_10|8000h)
	movwf	((?_trans))+1
	fcall	_trans
	goto	l3688
	line	199
	
l1181:	
	line	200
	
l3688:	
;industrial_automation.c: 199: }
;industrial_automation.c: 200: new();
	fcall	_new
	line	201
	
l3690:	
;industrial_automation.c: 201: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	202
	
l3692:	
;industrial_automation.c: 202: tran(0X1A);
	movlw	(01Ah)
	fcall	_tran
	line	203
	
l3694:	
;industrial_automation.c: 203: new();
	fcall	_new
	line	204
	
l3696:	
;industrial_automation.c: 204: delay(10000);
	movlw	low(02710h)
	movwf	(?_delay)
	movlw	high(02710h)
	movwf	((?_delay))+1
	fcall	_delay
	line	205
	
l3698:	
;industrial_automation.c: 205: flag2=1;
	movlw	low(01h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(_flag2)^080h
	movlw	high(01h)
	movwf	((_flag2)^080h)+1
	goto	l1182
	line	206
	
l1178:	
	line	207
	
l1182:	
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
;;		line 81 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
;; Parameters:    Size  Location     Type
;;  p               2    7[COMMON] PTR unsigned char 
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	81
	global	__size_of_string
	__size_of_string	equ	__end_of_string-_string
	
_string:	
	opt	stack 3
; Regs used in _string: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	82
	
l3652:	
;industrial_automation.c: 82: while(*p)
	goto	l3658
	
l1137:	
	line	84
	
l3654:	
;industrial_automation.c: 83: {
;industrial_automation.c: 84: lcd_cmd(1,0,*p++);
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
	
l3656:	
	movlw	low(01h)
	addwf	(string@p),f
	skipnc
	incf	(string@p+1),f
	movlw	high(01h)
	addwf	(string@p+1),f
	goto	l3658
	line	85
	
l1136:	
	line	82
	
l3658:	
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
	goto	l3654
u3850:
	goto	l1139
	
l1138:	
	line	86
	
l1139:	
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
;;		line 171 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	171
	global	__size_of_new
	__size_of_new	equ	__end_of_new-_new
	
_new:	
	opt	stack 4
; Regs used in _new: [wreg+status,2+status,0+pclath+cstack]
	line	172
	
l3650:	
;industrial_automation.c: 172: tran(0X0D);
	movlw	(0Dh)
	fcall	_tran
	line	173
;industrial_automation.c: 173: tran(0X0A);
	movlw	(0Ah)
	fcall	_tran
	line	174
	
l1175:	
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
;;		line 17 in file "D:\Embedded\pic\code\Industrial_automation\lcd.h"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
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
	file	"D:\Embedded\pic\code\Industrial_automation\lcd.h"
	line	17
	global	__size_of_lcd_cmd
	__size_of_lcd_cmd	equ	__end_of_lcd_cmd-_lcd_cmd
	
_lcd_cmd:	
	opt	stack 3
; Regs used in _lcd_cmd: [wreg+status,2+status,0+pclath+cstack]
	line	18
	
l3644:	
;lcd.h: 18: RE0=a;
	btfsc	(lcd_cmd@a),0
	goto	u3811
	goto	u3810
	
u3811:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(72/8),(72)&7
	goto	u3824
u3810:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(72/8),(72)&7
u3824:
	line	19
;lcd.h: 19: RE1=b;
	btfsc	(lcd_cmd@b),0
	goto	u3831
	goto	u3830
	
u3831:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(73/8),(73)&7
	goto	u3844
u3830:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(73/8),(73)&7
u3844:
	line	20
	
l3646:	
;lcd.h: 20: PORTD=c;
	movf	(lcd_cmd@c),w
	movwf	(8)	;volatile
	line	21
	
l3648:	
;lcd.h: 21: pulse();
	fcall	_pulse
	line	22
	
l1104:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         3       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         6       0       0       0       0
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
	
l3636:	
	clrf	(___awtoft@sign)
	line	37
	btfss	(___awtoft@c+1),7
	goto	u3801
	goto	u3800
u3801:
	goto	l3640
u3800:
	line	38
	
l3638:	
	comf	(___awtoft@c),f
	comf	(___awtoft@c+1),f
	incf	(___awtoft@c),f
	skipnz
	incf	(___awtoft@c+1),f
	line	39
	clrf	(___awtoft@sign)
	bsf	status,0
	rlf	(___awtoft@sign),f
	goto	l3640
	line	40
	
l1392:	
	line	41
	
l3640:	
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
	goto	l1393
	
l3642:	
	line	42
	
l1393:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       6       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0      16       0       0       0
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
	
l3586:	
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
	goto	u3661
	goto	u3660
u3661:
	goto	l3592
u3660:
	line	57
	
l3588:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1355
	
l3590:	
	goto	l1355
	
l1354:	
	line	58
	
l3592:	
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
	goto	u3671
	goto	u3670
u3671:
	goto	l3598
u3670:
	line	59
	
l3594:	
	movlw	0x0
	movwf	(?___ftmul)
	movlw	0x0
	movwf	(?___ftmul+1)
	movlw	0x0
	movwf	(?___ftmul+2)
	goto	l1355
	
l3596:	
	goto	l1355
	
l1356:	
	line	60
	
l3598:	
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
	movwf	(___ftmul@sign)
	line	62
	movf	(___ftmul@f2),w
	movwf	((??___ftmul+0)+0)
	movf	(___ftmul@f2+1),w
	movwf	((??___ftmul+0)+0+1)
	movf	(___ftmul@f2+2),w
	movwf	((??___ftmul+0)+0+2)
	movlw	010h
u3695:
	clrc
	rrf	(??___ftmul+0)+2,f
	rrf	(??___ftmul+0)+1,f
	rrf	(??___ftmul+0)+0,f
u3690:
	addlw	-1
	skipz
	goto	u3695
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
	
l3600:	
	bsf	(___ftmul@f1)+(15/8),(15)&7
	line	66
	
l3602:	
	bsf	(___ftmul@f2)+(15/8),(15)&7
	line	67
	
l3604:	
	movlw	0FFh
	andwf	(___ftmul@f2),f
	movlw	0FFh
	andwf	(___ftmul@f2+1),f
	movlw	0
	andwf	(___ftmul@f2+2),f
	line	68
	
l3606:	
	movlw	0
	movwf	(___ftmul@f3_as_product)
	movlw	0
	movwf	(___ftmul@f3_as_product+1)
	movlw	0
	movwf	(___ftmul@f3_as_product+2)
	line	69
	
l3608:	
	movlw	(07h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3610
	line	70
	
l1357:	
	line	71
	
l3610:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3701
	goto	u3700
u3701:
	goto	l3614
u3700:
	line	72
	
l3612:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3711
	addwf	(___ftmul@f3_as_product+1),f
u3711:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3712
	addwf	(___ftmul@f3_as_product+2),f
u3712:

	goto	l3614
	
l1358:	
	line	73
	
l3614:	
	movlw	01h
u3725:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3725

	line	74
	
l3616:	
	movlw	01h
u3735:
	clrc
	rlf	(___ftmul@f2),f
	rlf	(___ftmul@f2+1),f
	rlf	(___ftmul@f2+2),f
	addlw	-1
	skipz
	goto	u3735
	line	75
	
l3618:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3741
	goto	u3740
u3741:
	goto	l3610
u3740:
	goto	l3620
	
l1359:	
	line	76
	
l3620:	
	movlw	(09h)
	movwf	(??___ftmul+0)+0
	movf	(??___ftmul+0)+0,w
	movwf	(___ftmul@cntr)
	goto	l3622
	line	77
	
l1360:	
	line	78
	
l3622:	
	btfss	(___ftmul@f1),(0)&7
	goto	u3751
	goto	u3750
u3751:
	goto	l3626
u3750:
	line	79
	
l3624:	
	movf	(___ftmul@f2),w
	addwf	(___ftmul@f3_as_product),f
	movf	(___ftmul@f2+1),w
	clrz
	skipnc
	incf	(___ftmul@f2+1),w
	skipnz
	goto	u3761
	addwf	(___ftmul@f3_as_product+1),f
u3761:
	movf	(___ftmul@f2+2),w
	clrz
	skipnc
	incf	(___ftmul@f2+2),w
	skipnz
	goto	u3762
	addwf	(___ftmul@f3_as_product+2),f
u3762:

	goto	l3626
	
l1361:	
	line	80
	
l3626:	
	movlw	01h
u3775:
	clrc
	rrf	(___ftmul@f1+2),f
	rrf	(___ftmul@f1+1),f
	rrf	(___ftmul@f1),f
	addlw	-1
	skipz
	goto	u3775

	line	81
	
l3628:	
	movlw	01h
u3785:
	clrc
	rrf	(___ftmul@f3_as_product+2),f
	rrf	(___ftmul@f3_as_product+1),f
	rrf	(___ftmul@f3_as_product),f
	addlw	-1
	skipz
	goto	u3785

	line	82
	
l3630:	
	movlw	low(01h)
	subwf	(___ftmul@cntr),f
	btfss	status,2
	goto	u3791
	goto	u3790
u3791:
	goto	l3622
u3790:
	goto	l3632
	
l1362:	
	line	83
	
l3632:	
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
	goto	l1355
	
l3634:	
	line	84
	
l1355:	
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
;;		line 164 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	164
	global	__size_of_tran
	__size_of_tran	equ	__end_of_tran-_tran
	
_tran:	
	opt	stack 5
; Regs used in _tran: [wreg+status,2+status,0+pclath+cstack]
;tran@data2 stored from wreg
	movwf	(tran@data2)
	line	165
	
l3582:	
;industrial_automation.c: 165: TXREG=data2;
	movf	(tran@data2),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(25)	;volatile
	line	166
;industrial_automation.c: 166: while(TXIF==0);
	goto	l1169
	
l1170:	
	
l1169:	
	btfss	(100/8),(100)&7
	goto	u3651
	goto	u3650
u3651:
	goto	l1169
u3650:
	
l1171:	
	line	167
;industrial_automation.c: 167: TXIF=0;
	bcf	(100/8),(100)&7
	line	168
	
l3584:	
;industrial_automation.c: 168: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	line	169
	
l1172:	
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
;;		line 154 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	154
	global	__size_of_trans
	__size_of_trans	equ	__end_of_trans-_trans
	
_trans:	
	opt	stack 5
; Regs used in _trans: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	155
	
l3572:	
;industrial_automation.c: 155: while(*data1)
	goto	l3580
	
l1161:	
	line	157
	
l3574:	
;industrial_automation.c: 156: {
;industrial_automation.c: 157: TXREG=*data1++;
	movf	(trans@data1+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(trans@data1),w
	movwf	fsr0
	fcall	stringtab
	movwf	(25)	;volatile
	
l3576:	
	movlw	low(01h)
	addwf	(trans@data1),f
	skipnc
	incf	(trans@data1+1),f
	movlw	high(01h)
	addwf	(trans@data1+1),f
	line	158
;industrial_automation.c: 158: while(TXIF==0);
	goto	l1162
	
l1163:	
	
l1162:	
	btfss	(100/8),(100)&7
	goto	u3631
	goto	u3630
u3631:
	goto	l1162
u3630:
	
l1164:	
	line	159
;industrial_automation.c: 159: TXIF=0;
	bcf	(100/8),(100)&7
	line	160
	
l3578:	
;industrial_automation.c: 160: delay(1000);
	movlw	low(03E8h)
	movwf	(?_delay)
	movlw	high(03E8h)
	movwf	((?_delay))+1
	fcall	_delay
	goto	l3580
	line	161
	
l1160:	
	line	155
	
l3580:	
	movf	(trans@data1+1),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	btemp+1
	movf	(trans@data1),w
	movwf	fsr0
	fcall	stringtab
	iorlw	0
	skipz
	goto	u3641
	goto	u3640
u3641:
	goto	l3574
u3640:
	goto	l1166
	
l1165:	
	line	162
	
l1166:	
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
;;		line 106 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	106
	global	__size_of_Gate_Siren
	__size_of_Gate_Siren	equ	__end_of_Gate_Siren-_Gate_Siren
	
_Gate_Siren:	
	opt	stack 6
; Regs used in _Gate_Siren: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Gate_Siren@read1 stored from wreg
	line	108
	movwf	(Gate_Siren@read1)
	
l3550:	
;industrial_automation.c: 108: if((read1[2]==0X10&&read1[1]==0X00&&read1[0]==0X00)||(read1[2]==0X01&&read1[1]==0X00&&read1[0]==0X00)||(read1[2]==0X05&&read1[1]==0X00&&read1[0]==0X00))
	movf	(Gate_Siren@read1),w
	addlw	02h
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	xorlw	010h
	skipz
	goto	u3541
	goto	u3540
u3541:
	goto	l3556
u3540:
	
l3552:	
	movf	(Gate_Siren@read1),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3551
	goto	u3550
u3551:
	goto	l3556
u3550:
	
l3554:	
	movf	(Gate_Siren@read1),w
	movwf	fsr0
	movf	indf
	skipnz
	goto	u3561
	goto	u3560
u3561:
	goto	l1147
u3560:
	goto	l3556
	
l1149:	
	
l3556:	
	movf	(Gate_Siren@read1),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	xorlw	01h
	skipz
	goto	u3571
	goto	u3570
u3571:
	goto	l3562
u3570:
	
l3558:	
	movf	(Gate_Siren@read1),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3581
	goto	u3580
u3581:
	goto	l3562
u3580:
	
l3560:	
	movf	(Gate_Siren@read1),w
	movwf	fsr0
	movf	indf
	skipnz
	goto	u3591
	goto	u3590
u3591:
	goto	l1147
u3590:
	goto	l3562
	
l1151:	
	
l3562:	
	movf	(Gate_Siren@read1),w
	addlw	02h
	movwf	fsr0
	movf	indf,w
	xorlw	05h
	skipz
	goto	u3601
	goto	u3600
u3601:
	goto	l1152
u3600:
	
l3564:	
	movf	(Gate_Siren@read1),w
	addlw	01h
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3611
	goto	u3610
u3611:
	goto	l1152
u3610:
	
l3566:	
	movf	(Gate_Siren@read1),w
	movwf	fsr0
	movf	indf,f
	skipz
	goto	u3621
	goto	u3620
u3621:
	goto	l1152
u3620:
	
l1147:	
	line	110
;industrial_automation.c: 109: {
;industrial_automation.c: 110: RC1=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	111
	
l3568:	
;industrial_automation.c: 111: delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
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
	line	112
	
l3570:	
;industrial_automation.c: 112: RC1=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	goto	l1152
	line	113
	
l1145:	
	line	114
	
l1152:	
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
;;		line 58 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	58
	global	__size_of_I2C_Restart
	__size_of_I2C_Restart	equ	__end_of_I2C_Restart-_I2C_Restart
	
_I2C_Restart:	
	opt	stack 6
; Regs used in _I2C_Restart: [status,2+status,0+pclath+cstack]
	line	59
	
l3546:	
;industrial_automation.c: 59: RSEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1161/8)^080h,(1161)&7
	line	60
	
l3548:	
;industrial_automation.c: 60: hold();
	fcall	_hold
	line	61
	
l1125:	
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
;;		line 51 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	51
	global	__size_of_I2C_Slave
	__size_of_I2C_Slave	equ	__end_of_I2C_Slave-_I2C_Slave
	
_I2C_Slave:	
	opt	stack 6
; Regs used in _I2C_Slave: [wreg+status,2+status,0+pclath+cstack]
;I2C_Slave@data stored from wreg
	movwf	(I2C_Slave@data)
	line	52
	
l3540:	
;industrial_automation.c: 52: ACKSTAT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1166/8)^080h,(1166)&7
	line	53
	
l3542:	
;industrial_automation.c: 53: SSPBUF=data;
	movf	(I2C_Slave@data),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(19)	;volatile
	line	54
;industrial_automation.c: 54: while(ACKSTAT==1);
	goto	l1119
	
l1120:	
	
l1119:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfsc	(1166/8)^080h,(1166)&7
	goto	u3531
	goto	u3530
u3531:
	goto	l1119
u3530:
	goto	l3544
	
l1121:	
	line	55
	
l3544:	
;industrial_automation.c: 55: hold();
	fcall	_hold
	line	56
	
l1122:	
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
;;		line 46 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	46
	global	__size_of_I2C_Stop
	__size_of_I2C_Stop	equ	__end_of_I2C_Stop-_I2C_Stop
	
_I2C_Stop:	
	opt	stack 6
; Regs used in _I2C_Stop: [status,2+status,0+pclath+cstack]
	line	47
	
l3536:	
;industrial_automation.c: 47: PEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1162/8)^080h,(1162)&7
	line	48
	
l3538:	
;industrial_automation.c: 48: hold();
	fcall	_hold
	line	49
	
l1116:	
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
;;		line 41 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	41
	global	__size_of_I2C_Start
	__size_of_I2C_Start	equ	__end_of_I2C_Start-_I2C_Start
	
_I2C_Start:	
	opt	stack 6
; Regs used in _I2C_Start: [status,2+status,0+pclath+cstack]
	line	42
	
l3532:	
;industrial_automation.c: 42: SEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1160/8)^080h,(1160)&7
	line	43
	
l3534:	
;industrial_automation.c: 43: hold();
	fcall	_hold
	line	44
	
l1113:	
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
;;		line 10 in file "D:\Embedded\pic\code\Industrial_automation\lcd.h"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
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
	file	"D:\Embedded\pic\code\Industrial_automation\lcd.h"
	line	10
	global	__size_of_pulse
	__size_of_pulse	equ	__end_of_pulse-_pulse
	
_pulse:	
	opt	stack 3
; Regs used in _pulse: [wreg+status,2+status,0+pclath+cstack]
	line	11
	
l3526:	
;lcd.h: 11: RE2=1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(74/8),(74)&7
	line	12
	
l3528:	
;lcd.h: 12: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	13
	
l3530:	
;lcd.h: 13: RE2=0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(74/8),(74)&7
	line	14
;lcd.h: 14: delay(10);
	movlw	low(0Ah)
	movwf	(?_delay)
	movlw	high(0Ah)
	movwf	((?_delay))+1
	fcall	_delay
	line	15
	
l1101:	
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
;;		_Generator_run
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
	
l3446:	
	clrf	(___awmod@sign)
	line	9
	btfss	(___awmod@dividend+1),7
	goto	u3381
	goto	u3380
u3381:
	goto	l3450
u3380:
	line	10
	
l3448:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	11
	clrf	(___awmod@sign)
	bsf	status,0
	rlf	(___awmod@sign),f
	goto	l3450
	line	12
	
l1464:	
	line	13
	
l3450:	
	btfss	(___awmod@divisor+1),7
	goto	u3391
	goto	u3390
u3391:
	goto	l3454
u3390:
	line	14
	
l3452:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l3454
	
l1465:	
	line	15
	
l3454:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u3401
	goto	u3400
u3401:
	goto	l3472
u3400:
	line	16
	
l3456:	
	clrf	(___awmod@counter)
	bsf	status,0
	rlf	(___awmod@counter),f
	line	17
	goto	l3462
	
l1468:	
	line	18
	
l3458:	
	movlw	01h
	
u3415:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u3415
	line	19
	
l3460:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l3462
	line	20
	
l1467:	
	line	17
	
l3462:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u3421
	goto	u3420
u3421:
	goto	l3458
u3420:
	goto	l3464
	
l1469:	
	goto	l3464
	line	21
	
l1470:	
	line	22
	
l3464:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u3435
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u3435:
	skipc
	goto	u3431
	goto	u3430
u3431:
	goto	l3468
u3430:
	line	23
	
l3466:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l3468
	
l1471:	
	line	24
	
l3468:	
	movlw	01h
	
u3445:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u3445
	line	25
	
l3470:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u3451
	goto	u3450
u3451:
	goto	l3464
u3450:
	goto	l3472
	
l1472:	
	goto	l3472
	line	26
	
l1466:	
	line	27
	
l3472:	
	movf	(___awmod@sign),w
	skipz
	goto	u3460
	goto	l3476
u3460:
	line	28
	
l3474:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l3476
	
l1473:	
	line	29
	
l3476:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l1474
	
l3478:	
	line	30
	
l1474:	
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
;;		_Generator_run
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
	
l3406:	
	clrf	(___awdiv@sign)
	line	10
	btfss	(___awdiv@divisor+1),7
	goto	u3281
	goto	u3280
u3281:
	goto	l3410
u3280:
	line	11
	
l3408:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	12
	clrf	(___awdiv@sign)
	bsf	status,0
	rlf	(___awdiv@sign),f
	goto	l3410
	line	13
	
l1396:	
	line	14
	
l3410:	
	btfss	(___awdiv@dividend+1),7
	goto	u3291
	goto	u3290
u3291:
	goto	l3416
u3290:
	line	15
	
l3412:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	16
	
l3414:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l3416
	line	17
	
l1397:	
	line	18
	
l3416:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	19
	
l3418:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u3301
	goto	u3300
u3301:
	goto	l3438
u3300:
	line	20
	
l3420:	
	clrf	(___awdiv@counter)
	bsf	status,0
	rlf	(___awdiv@counter),f
	line	21
	goto	l3426
	
l1400:	
	line	22
	
l3422:	
	movlw	01h
	
u3315:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u3315
	line	23
	
l3424:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l3426
	line	24
	
l1399:	
	line	21
	
l3426:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u3321
	goto	u3320
u3321:
	goto	l3422
u3320:
	goto	l3428
	
l1401:	
	goto	l3428
	line	25
	
l1402:	
	line	26
	
l3428:	
	movlw	01h
	
u3335:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u3335
	line	27
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u3345
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u3345:
	skipc
	goto	u3341
	goto	u3340
u3341:
	goto	l3434
u3340:
	line	28
	
l3430:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	29
	
l3432:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l3434
	line	30
	
l1403:	
	line	31
	
l3434:	
	movlw	01h
	
u3355:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u3355
	line	32
	
l3436:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u3361
	goto	u3360
u3361:
	goto	l3428
u3360:
	goto	l3438
	
l1404:	
	goto	l3438
	line	33
	
l1398:	
	line	34
	
l3438:	
	movf	(___awdiv@sign),w
	skipz
	goto	u3370
	goto	l3442
u3370:
	line	35
	
l3440:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l3442
	
l1405:	
	line	36
	
l3442:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l1406
	
l3444:	
	line	37
	
l1406:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       6       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         4      10       0       0       0
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
	
l3350:	
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
	goto	u3171
	goto	u3170
u3171:
	goto	l3356
u3170:
	line	50
	
l3352:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1366
	
l3354:	
	goto	l1366
	
l1365:	
	line	51
	
l3356:	
	movf	(___fttol@f1),w
	movwf	((??___fttol+0)+0)
	movf	(___fttol@f1+1),w
	movwf	((??___fttol+0)+0+1)
	movf	(___fttol@f1+2),w
	movwf	((??___fttol+0)+0+2)
	movlw	017h
u3185:
	clrc
	rrf	(??___fttol+0)+2,f
	rrf	(??___fttol+0)+1,f
	rrf	(??___fttol+0)+0,f
u3180:
	addlw	-1
	skipz
	goto	u3185
	movf	0+(??___fttol+0)+0,w
	movwf	(??___fttol+3)+0
	movf	(??___fttol+3)+0,w
	movwf	(___fttol@sign1)
	line	52
	
l3358:	
	bsf	(___fttol@f1)+(15/8),(15)&7
	line	53
	
l3360:	
	movlw	0FFh
	andwf	(___fttol@f1),f
	movlw	0FFh
	andwf	(___fttol@f1+1),f
	movlw	0
	andwf	(___fttol@f1+2),f
	line	54
	
l3362:	
	movf	(___fttol@f1),w
	movwf	(___fttol@lval)
	movf	(___fttol@f1+1),w
	movwf	((___fttol@lval))+1
	movf	(___fttol@f1+2),w
	movwf	((___fttol@lval))+2
	clrf	((___fttol@lval))+3
	line	55
	
l3364:	
	movlw	low(08Eh)
	subwf	(___fttol@exp1),f
	line	56
	
l3366:	
	btfss	(___fttol@exp1),7
	goto	u3191
	goto	u3190
u3191:
	goto	l3376
u3190:
	line	57
	
l3368:	
	movf	(___fttol@exp1),w
	xorlw	80h
	addlw	-((-15)^80h)
	skipnc
	goto	u3201
	goto	u3200
u3201:
	goto	l3374
u3200:
	line	58
	
l3370:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1366
	
l3372:	
	goto	l1366
	
l1368:	
	goto	l3374
	line	59
	
l1369:	
	line	60
	
l3374:	
	movlw	01h
u3215:
	clrc
	rrf	(___fttol@lval+3),f
	rrf	(___fttol@lval+2),f
	rrf	(___fttol@lval+1),f
	rrf	(___fttol@lval),f
	addlw	-1
	skipz
	goto	u3215

	line	61
	movlw	(01h)
	movwf	(??___fttol+0)+0
	movf	(??___fttol+0)+0,w
	addwf	(___fttol@exp1),f
	btfss	status,2
	goto	u3221
	goto	u3220
u3221:
	goto	l3374
u3220:
	goto	l3386
	
l1370:	
	line	62
	goto	l3386
	
l1367:	
	line	63
	
l3376:	
	movlw	(018h)
	subwf	(___fttol@exp1),w
	skipc
	goto	u3231
	goto	u3230
u3231:
	goto	l3384
u3230:
	line	64
	
l3378:	
	movlw	0
	movwf	(?___fttol+3)
	movlw	0
	movwf	(?___fttol+2)
	movlw	0
	movwf	(?___fttol+1)
	movlw	0
	movwf	(?___fttol)

	goto	l1366
	
l3380:	
	goto	l1366
	
l1372:	
	line	65
	goto	l3384
	
l1374:	
	line	66
	
l3382:	
	movlw	01h
	movwf	(??___fttol+0)+0
u3245:
	clrc
	rlf	(___fttol@lval),f
	rlf	(___fttol@lval+1),f
	rlf	(___fttol@lval+2),f
	rlf	(___fttol@lval+3),f
	decfsz	(??___fttol+0)+0
	goto	u3245
	line	67
	movlw	low(01h)
	subwf	(___fttol@exp1),f
	goto	l3384
	line	68
	
l1373:	
	line	65
	
l3384:	
	movf	(___fttol@exp1),f
	skipz
	goto	u3251
	goto	u3250
u3251:
	goto	l3382
u3250:
	goto	l3386
	
l1375:	
	goto	l3386
	line	69
	
l1371:	
	line	70
	
l3386:	
	movf	(___fttol@sign1),w
	skipz
	goto	u3260
	goto	l3390
u3260:
	line	71
	
l3388:	
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
	goto	l3390
	
l1376:	
	line	72
	
l3390:	
	movf	(___fttol@lval+3),w
	movwf	(?___fttol+3)
	movf	(___fttol@lval+2),w
	movwf	(?___fttol+2)
	movf	(___fttol@lval+1),w
	movwf	(?___fttol+1)
	movf	(___fttol@lval),w
	movwf	(?___fttol)

	goto	l1366
	
l3392:	
	line	73
	
l1366:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         5       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         8       0       0       0       0
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
	
l3276:	
	movf	(___ftpack@exp),w
	skipz
	goto	u2980
	goto	l3280
u2980:
	
l3278:	
	movf	(___ftpack@arg+2),w
	iorwf	(___ftpack@arg+1),w
	iorwf	(___ftpack@arg),w
	skipz
	goto	u2991
	goto	u2990
u2991:
	goto	l3286
u2990:
	goto	l3280
	
l1590:	
	line	65
	
l3280:	
	movlw	0x0
	movwf	(?___ftpack)
	movlw	0x0
	movwf	(?___ftpack+1)
	movlw	0x0
	movwf	(?___ftpack+2)
	goto	l1591
	
l3282:	
	goto	l1591
	
l1588:	
	line	66
	goto	l3286
	
l1593:	
	line	67
	
l3284:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	68
	movlw	01h
u3005:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3005

	goto	l3286
	line	69
	
l1592:	
	line	66
	
l3286:	
	movlw	low highword(0FE0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3011
	goto	u3010
u3011:
	goto	l3284
u3010:
	goto	l1595
	
l1594:	
	line	70
	goto	l1595
	
l1596:	
	line	71
	
l3288:	
	movlw	(01h)
	movwf	(??___ftpack+0)+0
	movf	(??___ftpack+0)+0,w
	addwf	(___ftpack@exp),f
	line	72
	
l3290:	
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
	
l3292:	
	movlw	01h
u3025:
	clrc
	rrf	(___ftpack@arg+2),f
	rrf	(___ftpack@arg+1),f
	rrf	(___ftpack@arg),f
	addlw	-1
	skipz
	goto	u3025

	line	74
	
l1595:	
	line	70
	movlw	low highword(0FF0000h)
	andwf	(___ftpack@arg+2),w
	btfss	status,2
	goto	u3031
	goto	u3030
u3031:
	goto	l3288
u3030:
	goto	l3296
	
l1597:	
	line	75
	goto	l3296
	
l1599:	
	line	76
	
l3294:	
	movlw	low(01h)
	subwf	(___ftpack@exp),f
	line	77
	movlw	01h
u3045:
	clrc
	rlf	(___ftpack@arg),f
	rlf	(___ftpack@arg+1),f
	rlf	(___ftpack@arg+2),f
	addlw	-1
	skipz
	goto	u3045
	goto	l3296
	line	78
	
l1598:	
	line	75
	
l3296:	
	btfss	(___ftpack@arg+1),(15)&7
	goto	u3051
	goto	u3050
u3051:
	goto	l3294
u3050:
	
l1600:	
	line	79
	btfsc	(___ftpack@exp),(0)&7
	goto	u3061
	goto	u3060
u3061:
	goto	l1601
u3060:
	line	80
	
l3298:	
	movlw	0FFh
	andwf	(___ftpack@arg),f
	movlw	07Fh
	andwf	(___ftpack@arg+1),f
	movlw	0FFh
	andwf	(___ftpack@arg+2),f
	
l1601:	
	line	81
	clrc
	rrf	(___ftpack@exp),f

	line	82
	
l3300:	
	movf	(___ftpack@exp),w
	movwf	((??___ftpack+0)+0)
	clrf	((??___ftpack+0)+0+1)
	clrf	((??___ftpack+0)+0+2)
	movlw	010h
u3075:
	clrc
	rlf	(??___ftpack+0)+0,f
	rlf	(??___ftpack+0)+1,f
	rlf	(??___ftpack+0)+2,f
u3070:
	addlw	-1
	skipz
	goto	u3075
	movf	0+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg),f
	movf	1+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+1),f
	movf	2+(??___ftpack+0)+0,w
	iorwf	(___ftpack@arg+2),f
	line	83
	
l3302:	
	movf	(___ftpack@sign),w
	skipz
	goto	u3080
	goto	l1602
u3080:
	line	84
	
l3304:	
	bsf	(___ftpack@arg)+(23/8),(23)&7
	
l1602:	
	line	85
	line	86
	
l1591:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
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
	
l1219:	
	line	10
# 10 "C:\Program Files\HI-TECH Software\PICC\9.81\sources\eeread.c"
clrwdt ;#
psect	text620
	line	11
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u2731
	goto	u2730
u2731:
	goto	l1219
u2730:
	goto	l3202
	
l1220:	
	line	12
	
l3202:	
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
	goto	l1221
	
l3204:	
	line	13
	
l1221:	
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
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
	
l1240:	
	goto	l1241
	
l1242:	
	
l1241:	
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	btfsc	(3169/8)^0180h,(3169)&7
	goto	u2701
	goto	u2700
u2701:
	goto	l1241
u2700:
	goto	l3182
	
l1243:	
	
l3182:	
	movf	(eeprom_write@addr),w
	bcf	status, 5	;RP0=0, select bank2
	bsf	status, 6	;RP1=1, select bank2
	movwf	(269)^0100h	;volatile
	movf	(eeprom_write@value),w
	movwf	(268)^0100h	;volatile
	
l3184:	
	movlw	(03Fh)
	movwf	(??_eeprom_write+0)+0
	movf	(??_eeprom_write+0)+0,w
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	andwf	(396)^0180h,f	;volatile
	
l3186:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(24/8),(24)&7
	
l3188:	
	btfss	(95/8),(95)&7
	goto	u2711
	goto	u2710
u2711:
	goto	l1244
u2710:
	
l3190:	
	bsf	(24/8),(24)&7
	
l1244:	
	bcf	(95/8),(95)&7
	bsf	status, 5	;RP0=1, select bank3
	bsf	status, 6	;RP1=1, select bank3
	bsf	(3170/8)^0180h,(3170)&7
	
l3192:	
	movlw	(055h)
	movwf	(397)^0180h	;volatile
	movlw	(0AAh)
	movwf	(397)^0180h	;volatile
	
l3194:	
	bsf	(3169/8)^0180h,(3169)&7
	
l3196:	
	bcf	(3170/8)^0180h,(3170)&7
	
l3198:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(24/8),(24)&7
	goto	u2721
	goto	u2720
u2721:
	goto	l1247
u2720:
	
l3200:	
	bsf	(95/8),(95)&7
	goto	l1247
	
l1245:	
	goto	l1247
	
l1246:	
	line	10
	
l1247:	
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
;;		line 63 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text622
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	63
	global	__size_of_I2C_Read
	__size_of_I2C_Read	equ	__end_of_I2C_Read-_I2C_Read
	
_I2C_Read:	
	opt	stack 7
; Regs used in _I2C_Read: [wreg]
	line	65
	
l3168:	
;industrial_automation.c: 64: unsigned char read1;
;industrial_automation.c: 65: if(i==2)
	movlw	02h
	xorwf	(I2C_Read@i),w
	iorwf	(I2C_Read@i+1),w
	skipz
	goto	u2681
	goto	u2680
u2681:
	goto	l1128
u2680:
	line	67
	
l3170:	
;industrial_automation.c: 66: {
;industrial_automation.c: 67: ACKDT=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1165/8)^080h,(1165)&7
	line	68
;industrial_automation.c: 68: }
	goto	l1130
	line	69
	
l1128:	
	line	71
;industrial_automation.c: 69: else
;industrial_automation.c: 70: {
;industrial_automation.c: 71: ACKDT=0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1165/8)^080h,(1165)&7
	goto	l1130
	line	72
	
l1129:	
	line	73
;industrial_automation.c: 72: }
;industrial_automation.c: 73: while(BF==0);
	goto	l1130
	
l1131:	
	
l1130:	
	btfss	(1184/8)^080h,(1184)&7
	goto	u2691
	goto	u2690
u2691:
	goto	l1130
u2690:
	goto	l3172
	
l1132:	
	line	74
	
l3172:	
;industrial_automation.c: 74: read1=SSPBUF;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(19),w	;volatile
	movwf	(??_I2C_Read+0)+0
	movf	(??_I2C_Read+0)+0,w
	movwf	(I2C_Read@read1)
	line	75
	
l3174:	
;industrial_automation.c: 75: SSPOV=0;
	bcf	(166/8),(166)&7
	line	76
	
l3176:	
;industrial_automation.c: 76: ACKEN=1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1164/8)^080h,(1164)&7
	line	77
	
l3178:	
;industrial_automation.c: 77: BF=0;
	bcf	(1184/8)^080h,(1184)&7
	line	78
;industrial_automation.c: 78: return read1;
	movf	(I2C_Read@read1),w
	goto	l1133
	
l3180:	
	line	79
	
l1133:	
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
;;		line 36 in file "D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
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
;;		_I2C_Start
;;		_I2C_Stop
;;		_I2C_Slave
;;		_I2C_Restart
;; This function uses a non-reentrant model
;;
psect	text623
	file	"D:\Embedded\pic\code\Industrial_automation\industrial_automation.c"
	line	36
	global	__size_of_hold
	__size_of_hold	equ	__end_of_hold-_hold
	
_hold:	
	opt	stack 6
; Regs used in _hold: []
	line	37
	
l3166:	
;industrial_automation.c: 37: while(SSPIF==0);
	goto	l1107
	
l1108:	
	
l1107:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(99/8),(99)&7
	goto	u2671
	goto	u2670
u2671:
	goto	l1107
u2670:
	
l1109:	
	line	38
;industrial_automation.c: 38: SSPIF=0;
	bcf	(99/8),(99)&7
	line	39
	
l1110:	
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
;;		line 6 in file "D:\Embedded\pic\code\Industrial_automation\lcd.h"
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
	file	"D:\Embedded\pic\code\Industrial_automation\lcd.h"
	line	6
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
	opt	stack 5
; Regs used in _delay: [wreg]
	line	7
	
l3162:	
;lcd.h: 7: while(ms--);
	goto	l3164
	
l1096:	
	goto	l3164
	
l1095:	
	
l3164:	
	movlw	low(01h)
	subwf	(delay@ms),f
	movlw	high(01h)
	skipc
	decf	(delay@ms+1),f
	subwf	(delay@ms+1),f
	movlw	high(0FFFFh)
	xorwf	((delay@ms+1)),w
	skipz
	goto	u2665
	movlw	low(0FFFFh)
	xorwf	((delay@ms)),w
u2665:

	skipz
	goto	u2661
	goto	u2660
u2661:
	goto	l3164
u2660:
	goto	l1098
	
l1097:	
	line	8
	
l1098:	
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
