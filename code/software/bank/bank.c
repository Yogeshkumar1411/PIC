/*Name: Yogesh
Date: 15.04.2022
Concept: Bank*/
#include<pic.h>
#include<string.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
#define C1 RC0
#define C2 RC1
#define C3 RC2
#define R1 RC3
#define R2 RC4
#define R3 RC5
#define R4 RC6
char a[20]="Welcome";
char b[20]="SBI";
char c[20]="Enter the Name";
char z[20]="1234";
char d[20];
char e[20]="Enter pin";
char f[20]="Invalid name";
int count=0;
int i=0;
int j=0;
int k=0;
int l=0;
int m=0;
int n=0;
int cmp;
int pass=0;
int *ptr;

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
	delay(2000);
	EN=0;
	delay(2000);
}

void num(int y)
{

	lcd_cmd(1,0,*ptr);
	lcd_cmd(1,0,0X30+y);
	d[l]=y;
	l++;
	*ptr++;
}
void timer(int sec)
{
	while(0<sec)
	{
		if(TMR1IF==1)
		{
			count++;
		}
		TMR1IF=0;
		if(count==2)
		{
		count=0;
		sec--;
		}
	}
}
void main()
{
	TRISC=0X07;
	PORTC=0X00;
	TRISD=0X00;
	PORTD=0X00;
	TRISE=0X00;
	PORTE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	T1CON=0X31;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	ptr=0XC0;
	while(1)
	{
		/*lcd_cmd(0,0,0X84);
		while(a[i]!='\0')
		{
			lcd_cmd(1,0,a[i]);
			i++;
		}
		lcd_cmd(0,0,0XC6);
		while(b[j]!='\0')
		{
			lcd_cmd(1,0,b[j]);
			j++;
		}
		timer(5);
		lcd_cmd(0,0,0X01);
		lcd_cmd(0,0,0X80);
		while(c[k]!='\0')
		{
			lcd_cmd(1,0,c[k]);
			k++;
		}
		lcd_cmd(0,0,0X01);*/
		
		R1=1;R2=R3=R4=0;
	if(C1==1)
	{
		num(1);
		pass=1;
		while(C1==1);
	}
	if(C2==1)
	{
		num(2);
		pass=1+2;
		while(C2==1);
	}
	if(C3==1)
	{
		num(3);
		pass=3+3;
		while(C3==1);
	}
	R2=1;R1=R3=R4=0;
	if(C1==1)
	{
		num(4);
		pass=6+4;
		while(C1==1);
	}
	if(C2==1)
	{
		num(5);
		while(C2==1);
	}
	if(C3==1)
	{
		num(6);
		while(C3==1);
	}
	R3=1;R2=R1=R4=0;
	if(C1==1)
	{
		num(7);
		while(C1==1);
	}
	if(C2==1)
	{
		num(8);
		while(C2==1);
	}
	if(C3==1)
	{
		num(9);
		while(C3==1);
	}
	R4=1;R2=R1=R3=0;
	if(C2==1)
	{
		num(0);
		while(C2==1);
	}


	if(C1==1&&pass==10)
	{	
			lcd_cmd(0,0,0X01);
			lcd_cmd(0,0,0X80);
			while(e[m]!='\0')
			{
			lcd_cmd(1,0,e[m]);
			m++;
		
			}
	}
	if(C1==1)
		{
			lcd_cmd(0,0,0X01);
			lcd_cmd(0,0,0X80);
			while(f[n]!='\0')
			{
			lcd_cmd(1,0,e[n]);
			n++;
			}
		}
	
}
}
