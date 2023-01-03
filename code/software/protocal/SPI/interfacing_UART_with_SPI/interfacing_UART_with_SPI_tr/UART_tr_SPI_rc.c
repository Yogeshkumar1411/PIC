/*Name: Yogesh
Date: 6-6-2022
Concept: interfacing UART with SPI (master)*/
#include<pic.h>
void master(char mas)
{	
	SSPBUF=mas;
	while(SSPIF==0);
	SSPIF=0;	
}
void RC()
{
	char data;
	while(RCIF==0);
	data=RCREG;	
	RCIF=0;
	master(data);	
}
void main()
{
	PORTA=0X00;
	TRISA=0X00;
	PORTC=0X00;
	TRISC=0X90;
	ANSEL=0X00;
	ANSELH=0X00;
	TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
	SSPCON=0X30;
	SSPSTAT=0X80;	
	while(1)
	{	
		RC();
		//while(1);
	}
}