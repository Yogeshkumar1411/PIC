	#include<pic.h>
#define B1 RC0
#define B2 RC1
#define B3 RC2
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i,count=0;
PORTA=0X00;
TRISA=0X00;
PORTC=0X00;
TRISC=0X07;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
if(B1==1)
{
count++;
while(B1==1);
}
if(B2==1)
{
for(i=0;i<count;i++)
{
PORTA=0XFF;
delay(65000);
PORTA=0X00;
delay(65000);
}while(B2==1);
}
if(B3==1)
{
count=0;
while(B3==1);
}
}
}
