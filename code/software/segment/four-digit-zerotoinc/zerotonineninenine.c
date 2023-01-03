/*
Name: Yogesh
Date: 16-03-2022
Concept: Four-digit display
*/
#include<pic.h>
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i,a,b,c,d,e,f;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
TRISB=0X00;
PORTB=0X00;
ANSEL=0X00;
ANSELH=0X00;
TRISD=0X00;
PORTD=0X00;
while(1)
{
	for(i=9999;i>=0;i--)
	{
		a=i/1000;
		b=i%1000;
		c=b/100;
		d=b%100;
		e=d/10;
		f=d%10;
		{

			RD0=1;
			RD1=RD2=RD3=0;
			PORTB=seg[a];
			delay(750);
			RD1=1;
			RD0=RD2=RD3=0;
			PORTB=seg[c];
			delay(500);
			RD2=1;
			RD1=RD0=RD3=0;
			PORTB=seg[e];
			delay(1250);
			RD3=1;
			RD1=RD2=RD0=0;
			PORTB=seg[f];
			delay(2000);
		}
	}
}
}	