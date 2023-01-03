/*Name: Yogesh
Date: 23-05-2022
Concept: Car parking*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
int low,high,DV,out;
void delay(unsigned int ms)
{
while(ms--);
}
void lcd_cmd(char a,char b,char c)
{
RS=a;
RW=b;
LCD=c;
EN=1;
delay(1000);
EN=0;
delay(1000);
}
void print(char *p)
{
while(*p!='\0')
{
lcd_cmd(1,0,*p);
p++;
}
}
int adc()
{
int a,b,c,d,e,f;
ADCON0=0X83;
low=ADRESL;
high=ADRESH;
DV=low+(high*256);
/*a=DV/1000;
b=DV%1000;
c=b/100;
d=b%100;
e=d/10;
f=d%10;
lcd_cmd(0,0,0X80);
lcd_cmd(1,0,0X30+a);
lcd_cmd(1,0,0X30+c);
lcd_cmd(1,0,0X30+e);
lcd_cmd(1,0,0X30+f);*/
return DV; 
}

void main()
{
PORTA=0X00;
TRISA=0X01;
PORTC=0X00;
TRISC=0X00;
PORTD=0X00;
TRISD=0X00;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X01;
ANSELH=0X00;
ADCON1=0X80;
lcd_cmd(0,0,0X38);
lcd_cmd(0,0,0X0E);
while(1)
{
	out=adc();
//lcd_cmd(0,0,0X01);
	lcd_cmd(0,0,0XC0);
	print("State:");
	if(out>=600)
	{
	lcd_cmd(0,0,0XC6);
	print("danger");
	RC0=1;
	}
	if(out<600)
	{
	lcd_cmd(0,0,0XC6);
	print("safe");
	RC0=0;
	}
}
}
