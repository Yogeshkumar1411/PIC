/*Name: Yogesh
Date: 10-06-2022
Concept: Serial_interrupt_SPI-master*/
#include<pic.h>
void delay(unsigned int ms)
{
	while(ms--);
}
void interrupt rc()
{
if(SSPIF==1)
{
		SSPBUF='A';
		while(SSPIF==0);
		
}
SSPIF=0;
}
void main()
{
	int j;
	TRISA=0X00;
	PORTA=0X00;
	TRISC=0X10;
	PORTC=0X00;
	TRISB=0X00;
	PORTB=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPCON=0X30;
	SSPSTAT=0X80;
	INTCON=0XC0;
	PIE1=0X08;
	PIR1=0X08;
	while(1)
	{
		for(j=0;j<5;j++)
		{
		RB0=0;
		delay(3000);
		RB0=1;
		delay(3000);		
		}
	}
}