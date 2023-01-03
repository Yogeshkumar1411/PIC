/*Name: Yogesh
Date: 20-06-2022
Concept: I2C-RTC slave*/
#include<pic.h>
#include"lcd.h"
void hold()
{
	while(SSPIF==0);
	SSPIF=0;
}
void I2C_Start()
{
	SEN=1;
	hold();
}
void I2C_Stop()
{
	PEN=1;
	hold();
}
void I2C_Slave(char data)
{
	ACKSTAT=1;
	SSPBUF=data;
	while(ACKSTAT==1);
	hold();
}
void I2C_Restart()
{
	RSEN=1;
	hold();
}
unsigned char I2C_Read(unsigned int i)
{
	unsigned char read;
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
void string(char *p)
{
	while(*p)
	{	
		lcd_cmd(1,0,*p++);
	}
}
void main()
{
unsigned char read;
	TRISC=0X18;
	PORTC=0X00;
	TRISD=0X00;
	PORTD=0X00;
	TRISE=0X00;
	PORTE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	SMP=1;
	SSPCON=0X28;
	//SSPCON2=0X00;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0E);
	I2C_Start();// writing to the RTC
	I2C_Slave(0XD0);
	I2C_Slave(0X00);	
	I2C_Slave('A');	
	
	I2C_Stop();
	delay(1000);
	while(1)
	{
		I2C_Start();
		I2C_Slave(0XD0);
		I2C_Slave(0X00);
		I2C_Restart();
		I2C_Slave(0XD1);// Reading from the RTC	
		RCEN=1;
		read=I2C_Read(0);		
		I2C_Stop();
		lcd_cmd(0,0,0X80);
		lcd_cmd(1,0,read);
		delay(1000);

	}
}