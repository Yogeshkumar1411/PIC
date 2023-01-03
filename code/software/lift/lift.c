/*Name: Yogesh
Date: 16-05-2022
Concept: Lift project with interrupt*/
#include<pic.h>
void delay(unsigned int ms)
{
while(ms--);
}
void interrupt Ext();
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
int floor;
int button;
//int sensor;
#define UGS RC4//UGS=under ground sensor
#define FFS RC5//FFS=first floor sensor
#define SFS RC6//SFS=second floor sensor
#define TFS RC7//TFS=third floor sensor
#define UGB RA0//UGB=under ground button
#define FFB	RA1//FFB=first floor button
#define SFB RA2//SFB=second floor button
#define TFB RA3//TFB=third floor button
#define forward RB0//Motor forward rotation
#define reverse RB1//Motor reverse rotation
#define on 1//1 for on
#define off 0//0 for off
int operation(int GFF,int GFR,int FFF,int FFR,int SFF,int SFR,int TFF,int TFR)
//GFF=ground floor forward
//GFR=ground floor reverse
//FFF=first floor forward
//FFR=first floor reverse
//SFF=second floor forward
//SFR=second floor reverse
//TFF=third floor forward
//TFR=third floor reverse
{
	/*if()
	{
	sensor=1;
	}
	if(FFS==on)
	{
	sensor=2;
	}
	if(SFS==on)
	{
	sensor=3;
	}
	if(TFS==on)
	{
	sensor=4;
	}*/
	if(UGS==on)
	{
	PORTD=seg[0];
	forward=GFF;
	reverse=GFR;
	floor=1;
	}
	if(FFS==on)
	{
	PORTD=seg[1];
	forward=FFF;
	reverse=FFR;
	floor=2;
	}
	if(SFS==on)
	{
	PORTD=seg[2];                
	forward=SFF;
	reverse=SFR;
	floor=3;
	}
	if(TFS==on)
	{
	PORTD=seg[3];
	forward=TFF;
	reverse=TFR;
	floor=4;
	}	
}
int rotation()
{
forward=off;
reverse=off;
return 0;
}
void main()
{
PORTA=0X00;
TRISA=0X0F;
PORTC=0X00;
TRISC=0XF0;
PORTD=0X00;
TRISD=0X00;
PORTB=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
//GIE=1;
//PEIE=1;
//INTE=1;
while(1)
{

if(UGB==on)
	{
	button=1;
	}
if(FFB==on)
	{
	button=2;
	}
if(SFB==on)
	{
	button=3;
	}
if(TFB==on)
	{
	button=4;
	}
if(button==1)
	{
	operation(0,0,0,1,0,1,0,1);
	}
if(button==2)
	{
	operation(1,0,0,0,0,1,0,1);
	}
if(button==3)
	{
	operation(1,0,1,0,0,0,0,1);
	}
if(button==4)
	{
	operation(1,0,1,0,1,0,0,0);
	}
}
}
/*void interrupt Ext()
{
	if(INTF==1)
	{
		button=0;
		forward=reverse=off;
if(UGB==on)
	{
	button=1;
	}
if(FFB==on)
	{
	button=2;
	}
if(SFB==on)
	{
	button=3;
	}
if(TFB==on)
	{
	button=4;
	}
if(button==1&&floor==1)
{
	forward=off;
	reverse=on;
	if(UGS==on)
	{
	rotation();
	}
floor=0;
INTF=0;	
}
if(button==2&&floor==1)
{
	forward=on;
	reverse=off;
	if(FFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==3&&floor==1)
{
	forward=on;
	reverse=off;
	if(SFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==4&&floor==1)
{
	forward=on;
	reverse=off;
	if(TFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==1&&floor==2)
{
	forward=off;
	reverse=on;
	if(UGS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==2&&floor==2)
{
	forward=off;
	reverse=on;
	if(FFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==3&&floor==2)
{
	forward=on;
	reverse=off;
	if(SFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==4&&floor==2)
{
	forward=on;
	reverse=off;
	if(TFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==1&&floor==3)
{
	forward=off;
	reverse=on;
	if(UGS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==2&&floor==3)
{
	forward=off;
	reverse=on;
	if(FFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==3&&floor==3)
{
	forward=off;
	reverse=on;
	if(SFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==4&&floor==3)
{
	forward=on;
	reverse=off;
	if(TFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==1&&floor==4)
{
	forward=off;
	reverse=on;
	if(UGS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==2&&floor==4)
{
	forward=off;
	reverse=on;
	if(FFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==3&&floor==4)
{
	forward=off;
	reverse=on;
	if(SFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
if(button==4&&floor==4)
{
	forward=on;
	reverse=off;
	if(TFS==on)
	{
	rotation();
	}
floor=0;
INTF=0;
}
}
}*/


