#include<pic.h>
#define B1 RC0
#define B2 RC1
#define B3 RC2
#define B4 RC3
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i,count=0;
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
count++;
while(B1==1);
}
if(B2==1)
{
count++;
while(B2==1);
}
if(B3==1)
{
for(i=0;i<count;i++)
{
PORTB=0X01;
delay(60000);
PORTB=0X00;
delay(60000);

}while(B3==1);
}
if(B4==1)
{
count--;
while(B4==1);
}
}
}