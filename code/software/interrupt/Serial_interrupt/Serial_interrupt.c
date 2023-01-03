/*Name: Yogesh
Date: 11-06-2022
Concept: Serial interrupt*/
#include<pic.h>
#include"lcd.h"
int i;
void interrupt ext()
{
	char data;
	data=RCREG;
	while(RCIF==0);
	RCIF=0;
	lcd_cmd(1,0,data);	
}
void main()
{
	PORTC=0X00;
	TRISC=0X80;
	PORTE=0X00;
	TRISE=0X00;	
	PORTD=0X00;
	TRISD=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	lcd_cmd(0,0,0X80);
	INTCON=0XC0;
	PIE1=0X20;
	PIR1=0X20;	
	while(1)
	{
		for(i=0;i<5;i++)
		{
			RC0=1;
			delay(5000);
			RC0=0;
			delay(5000);
		}

	}
}