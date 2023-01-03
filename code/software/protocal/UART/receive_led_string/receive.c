/*Name: Yogesh
Date: 01-06-2022
Concept: Receive_protocal*/
#include<pic.h>
#include<string.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
int *p;
	int q=0,e=0;	
	int i=0;
	int cmp,cmp1;
	char data[4];
	char m[78]="ON";
	char n[89]="OFF";	
	char o[56];
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
void tx1(char b)
{
TXREG=b;
while(TXIF==0);
TXIF=0;
}
void TX(char *a)
{
	while(*a)
	{
	tx1(*a++);
	}
	
}
void RC()
{
	
	while(i<3)
	{
		while(RCIF==0);
		data[i]=RCREG;
		RCIF=0;	
		display(1,0,data[i]);
		TX(data[i]);
		i++;
	
	}
strcpy(o,data);
if(data[i]==0x0d)
{

e=(strcmp(o,m)==0);
q=(strcmp(o,n)!=0);
if(e==1)
{
			
		RC1=1;	
		
}
if(q==1)
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


//display(0,0,0XC7);
//display(1,0,e+0x30);
//display(0,0,0XC8);
//display(1,0,q+0x30);
}


