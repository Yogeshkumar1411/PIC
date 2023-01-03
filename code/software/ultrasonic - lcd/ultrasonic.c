/*Name: Yogesh
Date: 6-8-2022
Concept: Ultrasonic*/
#include<pic.h>
#include"lcd.h"
float a,b,c,d,e,f;
float distance,time,pulse;
void timer()
{
	TMR1=0XD8F0;
	while(TMR1IF==0);
	TMR1IF=0;
}
void main()
{
	PORTA=0X00;
	TRISA=0X01;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	T1CON=0X01;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	lcd_cmd(0,0,0X80);
	while(1)
	{

		RA1=1;
		timer();
		RA1=0;
		TMR1=0X0000;
		while(RA0==0);
		T1CON=0X01;
		while(RA0==1&&TMR1IF==1);
		T1CON=0X00;		
		pulse=TMR1;
		time=pulse/1000.0;
		distance=((0.340)*(float)time)/2.0;		
		a=distance/1000;
		b=distance-(distance/1000)*1000;
		c=b/100;
		d=b-(b/100)*100;
		e=d/10;
		f=d-(d/10)*10;
		lcd_cmd(1,0,48+a);
		lcd_cmd(1,0,48+c);
		lcd_cmd(1,0,48+e);
		lcd_cmd(1,0,48+f);
	}

}