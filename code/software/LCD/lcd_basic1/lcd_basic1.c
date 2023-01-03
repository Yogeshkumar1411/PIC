/*Name: Yogesh
Date: 22-03-2022
Concept: LCD basic simplified*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTB
void delay(unsigned int a)
	{
	while(a--);
	}
void pulse()
{

	EN=1;
	delay(1000);
	EN=0;
	delay(1000);
}
void lcd_cmd(char a,char b,char c)
	{
	RS=a;
	RW=b;
	LCD=c;
	pulse();
	}
void main()
	{
	PORTB=0X00;
	TRISB=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	while(1)
		{
		lcd_cmd(0,0,0XC0);
		lcd_cmd(1,0,'a');
		//lcd_cmd(0,0,0X01);
		lcd_cmd(0,0,0X80);
		lcd_cmd(1,0,'A');
		//lcd_cmd(0,0,0X01);
		}
	}
	
