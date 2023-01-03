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
	delay(1000);
	EN=0;
	delay(1000);
}
int adc(int i,int j)
{
	ADCON0=i;
	H=ADRESH;
	L=ADRESL;
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
	TRISA=0X03;
	PORTB=0X00;
	TRISB=0X0E;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	PORTC=0X00;
	TRISC=0X00;
	ANSEL=0X03;
	ANSELH=0X07;
	ADCON1=0X80;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0E);
	while(1)
	{
		DV1=adc(0X83,0X80);
		
		if(DV1<500&&DV2>500&&DV3>500&&DV4>500&&DV5>500)
			{
				RC0=1;
                RC1=RC2=RC3=0;
			}
	DV2=adc(0X87,0X85);
		
		if(DV2<500&&DV1>500&&DV3>500&&DV4>500&&DV5>500)
			{
				RC1=1;
                 RC0=RC2=RC3=0;
			}
DV3=adc(0XA3,0X8A);
	
		
		if(DV3<500&&DV2>500&&DV1>500&&DV4>500&&DV5>500)
			{
				RC2=1;
                RC1=RC3=RC0=0;
			}
	DV4=adc(0XA7,0XC0);
	
		
		if(DV4<500&&DV2>500&&DV3>500&&DV1>500&&DV5>500)
			{
				RC3=1;
                RC1=RC2=RC0=0;
			}
			DV5=adc(0XAB,0XC5);
		if(DV5>500&&DV2<500&&DV3<500&&DV4<500&&DV1<500)
			{
				RC0=RC1=RC2=RC3=1;

			}
		



	}
}
