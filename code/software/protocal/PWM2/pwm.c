/*Name: Yogesh
Date: 22/6/22
Concept: PWM_motor control by using potentiometer*/
#include<pic.h>
int low,high,DV,write;
void delay(unsigned int ms)
{
	while(ms--);
}
void motor(int samp)
{
	CCPR2L=samp>>2;
	CCP2CON|=(samp&0X03)<<4;
	delay(100);
}

int adc()
{
	ADCON0=0X83;
	ADCON1=0X80;
	low=ADRESL;
	high=ADRESH;
	DV=low+(high*256);
	return DV;
		
}
void main()
{
	TRISA=0X01;
	PORTA=0X00;
	TRISC=0X00;
	PORTC=0X00;
	ANSEL=0X01;
	ANSELH=0X00;
	T2CON=0X07;
	CCP2CON=0X0F;
	while(1)
	{
		write=adc();
		motor(write);
	}
}