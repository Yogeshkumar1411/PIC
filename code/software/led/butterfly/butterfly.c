#include<pic.h>
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i,j,k,l;
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
for(i=3,j=4;i>=0,j<=7;i--,j++)
{
PORTA|=(1<<i|1<<j);
delay(60000);
}
for(k=0,l=7;k<=3,l>=4;k++,l--)
{
PORTA^=(1<<l|1<<k);
delay(60000);
}
}
}
