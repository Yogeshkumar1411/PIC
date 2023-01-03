/*Name: Yogesh
Date: 06-04-2022
Concept: ADC_basic*/
#include<pic.h>
#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTB
int out;
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
	delay(500);
	EN=0;
	delay(500);

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
	
	int H,L,DV=0,b=0,c=0,d=0,e=0,f=0,g=0;

ADCON0=0X85;	
ADCON1=0X80;
GO=1;
while(GO==1);
	H=ADRESH;
	L=ADRESL;
	DV=L+(H*256);

		c=DV/1000;
		b=DV%1000;

		e=b/100;
		d=b%100;
		
		g=d/10;
		f=d%10;
		
		lcd_cmd(0,0,0XC0);
		lcd_cmd(1,0,0X30+c);
		lcd_cmd(1,0,0X30+e);
		lcd_cmd(1,0,0X30+g);
		lcd_cmd(1,0,0X30+f);
return DV;
}
int main()
{
PORTA=0X00;
TRISA=0X02;
PORTB=0X00;
TRISB=0X00;
PORTC=0X00;
TRISC=0X00;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X02;
ANSELH=0X00;
lcd_cmd(0,0,0X38);
lcd_cmd(0,0,0X0E);

lcd_cmd(0,0,0X01);
while(1)
{
lcd_cmd(0,0,0X80);
//lcd_cmd(1,0,'A');
print("PIC-ADC");
out=adc();
if(out>25)
{
	RC0=1;
}
if(out<25)
{
	RC0=0;
}
}
}
