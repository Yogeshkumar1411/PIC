/*Name: Yogesh
Date: 01-06-2022
Concept: Receive_protocal*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTB
void delay(unsigned int ms)
{
while(ms--);
}
void pulse()
{
	EN=1;
	delay(2000);
	EN=0;
	delay(2000);
}
void string(char *data1)
{
	while(*data1)
	{
	RS=1;
	RW=0;
	LCD=*data1;
	pulse();
	LCD=*data1<<4;
	pulse();
	data1++;
	}
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
void RC()
{	
	int i=0;	
	char data[50];	
	while(i<50)
	{
	while(RCIF==0);
	data[i]=RCREG;
	if(data[i]==0X0D)
	{
	data[i]='\0';
	string(data);
	i=0;
	}	
	//display(1,0,data[i]);
	//delay(75);
	i++;
RCIF=0;
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
display(0,0,0X18);
while(1)
{
RC();
}
}

