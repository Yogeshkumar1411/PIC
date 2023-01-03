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
int i,j,a,b,c,d,k;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
TRISB=0X00;
PORTB=0X00;
TRISD=0X00;
PORTD=0X00;
while(1)
{
	
	for(i=0,j=99;i<=99,j>=0;i++,j--)
	{
		a=i/10;
		b=i%10;	
		c=j/10;
		d=j%10;		
			
					RD0=0;
					RD1=1;					
					PORTB=seg[a];
					delay(1800);
					RD0=1;
					RD1=0;					
					PORTB=seg[b];
					delay(1800);	
				
					RD2=0;
					RD3=1;
					PORTB=seg[c];
					delay(1800);					
					RD2=1;
					RD3=0;
					PORTB=seg[d];
					delay(1800);
				
			}			
		}		
	}
	

	

	