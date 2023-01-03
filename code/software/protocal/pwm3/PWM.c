/*Name: Yogesh
Date: 22/6/22
Concept: PWM_CCP1*/
#include<pic.h>
int high,low,DV;
void delay(unsigned int ms)
{
	while(ms--);
}
void adc(char a,char b)
{
	ADCON0=a;
	ADCON1=0X80;
	low=ADRESL;
	high=ADRESH;
	DV=low+(high*256);
	CCP1CON=b;
	CCPR1L=DV>>2;
	CCP1CON|=(DV&0X30)<<4;
	delay(100);
}
void main()
{
	TRISA=0X03;
	PORTA=0X00;
	TRISC=0X00;
	PORTC=0X00;
	TRISD=0X00;
	PORTD=0X00;
	ANSEL=0X03;
	ANSELH=0X00;
	T2CON=0X07;
	while(1)
	{
		adc(0X83,0XCE);
		adc(0X87,0X4E);
	}
}