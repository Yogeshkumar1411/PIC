/*Name:Yogesh
Date: 31-03-2022
Conept: Motor-TMR2*/
#include<pic.h>
int count=0;
void timer(int sec)
{
while(0<sec)
{
	if(TMR2IF==1)
	{
		count++;
		TMR2IF=0;
	}
	
	if(count==15)
		{
			count=0;
			sec--;
		}
}
}

void main()
{
PORTC=0X00;
TRISC=0X00;
T2CON=0X7F;
while(1)
{
	PORTC=0X01;//RC0=1;
				//RC1=0;
	timer(10);
	PORTC=0X02;//RC1=1;
				//RC0=0;
	timer(5);
}
}