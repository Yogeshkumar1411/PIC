#include<pic.h>
#define B1 RC0
#define B2 RC1
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i,j;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
PORTC=0X00;
TRISC=0X03;
PORTB=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
if(B1==1)
{
for(i=0;i<=9;i++)
{
PORTB=seg[i];
delay(20000);
}
while(B1==1);
}
if(B2==1)
{
for(j=9;j>=0;j--)
{
PORTB=seg[j];
delay(20000);
}
while(B2==1);
}
}
}