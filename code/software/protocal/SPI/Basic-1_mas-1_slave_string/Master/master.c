/*Name: Yogesh
Date: 6-6-2022
Concept: Master*/
#include<pic.h>
/*void master1(char data)
{
		SSPBUF=data;
		while(SSPIF==0);
		SSPIF=0;
		lcd_cmd(1,0,data);
	
}*/
void master(char *ptr)
{
	while(*ptr)
	{
		SSPBUF=*ptr;
		while(SSPIF==0);
		SSPIF=0;
		ptr++;		
	}
	SSPBUF='\0';
}
void main()
{
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	PORTA=0X00;
	TRISA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	PORTC=0X00;
	TRISC=0X11;
	SSPCON=0X32;
	SSPSTAT=0X80;
	while(1)
	{
		if(RC0==1)
		{
		master("Jan Batch soon to end");
		while(RC0==1);
		
		}
	}
}
