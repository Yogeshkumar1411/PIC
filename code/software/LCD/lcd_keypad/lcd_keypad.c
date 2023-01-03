/*NAME: YOGESH
DATE: 25-03-2022
CONCEPT: KEYPAD_LCD*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
#define C1 RA0
#define C2 RA1
#define C3 RA2
#define R1 RA3
#define R2 RA4
#define R3 RA5
#define R4 RA6
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
	delay(1000);
	EN=0;
	delay(1000);
}
void main()
{
	PORTA=0X00;
	TRISA=0X07;
	PORTD=0X00;
	TRISD=0X00;
	PORTE=0X00;
	TRISE=0X00;
	ANSEL=0X00;
	ANSELH=0X00;
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	lcd_cmd(0,0,0XC0);
	while(1)
	{
		R1=1;R2=R3=R4=0;
		if(C1==1)
		{	
			lcd_cmd(1,0,'1');
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,'2');
			while(C2==1);
		}
		if(C3==1)
		{	
			lcd_cmd(1,0,'3');
			while(C3==1);
		}
		R2=1;R1=R3=R4=0;
		if(C1==1)
		{	
			lcd_cmd(1,0,'4');
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,'5');
			while(C2==1);
		}
		if(C3==1)
		{	
			lcd_cmd(1,0,'6');
			while(C3==1);
		}
		R3=1;R1=R2=R4=0;
		if(C1==1)
		{	
			lcd_cmd(1,0,'7');
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,'8');
			while(C2==1);
		}
		if(C3==1)
		{	
			lcd_cmd(1,0,'9');
			while(C3==1);
		}
		R4=1;R1=R2=R3=0;
		if(C1==1)
		{	
			lcd_cmd(1,0,'*');
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,'0');
			while(C2==1);
		}
		if(C3==1)
		{	
			lcd_cmd(1,0,'#');
			while(C3==1);
		}
	}
}
