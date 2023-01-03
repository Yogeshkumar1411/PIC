/*Name: Yogesh
Date: 4-6-2022
Concept: UART_ADC*/
#include<pic.h>
#include"lcd.h"
int low,high,DV;
void tx1(char a)
{
	

	TXREG=a;
	while(TXIF==0);
	TXIF=0;
}
void tx(int a)
{
	

	TXREG=a;
	while(TXIF==0);
	TXIF=0;
}
void adc()
{	char g=13;
	int a,b,c,d,e,f;
	ADCON0=0X87;
	ADCON1=0X80;
	low=ADRESL;
	high=ADRESH;
	DV=low+(high*256);
	
	a=DV/1000;
	b=DV%1000;
	c=b/100;
	d=c%100;
	e=d/10;
	f=d%10;
	tx(a+0X30);
	tx(c+0X30);
	tx(e+0X30);
	tx(f+0X30);
	tx1(g);
}



void main()
{
	PORTC=0X00;
	TRISC=0X00;
	PORTE=0X00;
	TRISE=0X00;
	PORTA=0X00;
	TRISA=0X02;
	PORTD=0X00;
	TRISD=0X00;
	TXSTA=0X26;
	RCSTA=0X90;
	ANSEL=0X02;
	ANSELH=0X00;
	SPBRG=25;
	while(1)
	{		
		adc();
	}
}