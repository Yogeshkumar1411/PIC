/*
 * File:   Industrial automation.c
 * Author: Yogesh
 *
 * Created on 03 July 2022, 09:49
 */


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
	unsigned char read1;
	if(i==2)
	{
		ACKDT=1;
	}
	else
	{
		ACKDT=0;
	}
	while(BF==0);
	read1=SSPBUF;
	SSPOV=0;
	ACKEN=1;
	BF=0;
	return read1;
}
void string(char *p)
{
	while(*p)
	{	
		lcd_cmd(1,0,*p++);
	}
}
void conversion(char disp[])
{
	lcd_cmd(0,0,0X80);
	string("time: ");
	lcd_cmd(1,0,((disp[2]&0X30)>>4)+0X30);
	lcd_cmd(1,0,(disp[2]&0X0F)+0X30);
	lcd_cmd(1,0,':');

	lcd_cmd(1,0,((disp[1]&0X70)>>4)+0X30);
	lcd_cmd(1,0,(disp[1]&0X0F)+0X30);
	lcd_cmd(1,0,':');

	lcd_cmd(1,0,((disp[0]&0X70)>>4)+0X30);
	lcd_cmd(1,0,(disp[0]&0X0F)+0X30);
    if(disp[2]==0X07&&disp[1]==0X33&&disp[0]==0X00)
    {
        RC6=1;
        RC7=0;
        if(RA2==1)
        {
        RC6=0;
        RC7=0;    
        }
    }
    if(disp[2]==0X07&&disp[1]==0X36&&disp[0]==0X00)
    {
        RC6=0;
        RC7=1;
        if(RA3==1)
        {
        RC6=0;
        RC7=0;    
        }
    }	
}
void main()
{
	unsigned char i,read[6];    
	TRISC=0X18;
	PORTC=0X00;
    TRISA=0X02;
    PORTA=0X00;
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
	  	
		
	while(1)
	{
        if(RA1==1)
        {
            
            I2C_Start();
            I2C_Slave(0XD0);
            I2C_Slave(0X00);
            I2C_Slave(0X00);
            I2C_Slave(0X00);
            I2C_Slave(0X00);
            I2C_Stop();
            delay(1000);            
        }	
		I2C_Start();
		I2C_Slave(0XD0);
		I2C_Slave(0X00);
		I2C_Restart();
		I2C_Slave(0XD1);
		for(i=0;i<3;i++)
		{
			RCEN=1;
			read[i]=I2C_Read(i);
		}
		I2C_Stop();
		conversion(read);
		delay(1000);
        

	}
}