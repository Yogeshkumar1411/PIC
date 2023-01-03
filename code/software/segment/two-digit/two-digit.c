/*
Name: Yogesh
Date: 14-03-2022
Concept: Two-digit display
*/
#include<pic.h>
int i,j;
void delay(unsigned int a)
{
 while(a--);
}
void main() 
{
	int a,b;
	char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	PORTD=0X00;
	TRISD=0X00;
	PORTC=0X00;
	TRISC=0X00;
	ANSEL=0X00;
	ANSELH=0X00;	
	while(1) 	
	{
		for(j=0;j<=99;j++)
		{
			a=j/10;
			b=j%10;
		
			for(i=0;i<=1000;i++)
			{
				RD0=0;
				RD1=1;
				PORTC=seg[a];
				delay(200);
				RD0=1;
				RD1=0;
				PORTC=seg[b];
				delay(200);
			}	
		}
	}
}