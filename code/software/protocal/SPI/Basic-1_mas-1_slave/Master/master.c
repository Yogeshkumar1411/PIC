/*Name: Yogesh
Date: 6-5-2022
Concept: Master*/
#include<pic.h>
void master(char data)
{
	SSPBUF=data;
	while(SSPIF==0);
	SSPIF=0;
}
void main()
{
	PORTA=0X00;
	TRISA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	PORTC=0X00;
	TRISC=0X10;
	SSPCON=0X30;
	SSPSTAT=0X80;
	while(1)
	{
		master('V');
	}
}
