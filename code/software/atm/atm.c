/*Name: Yogesh
Date: 5-6-2022
Concept: ATM*/
#include<pic.h>
#include<string.h>
#include"lcd.h"
char a=13;
char rec[10];
int i=0;
int TX1(char data)
{
	TXREG=data;
	while(TXIF==0);
	TXIF=0;
	lcd_cmd(1,0,data);
}
void TX(char *p)
{
	while(*p)
	{
		TX1(*p++);
	}
}
int RC()
{
	char str[];
	TX1(a);
	while(i<7)
	{
	while(RCIF==0);
	rec[i]=RCREG;
	RCIF=0;
	TX1('*');
	if(rec[i]==a)
	{
	break;
	i=0;
	}
	i++;
	}
	strcpy(str,rec);
	//TX(str);
	if(strcmp(str,"Yogesh")==0)
	{
	TX("Password");
	}
	else
	{
	TX("Invalid");
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
	lcd_cmd(0,0,0X38);
 	lcd_cmd(0,0,0X0F);
	lcd_cmd(0,0,0X80);
	while(1)
	{
		TX("Welcome");
		TX1(a);
		TX("Enter the USER ID");
		RC();
	while(1);

	}
}