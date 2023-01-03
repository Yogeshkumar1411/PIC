#include<pic.h>
void main()
{
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
PORTA=0XFF;
}
}
