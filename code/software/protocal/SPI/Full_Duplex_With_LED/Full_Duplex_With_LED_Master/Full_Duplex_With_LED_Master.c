/*Name: Yogesh
Date: 15-06-2022
Concept: Full_Duplex_With_LED_Master*/

#include<pic.h>
#define B1 RA0
#define B2 RA1
#define B3 RA2
#define B4 RA3
#define B5 RA4
int count=0;
int z;
void master(int num)
{
	SSPBUF=num;
	while(SSPIF==0);
	SSPIF=0;
}
void slave()
{
	if(BF==1)
	{
		BF=0;
		z=SSPBUF;
		if(z==1)
		{
			RD0=1;
			RD1=RD2=RD3=RD4=0;
		}
		if(z==2)
		{
			RD1=1;
			RD0=RD2=RD3=RD4=0;
		}
		if(z==3)
		{
			RD2=1;
			RD1=RD0=RD3=RD4=0;
		}
		if(z==4)
		{
			RD3=1;
			RD1=RD2=RD0=RD4=0;
		}
		if(z==5)
		{
			RD4=1;
			RD1=RD2=RD3=RD0=0;
		}


	}
}


void main()
{
	TRISC=0X10;
	PORTC=0X00;
	TRISA=0X00;
	PORTA=0X00;
	TRISD=0X00;
	PORTD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPCON=0X20;
	SSPSTAT=0X00;
	while(1)
	{
		if(B1==1)
		{
			count=1;
		}		
		if(B2==1)
		{
			count=2;
		}
		if(B3==1)
		{
			count=3;
		}
		if(B4==1)
		{
			count=4;
		}
		if(B5==1)
		{
			count=5;
		}
		master(count);
		slave();
	}
}
