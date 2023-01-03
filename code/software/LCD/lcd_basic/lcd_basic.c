/*Name: Yogesh
Date: 21-03-2022
Concept: LCD-basic*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
void delay(unsigned int a)
{
	while(a--);
}
void pulse()
{
	EN=1;
	delay(10000);
	EN=0;
	delay(10000);
}
void type()
{
	RS=0;
	RW=0;
	LCD=0X38;
	pulse();
}
void on()
{
	RS=0;
	RW=0;
	LCD=0X0F;
	pulse();
}
void address()
{
	RS=0;
	RW=0;
	LCD=0X80;
	pulse();
}
void display()
{
	int i;
	//char *p;
	char a[20]="Yogeshkumar";
	RS=1;
	RW=0;
	//*p=&a[0];
	for(i=0;i<11;i++)
		{
		LCD=a[i];
		pulse();
		}
}
void main()
{
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	type();
	on();
while(1)
	{
	address();
	display();
	}
}