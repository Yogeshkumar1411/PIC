/*
Name: Yogesh
Date: 14-03-2022
Concept: Two-digit display
*/
#include<pic.h>
#define B1 RA0
#define B2 RA1
#define B3 RA2
#define B4 RA3
#define B5 RA4
void delay(unsigned int a)
{
while(a--);
}
int div(int x)
{
	int m;
	m=x/10;
	return m;
}
int mod(int y)
{
	int n;
	n=y%10;
    return n;
}
void main() 
{	
	int i=0,j=0,count=0,count1=0,m1,n1;
	char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;	
	TRISA=0X1F;
	PORTA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	while(1) 	
	{
		if(B1==1)
		{
			i+=i+1;
			while(B1==1);
		}
		if(B2==1)
		{	
			j+=j+1;
			while(B2==1);
		}
		if(B3==1)
		{
			
			count=i+j;
			while(B3==1);

			m1=div(count);
			n1=mod(count);

		}
			
					
				RD0=0;
				RD1=1;
				PORTC=seg[m1];
				delay(2900);
				RD0=1;
				RD1=0;
				PORTC=seg[n1];
				delay(2900);
				
		
		if(B4==1)
		
			{
				count1=i-j;
				while(B4==1);
				m1=div(count1);	
				n1=mod(count1);
			}
						
             	RD0=0;
				RD1=1;
				PORTC=seg[m1];
				delay(2900);
				RD0=1;
				RD1=0;
				PORTC=seg[n1];
				delay(2900);	
					
		if(B5==1)
		{
			i=0;
			j=0;
			count=0;
			while(B5==1);
		}
	}
}	