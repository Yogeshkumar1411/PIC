/*Name: Yogesh
Date: 22/6/22
Concept: PWM*/
#include<pic.h>

int a=768;
void delay(unsigned int ms)
{
	while(ms--);
}
void main()
{
	TRISC=0X00;
	PORTC=0X00;
	TRISD=0X00;
	PORTD=0X00;
	T2CON=0X0D;
	CCP2CON=0X0F;
	while(1)
	{
		CCPR2L=a>>2;
		CCP2CON=(((a&0X30)<<4)|CCP2CON);//		CCP2CON|=(a&0X30)<<4;
		delay(100);
	}
}
