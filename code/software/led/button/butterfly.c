#include<pic.h>
#define B1 RA0
#define B2 RA5
void main()
{
PORTA=0x00;
TRISA=0X21;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
if(B1==1)
{
PORTA=0X1E;
}
if(B2==1)
{
PORTA=0X00;
}
}
}
