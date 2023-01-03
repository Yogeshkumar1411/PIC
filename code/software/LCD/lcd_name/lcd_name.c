/*Name: Yogesh
Date: 22-03-2022
Concept: LCD basic simplified*/
#include<pic.h>
#include<string.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
void delay(unsigned int a)
	{
	while(a--);
	}
void lcd_cmd(char a,char b,char c)
	{
	RS=a;
	RW=b;
	LCD=c;
	EN=1;
	delay(2000);
	EN=0;
	delay(2000);
	}
void main()
	{
	char a[20]="Yogeshkumar";
	char b[20]="EEE";
	int i=0,j=0;
	//b=strlen(a);
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	while(1)
		{
		lcd_cmd(0,0,0X80);			
		while(a[i]!='\0')
			{
			lcd_cmd(1,0,a[i]);						
			i++;			
			}			
		lcd_cmd(0,0,0X18);
		lcd_cmd(0,0,0XC0);
		while(b[j]!='\0')
			{
			lcd_cmd(1,0,b[j]);						
			j++;			
			}
			//lcd_cmd(0,0,0X1C);
		}
	}
	