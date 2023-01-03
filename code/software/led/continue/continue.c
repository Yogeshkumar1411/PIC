#include<pic.h>
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i;
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
for(i=7;i>=0;i--)
{

PORTA=1<<i;
delay(10000);
}

}
}