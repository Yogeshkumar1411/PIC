/*Name: Yogesh
Date: 6-5-2022
Concept: Master*/
#include<pic.h>
#include"lcd.h"
#define b1 RA0
#define b2 RA1
#define b3 RA2
void master(char data)
{
	SSPBUF=data;
	while(SSPIF==0);
	SSPIF=0;
	//lcd_cmd(1,0,data);
}
void master1(char *ptr)
{
	while(*ptr)
	{
	master(*ptr++);
	}
}
void main()
{
	PORTA=0X00;
	TRISA=0X07;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	PORTC=0X00;
	TRISC=0X10;
	SSPCON=0X30;
	SSPSTAT=0X80;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	lcd_cmd(0,0,0X80);
	while(1)
	{
	
		if(b1==1)
		{
		RC0=0;
		RC1=RC2=1;
		master1("Hai,");
		while(b1==1);
		}
		if(b2==1)
		{
		RC1=0;
		RC0=RC2=1;
		master1("I'm");
		while(b2==1);
		}
		if(b3==1)
		{
		RC2=0;
		RC1=RC0=1;
		master1("here");
		while(b3==1);
		}
	}
}
