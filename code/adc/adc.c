/*Name: Yogesh
Date: 7.6.2022
Concept: Adc*/
#include<pic.h>
#include"lcd.h"
int high,low;
int a,b,c,d,e,f,DV,DV1,DV2;
void adc()
{
	ADCON0=0XA3;
	ADCON1=0X80;
	high=ADRESH;
	low=ADRESL;
	DV=low+(high*256);	
	a=DV/1000;
	b=DV%1000;
	c=b/100;
	d=b%100;
	e=d/10;
	f=d%10;
	lcd_cmd(0,0,0X80);
	lcd_cmd(1,0,a+0X30);
	lcd_cmd(1,0,c+0X30);
	lcd_cmd(1,0,e+0X30);
	lcd_cmd(1,0,f+0X30);
}

void main()
{
	TRISB=0X04;
	PORTB=0X00;
	TRISD=0X00;
	PORTD=0X00;
	TRISE=0X00;
	PORTE=0X00;
	ANSEL=0X00;
	ANSELH=0X01;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0E);	
	while(1)
	{
		adc();
	}
}