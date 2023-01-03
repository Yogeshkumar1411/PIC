#include<pic.h>
void main()
{
int i;
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
for(i=0;i<=6;i++)
{
PORTA=0X80;
PORTA=1>>i;

}
}