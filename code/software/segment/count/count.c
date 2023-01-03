#include<pic.h>
#define B1 RA0
#define B2 RA1
void main()
{
int i;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
PORTA=0X00;
TRISA=0X03;
PORTC=0X00;
TRISC=0X00;
ANSEL=0X00;
ANSELH=0X00;
i=0;
while(1)
{
while(i<10)
{
if(B1==1)
{
i++;
PORTC=seg[i];
while(B1==1);
}
if(B2==1)
{
i--;
PORTC=seg[i];
while(B2==1);
}
}
}
}