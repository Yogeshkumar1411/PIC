#include<pic.h>
void delay(unsigned int c)
{
while(c--);
}
void main()
{
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
PORTA=0XFF;
delay(10000);
PORTA=0X00;
delay(10000);
}
}