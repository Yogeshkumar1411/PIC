/*Name: Yogesh
Date: 16-05-2022
Concept: Lift project with interrupt*/
#include<pic.h>
void main()
{
PORTB=0X00;
TRISB=0X1F;
PORTC=0X00;
TRISC=0X00;
ANSEL=0X00;
ANSELH=0X00;

while(1)
{

if(RB1==1)
	{
	RC0=1;
	}
}
}
