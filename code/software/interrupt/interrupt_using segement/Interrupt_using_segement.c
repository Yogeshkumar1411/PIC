/*Name: Yogesh
Date: 02/04/2022
Concept: Interrupt using segment*/
#include<pic.h>
int i,j,count=0;
char seg[10]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
void timer(int a)
{
while(0<a)
	{
	if(TMR1IF==1)
		{
		count++;
		TMR1IF=0;
		}
	if(count==2)
		{
		count=0;
		a--;
		}
	}
}
void interrupt ext();
void main()
{
PORTC=0X00;
TRISC=0X00;
PORTD=0X00;
TRISD=0X00;
PORTB=0X00;
TRISB=0X01;
ANSEL=0X00;
ANSELH=0X00;
T1CON=0X31;
INTCON=0XD0;
while(1)
	{
	for(i=0;i<10;i++)
		{
			PORTC=seg[i];
			timer(1);
		}
	}
}
void interrupt ext()
{
	if(INTF==1)
		{
		for(j=0;j<10;j++)
			{
				PORTD=seg[j];
				timer(1);
			}
	INTF=0;
		}
}