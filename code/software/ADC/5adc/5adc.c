/*Name: Yogesh
Date: 11-04-2022
Concept: 5 adc with 5 motor*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
int H,L,DV,DV1,DV2,DV3,DV4,DV5,a,b,c,d,e,f;
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
	delay(100);
	EN=0;
	delay(100);
}
int adc(int i,int j)
{
	ADCON0=i;
	ADCON1=0X80;

	H=ADRESH;
	L=ADRESL;
	GO=1;
	while(GO);
	DV=L+(H*256);
	a=DV/1000;
	b=DV%1000;
	c=b/100;
	d=b%100;
	e=d/10;
	f=d%10;
	lcd_cmd(0,0,j);
	lcd_cmd(1,0,0X30+a);
	lcd_cmd(1,0,0X30+c);
	lcd_cmd(1,0,0X30+e);
	lcd_cmd(1,0,0X30+f);
	return DV;
}
void main()
{
	PORTA=0X00;
	TRISA=0X2F;
	PORTB=0X00;
	TRISB=0X00;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	PORTC=0X00;
	TRISC=0X00;
	ANSEL=0X1F;
	ANSELH=0X00;	
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0E);
	while(1)
	{
		DV1=adc(0X81,0X80);
		DV2=adc(0X85,0X85);
		DV3=adc(0X89,0X8A);
		DV4=adc(0X9D,0XC0);
		DV5=adc(0X91,0XC5);
		if(DV1>500)
			{
				PORTC=0X01;
			}
		if(DV1<500)
			{
				PORTC=0X00;
			}
		if(DV2>500)
			{
				PORTC=0X02;
			}
		if(DV2<500)
			{
				PORTC=0X00;
			}
		if(DV3>500)
			{
				PORTC=0X04;
			}
		if(DV3<500)
			{
				PORTC=0X00;
			}
		if(DV4>500)
			{
				PORTC=0X08;
			}
		if(DV4<500)
			{
				PORTC=0X00;
			}				
		if(DV5>500)
			{
				PORTC=0X0F;

			}
		if(DV5<500)
			{
				PORTC=0X00;

			}

	}
}
