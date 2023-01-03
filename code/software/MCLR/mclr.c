#include<pic.h>
void delay(unsigned int a)
{
while(a--);
}
void main()
{
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
PORTA=0X01;
delay(65000);
PORTA=0X00;
delay(65000);
PORTA=0X02;
delay(65000);
PORTA=0X00;
delay(65000);
PORTA=0X04;
delay(65000);
PORTA=0X00;
delay(65000);
}
}