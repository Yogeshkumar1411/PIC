/*Name: Yogesh
Date: 6-5-2022
Concept: Slave*/
#include<pic.h>
#include"lcd.h"
void slave()
{
	char data;
	while(SSPIF==0);
	data=SSPBUF;
	SSPIF=0;
	lcd_cmd(1,0,data);
	
}
void main()
{
	PORTA=0X00;
	TRISA=0X20;
	PORTC=0X00;
	TRISC=0X18;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
lcd_cmd(0,0,0X38);
lcd_cmd(0,0,0X0F);
lcd_cmd(0,0,0X80);
	//lcd_init();
	SSPCON=0X34;
	SSPSTAT=0X00;
	while(1)
	{
			
		slave();
	}
}