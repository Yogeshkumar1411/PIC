/*Name: Yogesh
Date: 08-04-2022
Concept: ADC_motor*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
int H,L,DV,DV1,DV2,DV3,DV4,m,n,o,p,q,r;
void delay(unsigned int ms)
{
	while(ms--);
}
void lcd_cmd(char a,char b,char c)
{
	RS=a;
	RW=b;
	LCD=c;
	EN=1;
	delay(1000);
	EN=0;
	delay(1000);
	
}
int adc(int i,int j)
{
ADCON0=i;
H=ADRESH;
L=ADRESL;
GO=1;
while(GO);
	/*if(H==0)
	{
		DV=L+0;
	}
	if(H==1)
	{
		DV=L+256;
	}
	if(H==2)
	{
		DV=L+512;
	}
	if(H==3)
	{
		DV=L+768;
	}*/
DV=L+(H*256);
	m=DV/1000;
	n=DV%1000;
	o=n/100;
	p=n%100;
	q=p/10;
	r=p%10;
	lcd_cmd(0,0,j);
	lcd_cmd(1,0,0X30+m);
	lcd_cmd(1,0,0X30+o);
	lcd_cmd(1,0,0X30+q);
	lcd_cmd(1,0,0X30+r);
return DV;
}
void main()
{
PORTA=0X00;
TRISA=0X03;
PORTB=0X00;
TRISB=0X0C;
PORTC=0X00;
TRISC=0X00;
PORTD=0X00;
TRISD=0X00;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X03;
ANSELH=0X03;
ADCON1=0X80;
lcd_cmd(0,0,0X38);
lcd_cmd(0,0,0X0E);
while(1)
{
	DV1=adc(0X81,0X80);	
	DV2=adc(0X85,0XC0);
	DV3=adc(0XA1,0X85);
	DV4=adc(0XA5,0XC5);
	if(DV1>DV2)
	{
	PORTC=0X01;
	
	}
	if(DV3>DV4)
	{
	PORTC=0X02;
	}
	if(DV1==DV2&&DV3==DV4)
	{
	PORTC=0X00;
	}
}
}