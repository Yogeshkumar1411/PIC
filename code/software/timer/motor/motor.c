/*Name: Yogesh
Date: 29-03-2022
Concept: motor*/
#include<pic.h>
int count=0;
void timer(int sec)
{
while(sec>0)
{	
	if(T0IF==1)
		{	
			count++;
		}
			T0IF=0;
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

OPTION_REG=0X07;
while(1)
{
	RC0=1;
	RC1=0;
	timer(5);
	RC0=0;
	RC1=1;
	timer(2);
	
	
	

}
}