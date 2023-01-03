#include<pic.h>

#define B1 RC0
#define B2 RC1
#define B3 RC2
void main()
{
int flag=0;
PORTC=0X00;
TRISC=0X07;
ANSEL=0X00;
ANSELH=0X00;
PORTB=0X00;
TRISB=0X00;
while(1)
{
if(B1==1&&flag==0)
{
PORTB=0X01;
flag=1;
while(B1==1);
}
if(B2==1&&flag==0)
{
PORTB=0X02;
flag=1;
while(B2==1);
}
if(B3==1)
{
flag=0;
PORTB=0X00;
while(B3==1);
}
}
}

