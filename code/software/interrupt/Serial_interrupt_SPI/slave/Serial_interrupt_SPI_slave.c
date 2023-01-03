/*Name: Yogesh
Date: 11-06-2022
Concept: Serial_interrupt_SPI_slave*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTB
	char name;
void delay(unsigned int ms)
{
	while(ms--);
}
void lcd_cmd(char a,char b, char c)
{
	RS=a;
	RW=b;
	LCD=c;
	EN=1;
	delay(1000);
	EN=0;
	delay(1000);

	LCD=c<<4;
	EN=1;
	delay(1000);
	EN=0;
	delay(1000);	
}
void slave()
{

	while(SSPIF=0);
	name=SSPBUF;
	SSPIF=0;
	lcd_cmd(1,0,name);
}
void main()
{
	TRISC=0X18;
	PORTC=0X00;
	TRISB=0X00;
	PORTB=0X00;	
	TRISE=0X00;
	PORTE=0X00;
	TRISA=0X20;
	PORTA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPCON=0X34;
	SSPSTAT=0X00;
lcd_cmd(0,0,0X02);
	lcd_cmd(0,0,0X28);
	lcd_cmd(0,0,0X0F);
	lcd_cmd(0,0,0X80);
	while(1)
	{
		slave();
		//while(1);
	}
}
