/*Name: Yogesh
Date: 06-04-2022
Concept: ADC_basic*/
#include<pic.h>
/*#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTB
int H,L,DV=0,b,c,d,e,f,g;
void delay(unsigned int a)
{
	while(a--);
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
/*void adc()
{
	
	ADCON0=0X81;
	ADCON1=0X80;
	H=ADRESH;
	L=ADRESL;
GO=1;
while(GO);
/*	if(H==0)
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
	}
		DV=L+(H*256);

		c=DV/1000;
		b=DV%1000;

		e=b/100;
		d=b%100;
		
		g=d/10;
		f=d%10;
		
		lcd_cmd(0,0,0X80);
		lcd_cmd(1,0,0X30+c);
		lcd_cmd(1,0,0X30+e);
		lcd_cmd(1,0,0X30+g);
		lcd_cmd(1,0,0X30+f);

}*/

void main()
{
PORTA=0X00;
TRISA=0X01;
PORTB=0X00;
TRISB=0X01;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X00;
ANSELH=0X00;
//lcd_cmd(0,0,0X38);
//lcd_cmd(0,0,0X0F);

while(1)
{
	if(RB0==0)
	{
		RB7=1;
	}
	if(RB0==1)
	{
		RB7=0;
	}
		
}
}