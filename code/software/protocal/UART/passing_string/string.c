/*Name: Yogesh
Date: 01-06-2022
Conept: Passing_string*/
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
	delay(1000);
	EN=0;
	delay(1000);
}
lcd_cmd(char b,char c,char d)
{
	RS=b;
	RW=c;
	LCD=d&0XF0;
	pulse();
	LCD=(d&0X0F)<<4;
	pulse();
}
void TX(char *a)
{	
while(*a)
{
	TXREG=*a++;
	while(TXIF==0);
	TXIF=0;
	delay(75);
	lcd_cmd(1,0,*a);
}
}

void main()
{
PORTC=0X00;
TRISC=0X00;
PORTB=0X00;
TRISB=0X00;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X00;
ANSELH=0X00;
TXSTA=0X26;
RCSTA=0X90;
SPBRG=25;
	lcd_cmd(0,0,0X20);
	lcd_cmd(0,0,0X28);
	lcd_cmd(0,0,0X0E);
	lcd_cmd(0,0,0x80);
while(1)
{
	TX("Yogeshkumar");
	while(1);
}
	
}