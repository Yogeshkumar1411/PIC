#include<pic.h>
void delay(unsigned int a)
{
while(a--);
}
void main()
{
int i;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
PORTB=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
for(i=0;i<10;i++)
{
PORTB=seg[i];
delay(60000);
}
}
}