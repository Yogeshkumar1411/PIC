/*Name: Yogesh
Date: 20/06/2022
Concept: I2C_EEPROM*/
#include<pic.h>
#include"lcd.h"
int s=0;
int retain;
void hold()
{
	while(SSPIF==0);
	SSPIF=0;
}
void i2c_start()
{
	SEN=1;
	hold();
}
void i2c_stop()
{
	PEN=1;
	hold();
}
void i2c_restart()
{
	RSEN=1;
	hold();
}
void i2c_slave(int data)
{
	ACKSTAT=1;
	SSPBUF=data;
	while(ACKSTAT==1);
	hold();
	lcd_cmd(0,0,0XC0);
	lcd_cmd(1,0,data+0X30);
}
unsigned char i2c_read(unsigned int i)
{
	char read;
	if(i==0)
	{
		ACKDT=1;
	}
	while(BF==0);
	read=SSPBUF;
	SSPOV=0;
	ACKEN=1;
	BF=0;
	return read;
}

void main()
{
	char read;
	TRISC=0X19;
	PORTC=0X00;
	TRISD=0X00;
	PORTD=0X00;
	TRISE=0X00;	
	PORTE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SSPCON=0X28;
	SMP=1;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0E);
	i2c_start();
		i2c_slave(0XA0);
		i2c_slave(0X00);
		i2c_restart();
		i2c_slave(0XA1);
		RCEN=1;
		read=i2c_read(0);		
		lcd_cmd(0,0,0X80);
		lcd_cmd(1,0,read+0X30);
		retain=read;
		s=s+retain;
		i2c_stop();
		delay(1000);
	while(1)
	{

			if(RC0==1)
		{
			s=s++;
			while(RC0==1);
		}
		if(s>10)
		{
			s=0;
		}		
		i2c_start();
		i2c_slave(0XA0);
		i2c_slave(0X00);
		i2c_slave(s);
		i2c_stop();
		delay(1000);
		
	}
}