/*Name: Yogesh
Date: 16-05-2022
Concept: Lift*/
#include<pic.h>
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
int i;
#define UGS RA0//UGS=under ground sensor
#define FFS RA1//FFS=first floor sensor
#define SFS RA2//SFS=second floor sensor
#define TFS RA3//TFS=third floor sensor
#define UGB RB1//UGB=under ground button
#define FFB	RB2//FFB=first floor button
#define SFB RB3//SFB=second floor button
#define TFB RB4//TFB=third floor button
#define forward RC0//Motor forward rotation
#define reverse RC1//Motor reverse rotation
void motor(int a,int b,int c,int d,int e,int f,int g,int h)
{

				if(UGB==1)
				{
					forward=a;
					reverse=b;
					while(UGB==1);
				}
				if(FFB==1)
				{
					forward=c;
					reverse=d;
					while(FFB==1);
				}
				if(SFB==1)
				{
					forward=e;
					reverse=f;
					while(SFB==1);
				}
				if(TFB==1)
				{
					forward=g;
					reverse=h;
					while(TFB==1);
				}
}				


void main()
{
	PORTA=0X00;
	TRISA=0X0F;
	PORTC=0X00;
	TRISC=0X00;
	PORTD=0X00;
	TRISD=0X00;
	PORTB=0X00;
	TRISB=0X1E;
	ANSEL=0X00;
	ANSELH=0X00;
		while(1)
		{
			if(UGS==1)
			{
				i=0;
				PORTD=seg[i];
				motor(0,0,1,0,1,0,1,0);
				while(UGS==1);
			}
			if(FFS==1)
			{
				i=1;
				PORTD=seg[i];
				motor(0,1,0,0,1,0,1,0);
				while(FFS==1);
			}
			if(SFS==1)
			{
				i=2;
				PORTD=seg[i];
				motor(0,1,0,1,0,0,1,0);
				while(SFS==1);
			}
			if(TFS==1)
			{
				i=3;
				PORTD=seg[i];
				motor(0,1,0,1,0,1,0,0);
				while(TFS==1);
			}
		}
}
