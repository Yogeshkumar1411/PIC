/*Name: Yogesh
Date: 28-03-2022
Concept: Timer0_led*/
#include<pic.h>
int count=0;
void timer()
{
	if(T0IF==1)
		{
			count++;
			T0IF=0;
		}
	if(count>=0&&count<7)
		{
			RA0=1;
		}
	if(count>=7&&count<14)
		{
			RA0=0;
		}
	
	
		
	if(count>=14)
		{
			count=0;
		}
}
void main()
{
	PORTA=0X00;
	TRISA=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	OPTION_REG=0X07;
	while(1)
		{
			timer();
		}
}