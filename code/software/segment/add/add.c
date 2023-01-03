#include<pic.h>
#define B1 RC0
#define B2 RC1
#define B3 RC2
#define B4 RC3
void main()
{
int i;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
PORTB=0X00;
TRISB=0X00;
PORTC=0X00;
TRISC=0X0F;
ANSEL=0X00;
ANSELH=0X00;
i=0;
while(1)
{
if(B1==1)
{
i++;
while(B1==1);
}
if(B2==1)
{
i++;
while(B2==1);
}
if(B3==1)
{
PORTB=seg[i];
while(B3==1);
}
if(B4==1)
{
i=0;
}
}
}