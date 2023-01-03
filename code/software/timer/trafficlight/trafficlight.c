/*Name: Yogesh
Date: 29-03-2022
Concept: Traffic-light*/
#include<pic.h>
int count=0;
void timer()
{
	if(T0IF==1)
		{	
			count++;
			T0IF=0;
		}
	if(count>=0&&count<225)
		{
			RC0=1;
			RC1=0;
			RC2=0;
		}
	if(count>=150&&count<225)
		{
			RD0=0;
			RD1=1;
			RD2=0;
		}
	if(count>=0&&count<150)
		{
			RD0=0;
			RD1=0;
			RD2=1;
		}
	if(count>=225&&count<450)
		{
			RD0=1;
			RD1=0;
			RD2=0;
		}
	if(count>=375&&count<450)
		{
			RC0=0;
			RC1=1;
			RC2=0;
		}
	if(count>=225&&count<375)
		{
			RC0=0;
			RC1=0;
			RC2=1;
		}
	if(count>=450)
		{
			count=0;
		}

}
void main()
{
PORTC=0X00;
TRISC=0X00;
PORTD=0X00;
TRISD=0X00;
OPTION_REG=0X07;
while(1)
{
timer();
}
}