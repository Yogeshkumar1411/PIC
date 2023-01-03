/*Name: Yogesh
Date: 14-06-2022
Concept: Master_full_duplex*/
#include<pic.h>
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
int count=0;
int display;
void slave()
{
	if(BF==1)
	{
	BF=0;
	display=SSPBUF;
	PORTD=seg[display];	
	}
}


void master(int num)
{
	SSPBUF=num;
	while(SSPIF==0);
	SSPIF=0;
}

void main()
{
	TRISA=0X01;
	PORTA=0X00;
	TRISC=0X10;
	PORTC=0X00;
	TRISD=0X00;
	PORTD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPCON=0X20;
	SSPSTAT=0X00;
	while(1)
	{
		if(RA0==1)
		{
			count++;
			while(RA0==1);
		}
		if(count>=10)
		{
			count=0;
		}	
		master(count);
		slave();
	}
}