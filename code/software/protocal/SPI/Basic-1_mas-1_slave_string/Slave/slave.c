/*Name: Yogesh
Date: 6-6-2022
Concept: Slave*/
#include<pic.h>
#include"lcd.h"
char name[10];
int i=0;
int j=0;
void slave1()
{
	while(SSPBUF!='\0')
	{
	while(SSPIF==0);
	SSPIF=0;
	name[i]=SSPBUF;
	i++;
	}
	while(name[j]!='\0')
	{
		lcd_cmd(1,0,name[j]);
		j++;
	}
}

void main()
{
	PORTA=0X00;
	TRISA=0X20;
	PORTC=0X00;
	TRISC=0X18;
	PORTB=0X00;
	TRISB=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
lcd_cmd(0,0,0X02);
lcd_cmd(0,0,0X28);
lcd_cmd(0,0,0X0F);
lcd_cmd(0,0,0X80);
	//lcd_init();
	SSPCON=0X34;
	SSPSTAT=0X00;
	while(1)
	{
		slave1();
	}
}