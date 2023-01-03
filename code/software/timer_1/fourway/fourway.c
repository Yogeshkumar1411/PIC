/*Name: Yogesh
Date: 30-03-2022
Concept: fourway*/
#include<pic.h>
int count=0;
void timer()
{
	if(TMR1IF==1)
		{	
			count++;
			TMR1IF=0;
		}

//first case
	if(count>=0&&count<30)
		{
			PORTC=0X01;
			PORTD=0X09;
		}
	if(count>=20&&count<30)
		{
			PORTC=0X11;
			PORTD=0X09;
		}
	if(count>=0&&count<20)
		{
			PORTC=0X21;
			PORTD=0X09;
		}



//second case
	if(count>=30&&count<60)
		{
			PORTC=0X09;
			PORTD=0X08;
		}
	if(count>=50&&count<60)
		{
			PORTC=0X09;
			PORTD=0X09;
		}
	if(count>=30&&count<50)
		{
			PORTC=0X09;
			PORTD=0X0F;
		}
	




/*//third case
	if(count>=0&&count<30)
		{
			PORTC=0X01;
			PORTD=0X09;
		}
	if(count>=20&&count<30)
		{
			PORTC=0X11;
			PORTD=0X09;
		}
	if(count>=0&&count<20)
		{
			PORTC=0X21;
			PORTD=0X09;
		}
	



//fourth case
	if(count>=0&&count<30)
		{
			PORTC=0X01;
			PORTD=0X09;
		}
	if(count>=20&&count<30)
		{
			PORTC=0X11;
			PORTD=0X09;
		}
	if(count>=0&&count<20)
		{
			PORTC=0X21;
			PORTD=0X09;
		}*/
	
	if(count>=60)
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
T1CON=0X31;
while(1)
{
timer();
}
}