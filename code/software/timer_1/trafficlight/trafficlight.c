/*Name: Yogesh
Date: 30-03-2022
Concept: Traffic-light*/
#include<pic.h>
int count=0;
void timer(int sec)
{
	while(sec>0)
	{
	if(TMR1IF==1)
		{	
			count++;
			TMR1IF=0;
		}
	if(count==2)
		{
			count=0;
			sec--;
		}
	}
	/*if(count>=0&&count<30)
		{
			RC0=1;
			RC1=0;
			RC2=0;
		}
	if(count>=20&&count<30)
		{
			RD0=0;
			RD1=1;
			RD2=0;
		}
	if(count>=0&&count<20)
		{
			RD0=0;
			RD1=0;
			RD2=1;
		}
	if(count>=30&&count<60)
		{
			RD0=1;
			RD1=0;
			RD2=0;
		}
	if(count>=50&&count<60)
		{
			RC0=0;
			RC1=1;
			RC2=0;
		}
	if(count>=30&&count<50)
		{
			RC0=0;
			RC1=0;
			RC2=1;
		}
	if(count>=60)
		{
			count=0;
		}*/

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
			PORTC=0X01;//RC0=1;//1st red
						//RC1=0;//1st yellow
						//RC2=0;//1st green
			PORTD=0X04;//RD0=0;//2nd red
						//RD1=0;//2nd yellow
						//RD2=1;//2nd green
			timer(10);
			PORTC=0X01;//RC0=1;//1st red
						//RC1=0;//1st yellow
						//RC2=0;//1st green
			PORTD=0X02;//RD0=0;//2nd red
						//RD1=1;//2nd yellow
						//RD2=0;//2nd green
			timer(5);

			PORTC=0X04;//RC0=1;//1st red
						//RC1=0;//1st yellow
						//RC2=0;//1st green
			PORTD=0X01;//RD0=0;//2nd red
						//RD1=0;//2nd yellow
						//RD2=1;//2nd green
			timer(10);
			PORTC=0X02;//RC0=1;//1st red
						//RC1=0;//1st yellow
						//RC2=0;//1st green
			PORTD=0X01;//RD0=0;//2nd red
						//RD1=1;//2nd yellow
						//RD2=0;//2nd green
			timer(5);





			/*RC0=0;//1st red
			RC1=0;//1st yellow
			RC2=1;//1st green
			RD0=1;//2nd red
			RD1=0;//2nd yellow
			RD2=0;//2nd green
			timer(10);
			RC0=0;//1st red
			RC1=1;//1st yellow
			RC2=0;//1st green
			RD0=1;//2nd red
			RD1=0;//2nd yellow
			RD2=0;//2nd green
			timer(5);*/
}
}