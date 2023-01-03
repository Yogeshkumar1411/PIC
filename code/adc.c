/*Name: Yogesh
Date: 7.6.2022
Concept: Adc*/
#include<pic.h>
#include<math.h>
#include"lcd.h"
int high,low;
float a,b,c,d,e,f,DV,DV1,DV2;
void adc()
{
	ADCON0=0XA3;
	ADCON1=0X80;
	high=ADRESH;
	low=ADRESL;
	DV=low+(high*256);
	DV1=DV*(5.0/1023.0);
	DV2=(((DV1*100)/1.88)+0);
	a=DV2/1000.0;
	b=fmod(DV2,1000.0);
	c=b/100.0;
	d=fmod(b,100.0);
	e=d/10.0;
	f=fmod(d,10.0);
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