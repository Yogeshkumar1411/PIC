#include<pic.h>
#define B1 RC0
#define B2 RC1
#define B3 RC2
#define B4 RC3
#define B5 RC4
#define B6 RC5
void main()
{
int count=0;
PORTB=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
PORTC=0X00;
TRISC=0X3F;
while(1)
{
if((B1==1)&&(count==0))
{
count=count+1;
while(B1==1);
}
if((B3==1)&&(count==1))
{
count=count+2;
while(B3==1);
}
if((B2==1)&&(count==3))
{
count=count+3;
while(B2==1);
}
if((B4==1)&&(count==6))
{
count=count+4;
while(B4==1);
}
if((B5==1)&&(count==10))
{
PORTB=0X01;
while(B5==1);
}
if(B6==1)
{
count=0;
PORTB=0X00;
while(B6==1);
}
}
}

