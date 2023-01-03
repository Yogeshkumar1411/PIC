/*Name: Yogesh
Date: 07-04-2022
Concept: ADC - Connecting two potentiometer*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
int H,L,DV,a,b,c,d,e,f,H1,L1,DV1,a1,b1,c1,d1,e1,f1;
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
void adc(int i,int j)
{

	H=ADRESH;
	L=ADRESL;
	ADCON0=i;
	GO=1;
	while(GO);

	if(H==0)
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

}
/*void adc1()
{
	ADCON0=0X85;
	H1=ADRESH;
	L1=ADRESL;
	GO=1;
	while(GO);
	if(H1==0)
	{
		DV1=L1+0;
	}
	if(H1==1)
	{
		DV1=L1+256;
	}
	if(H1==2)
	{
		DV1=L1+512;
	}
	if(H1==3)
	{
		DV1=L1+768;
	}
	a1=DV1/1000;
	b1=DV1%1000;
	c1=b1/100;
	d1=b1%100;
	e1=d1/10;
	f1=d1%10;
	lcd_cmd(0,0,0XC0);
	lcd_cmd(1,0,0X30+a1);
	lcd_cmd(1,0,0X30+c1);
	lcd_cmd(1,0,0X30+e1);
	lcd_cmd(1,0,0X30+f1);

}*/
void main()
{
PORTA=0X00;
TRISA=0X03;
PORTD=0X00;
TRISD=0X00;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X03;
ANSELH=0X00;
ADCON1=0X80;
lcd_cmd(0,0,0X38);
lcd_cmd(0,0,0X0E);
while(1)
{
adc(0X85,0XC0);
delay(5000);
adc(0X81,0X80);
delay(5000);
//adc1();
}
}