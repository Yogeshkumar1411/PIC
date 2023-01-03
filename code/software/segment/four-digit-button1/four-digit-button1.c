/*
Name: Yogesh
Date: 16-03-2022
Concept: Four-digit display
*/
#include<pic.h>
#define B1 RA0
#define B2 RA1
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i,a,b,c,d,e,f;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
TRISA=0X00;
PORTA=0X00;
ANSEL=0X00;
ANSELH=0X00;
TRISC=0X00;
PORTC=0X00;
TRISD=0X00;
PORTD=0X00;
while(1)
{
	if(B1==1)
	{
	for(i=0;i<=9998;i++)
	{
		a=i/1000;//a=9
		b=i%1000;//b=998
		c=b/100;//c=9
		d=b%100;//d=98
		e=d/10;//e=9
		f=d%10;//f=8
		{

			RD0=0;
			RD1=1;
			RD2=1;
			RD3=1;
			PORTC=seg[a];
			delay(750);
			RD0=1;
			RD1=0;
			RD2=1;
			RD3=1;
			PORTC=seg[c];
			delay(500);
			RD0=1;
			RD1=1;
			RD2=0;
			RD3=1;
			PORTC=seg[e];
			delay(1250);
			RD0=1;
			RD1=1;
			RD2=1;
			RD3=0;
			PORTC=seg[f];
			delay(2000);
		}
	}
	}

	if(B2==1)
	{
	for(i=99;i>=0;i--)
	{
		a=i/1000;
		b=i%1000;
		c=b/100;
		d=b%100;
		e=d/10;
		f=d%10;
		{

			RD0=0;
			RD1=1;
			RD2=1;
			RD3=1;
			PORTC=seg[a];
			delay(750);
			RD0=1;
			RD1=0;
			RD2=1;
			RD3=1;
			PORTC=seg[c];
			delay(500);
			RD0=1;
			RD1=1;
			RD2=0;
			RD3=1;
			PORTC=seg[e];
			delay(1250);
			RD0=1;
			RD1=1;
			RD2=1;
			RD3=0;
			PORTC=seg[f];
			delay(2000);
		}
	}
	}
}
}	