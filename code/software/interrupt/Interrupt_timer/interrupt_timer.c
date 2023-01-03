/*Name: Yogesh
Date: 4-4-2022
Concept: Interrupt_timer*/
#include<pic.h>
int count=0;
void delay(unsigned int a)
{
while(a--);
}
void interrupt timer()
{
	if(T0IF==1)
	{
		count++;
		T0IF=0;
	}
	if(count>=50&&count<150)
	{
		RA1=1;
	}
	if(count>=150&&count<200)
	{
		RA1=0;
	}
	if(count==200)
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
	INTCON=0XE0;
	OPTION_REG=0X07;
	while(1)
	{
		RA0=1;
		delay(10000);
		RA0=0;
		delay(10000);
	}
}
