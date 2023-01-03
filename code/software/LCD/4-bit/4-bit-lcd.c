/*Name: Yogesh
Date: 24-04-2022
Concept: 4-bit-LCD*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTB
void delay(unsigned int ms)
{
while(ms--);
}
void pulse()
{
	EN=1;
	delay(10000);
	EN=0;
	delay(10000);
}
/*void type()
{
	RS=0;
	RW=0;
	LCD=0X28;
	pulse();
}
void on()
{
	RS=0;
	RW=0;
	LCD=0X0F;
	pulse();
}*/
void address(char a)
{
	RS=0;
	RW=0;
	LCD=a;
	pulse();
	LCD=a<<4;
	pulse();
}
void display(char a)
{
	RS=1;
	RW=0;
	LCD=a;
	pulse();
	LCD=a<<4;
	pulse();
}
void main()
{
	TRISB=0X00;
	PORTB=0X00;
	TRISE=0X00;
	PORTE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
address(0X02);
address(0X28);
address(0X0E);
while(1)
{
	address(0X80);
	display('B');
}
}