/*Name: Yogesh
Date: 17-07-2022
Concept: Interfacing current sensor*/
#include<pic.h>
#define RS RB5
#define RW RB6
#define EN RB7
#define LCD PORTC
void adc()
{
	int high,low,dv,a,b,c,d,e,f;
	ADCON0=0X83;
	ADCON1=0X80;
	high=ADRESH;
	low=ADRESL;
	dv=low+(high*256);
	a=
}
void main()
{
	PORTA=0X00;
	TRISA=0X01;
	PORTC=0X00;
	TRISC=0X00;
	PORTB=0X00;
	TRISB=0X00;
	ANSEL=0X01;
	ANSELH=0X00;
	while(1)
	{
		adc();
	}
}