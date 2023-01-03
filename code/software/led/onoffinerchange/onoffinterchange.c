#include<pic.h>
#define B1 RC0
#define B2 RC1
#define B3 RC2
void main()
{
int a=1,b=0,c;
PORTB=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
PORTC=0X00;
TRISC=0X07;
while(1)
{
if(B1==1)
{
RB0=a;
while(B1==1);
}
if(B2==1)
{
RB0=b;
while(B2==1);
}
if(B3==1)
{

c=a;
a=b;
b=c;
}
}
}
