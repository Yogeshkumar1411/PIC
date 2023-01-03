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
int a=1234,b,c,d,e,f,g;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
TRISB=0X00;
PORTB=0X00;
ANSEL=0X00;
ANSELH=0X00;
TRISD=0X00;
PORTD=0X00;
b=a/1000;//b=1
c=a%1000;//c=234
d=c/100;//d=2
e=c%100;//e=34
f=e/10;//f=3
g=e%10;//g=4
while(1)
{

	RD0=1;
	RD1=0;
	RD2=0;
	RD3=0;
	PORTB=seg[b];
	delay(1000);
	RD0=0;
	RD1=1;
	RD2=0;
	RD3=0;
	PORTB=seg[d];
	delay(1000);
	RD0=0;
	RD1=0;
	RD2=1;
	RD3=0;
	PORTB=seg[f];
	delay(2600);
	RD0=0;
	RD1=0;
	RD2=0;
	RD3=1;
	PORTB=seg[g];
	delay(2500);
	}
}	