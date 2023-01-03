/*
Name: Yogesh
Date: 17-03-2022
Concept: Clock
*/
#include<pic.h>

void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i,a,b,c,d,e,f,l,k;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
TRISC=0X00;
PORTC=0X00;
TRISD=0X00;
PORTD=0X00;
while(1)
{
	
	for(i=0;i<=1440;i++)
	{		
							a=i/600;
							b=i%600;	
							c=b/60;
							d=b%60;		
							e=d/10;
							f=d%10;
		
		
					for(l=0;l<5;l++)
							{							
							RD0=0;
							RD1=1;
							RD2=1;
							RD3=1;					
							PORTC=seg[a];
							delay(900);
							RD0=1;
							RD1=0;
							RD2=1;
							RD3=1;					
							PORTC=seg[c];
							delay(900);							
							RD0=1;
							RD1=1;
							RD2=0;
							RD3=1;
							PORTC=seg[e];
							delay(900);

					
							RD0=1;
							RD1=1;
							RD2=1;
							RD3=0;
							PORTC=seg[f];
							delay(900);
							
							}					
					}			
						
	
		}
			
}

	

	