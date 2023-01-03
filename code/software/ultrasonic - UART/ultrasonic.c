/*Name: Yogesh
Date: 6-8-2022
Concept: Ultrasonic*/
#include<pic.h>
int high,low,time,distance,a,b,c,d,e,f;
void TX2(int val)
{
	TXREG=val;
	while(TXIF==0);
	TXIF=0;
}
void TX1(char data)
{
	TXREG=data;
	while(TXIF==0);
	TXIF=0;
}
void TX(char *ptr)
{
	TX1(*ptr++);
}
void adc()
{
	RA1=1;
	char limit=13;
	ADCON0=0X83;
	ADCON1=0X80;
	high=ADRESH;
	low=ADRESL;
	time=low+(high*256);
	distance=(time/2)*343;
	a=time/100;
	b=time%100;
	c=b/10;
	d=b%10;
	TX2(a+0X30);
	TX2(c+0X30);
	TX2(d+0X30);	
	TX1(limit);
	
}
void main()
{
	PORTA=0X00;
	TRISA=0X01;
	PORTC=0X00;
	TRISC=0X00;
	ANSEL=0X01;
	ANSELH=0X00;
	TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
	while(1)
	{
		TX("Distance: ");
		adc();
		while(1);
	}

}