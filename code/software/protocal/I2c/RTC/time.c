/*Name: Yogesh
Date: 17-06-2022
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
	if(i==6)
	{
		ACKDT=1;
	}
	else
	{
		ACKDT=0;
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
		lcd_cmd(1,*p++);
	}
}
void conversion(char disp[])
{
	lcd_cmd(0,0X80);
	string("time: ");
	lcd_cmd(1,((disp[2]&0X30)>>4)+0X30);
	lcd_cmd(1,(disp[2]&0X0F)+0X30);
	lcd_cmd(1,':');

	lcd_cmd(1,((disp[1]&0X70)>>4)+0X30);
	lcd_cmd(1,(disp[1]&0X0F)+0X30);
	lcd_cmd(1,':');

	lcd_cmd(1,((disp[0]&0X70)>>4)+0X30);
	lcd_cmd(1,(disp[0]&0X0F)+0X30);
	if(disp[2]==0X12&&disp[1]==0X11&&disp[0]==0X00)
	{
		RC0=1;
	}


	lcd_cmd(0,0XC0);
	string("Date: ");
	//lcd_cmd(1,((disp[3]&0X00)>>4)+0X30);
	//lcd_cmd(1,(disp[3]&0X07)+0X30);
	//lcd_cmd(1,'/');
	
	lcd_cmd(1,((disp[4]&0X30)>>4)+0X30);
	lcd_cmd(1,(disp[4]&0X0F)+0X30);
	lcd_cmd(1,'/');	
	
	lcd_cmd(1,((disp[5]&0X10)>>4)+0X30);
	lcd_cmd(1,(disp[5]&0X0F)+0X30);
	lcd_cmd(1,'/');

	lcd_cmd(1,((disp[6]&0XF0)>>4)+0X30);
	lcd_cmd(1,(disp[6]&0X0F)+0X30);

	

	
}
void main()
{
	unsigned char i,j,read[7],write;
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
	SSPADD=4;
	//SSPCON2=0X00;
	lcd_cmd(0,0X38);
	lcd_cmd(0,0X0E);
	/*I2C_Start();// writing to the RTC
	I2C_Slave(0XD0);
	I2C_Slave(0X00);	
	I2C_Slave(0X50);
	I2C_Slave(0X50);
	I2C_Slave(0X12);
	I2C_Slave(0X03);
	I2C_Slave(0X28);
	I2C_Slave(0X06);
	I2C_Slave(0X22);
	
	I2C_Stop();
	delay(1000);*/
	while(1)
	{
		I2C_Start();
		I2C_Slave(0XD0);
		I2C_Slave(0X00);
		I2C_Restart();
		I2C_Slave(0XD1);// Reading from the RTC	
		for(i=0;i<7;i++)
		{
			RCEN=1;
			read[i]=I2C_Read(i);
		}
		I2C_Stop();
		conversion(read);
		delay(1000);

	}
}
