/*Name: Yogesh
Date: 01-06-2022
Concept: Receive_protocal*/
#include<pic.h>
#include<string.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTB
int i=0;
int j,k;
char data[10];
void delay(unsigned int ms)
{
while(ms--);
}
void pulse()
{
	EN=1;
	delay(200);
	EN=0;
	delay(200);
}
void display(char a,char b, char c)
{
	RS=a;
	RW=b;
	LCD=c;
	pulse();
	LCD=c<<4;
	pulse();

}
void string(char *data1)
{
	while(*data1)
	{
		display(1,0,*data1++);
	}
}
void tx(char *s)
{
	while(*s)
	{
		TXREG=*s++;
		while(TXIF==0);
		TXIF=0;
	}
}

void RC()
{	
	while(RCIF==0);
	data[i]=RCREG;
	RCIF=0;	
	if(data[i]!=13)
	{
		i++;
	}
	if(data[i]==13)
	{
		data[i]='\0';
		string(data);
		tx(data);		
		i=0;
		if(strcmp(data,"ON")==0)
	{
		RC1=1;
	}
	if(strcmp(data,"OFF")==0)
	{
		RC1=0;
	}
	}

	

}

void main()
{
PORTC=0X00;
TRISC=0X80;
PORTB=0X00;
TRISB=0X00;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X00;
ANSELH=0X00;
TXSTA=0X26;
RCSTA=0X90;
SPBRG=25;
display(0,0,0X02);
display(0,0,0X28);
display(0,0,0X0F);
display(0,0,0X80);

while(1)
{
RC();

}
}

