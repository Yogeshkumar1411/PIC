/*Name: Yogesh
Date: 4/2/2022
Concept: Interrupt*/
#include<pic.h>
void interrupt Ext();
int i,count=0;
void timer(int a)
{
while(0<a)
{
	if(TMR1IF==1)
	{
		count++;
	}
	TMR1IF=0;
	if(count==2)
	{
		count=0;
		a--;
	}
}

}
void main()
{
PORTA=0X00;
TRISA=0X00;
PORTB=0X00;
TRISB=0X01;
ANSEL=0X00;
ANSELH=0X00;
T1CON=0X31;
GIE=1;//INTCON=0XD0
PEIE=1;//
INTE=1;//
while(1)
{
	RA0=1;
	timer(2);
	RA0=0;
	timer(2);
}
}
void interrupt Ext()
{
	if(INTF==1)
	{
		for(i=0;i<5;i++)
		{
			RA1=1;
			timer(2);
			RA1=0;
			timer(2);
		}		
	INTF=0;
	}
}

