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
	delay(10000);
	EN=0;
	delay(10000);
}
void main()
{
	char a[]="calling";
	char b[]="Invalid";
	char c[]="Redialling";
	char d[10];
	int i,j,k,l,m,z=0;
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
	lcd_cmd(0,0,0X80);
	while(1)
	{
		R1=1;R2=R3=R4=0;
		if(C1==1)
		{	
			lcd_cmd(1,0,0X30+1);
			d[i]=1;
			i++;
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,0X30+2);
			d[i]=2;
			i++;
			while(C2==1);
		}
		if(C3==1)
		{	
			lcd_cmd(1,0,0X30+3);
			d[i]=3;
			i++;
			while(C3==1);
		}
		R2=1;R1=R3=R4=0;
		if(C1==1)
		{	
			lcd_cmd(1,0,0X30+4);
			d[i]=4;
			i++;
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,0X30+5);
			d[i]=5;
			i++;
			while(C2==1);
		}
		if(C3==1)
		{	
			lcd_cmd(1,0,0X30+6);
			d[i]=6;
			i++;
			while(C3==1);
		}
		R3=1;R1=R2=R4=0;
		if(C1==1)
		{	
			lcd_cmd(1,0,0X30+7);
			d[i]=7;
			i++;
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,0X30+8);
			d[i]=8;
			i++;
			while(C2==1);
		}
		if(C3==1)
		{	
			lcd_cmd(1,0,0X30+9);
			d[i]=9;
			i++;
			while(C3==1);
		}
		R4=1;R1=R2=R3=0;
		if(C1==1)
		{	
			if(i==10)
			{
				lcd_cmd(0,0,0XC0);
				while(a[j]!='\0')
					{
						lcd_cmd(1,0,a[j]);
						j++;					
					}
			z++;
			}
			if(i!=10)
			{
				lcd_cmd(0,0,0XC0);
				
				while(b[k]!='\0')
					{

						lcd_cmd(1,0,b[k]);
						k++;
					}
				lcd_cmd(0,0,0X1C);
			z++;
			}
			while(C1==1);
		}
		if(C2==1)
		{	
			lcd_cmd(1,0,0X30);
			d[i]=0;
			i++;			
			while(C2==1);
		}
		if(C3==1&&z==1)
		{			
				lcd_cmd(0,0,0XC0);
				while(c[l]!='\0')
					{
						lcd_cmd(1,0,c[l]);	
						l++;
					}			
			while(C3==1);
		}
	}
}

