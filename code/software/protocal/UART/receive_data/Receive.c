/*Name: Yogesh
Date: 01-06-2022
Concept: Receive_protocal*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
void delay(unsigned int ms)
{
while(ms--);
}
void display(char a,char b, char c)
{
	RS=a;
	RW=b;
	LCD=c;
	EN=1;
	delay(2000);
	EN=0;
	delay(2000);
}
/*void TX(char a)
{
	TXREG=a;
	display(1,0,a);
	while(TXIF==0);
	TXIF=0;
}*/
int RC()
{	
	int i=0;	
	char data[4];	
	while(i<4)
	{
	while(RCIF==0);
	data[i]=RCREG;
	RCIF=0;	
	display(1,0,data[i]);
	if(data[i]==13)
	{
		break;
	}
	i++;
	}
	if(data[0]=='O'&&data[1]=='N')
	{
	if(data[2]==13)
	{
	RC1=1;	
	}	
	}	
	if(data[0]=='O'&&data[1]=='F'&&data[2]=='F')
	{
	if(data[3]==13)
	{
	RC1=0;	
	}
	}
}
void main()
{
PORTC=0X00;
TRISC=0X80;
PORTD=0X00;
TRISD=0X00;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X00;
ANSELH=0X00;
TXSTA=0X26;
RCSTA=0X90;
SPBRG=25;
display(0,0,0X38);
display(0,0,0X0F);
display(0,0,0X80);
while(1)
{
RC();
}
}

