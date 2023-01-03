#include<pic.h>
void main()
{
PORTD=0X00;
TRISD=0X00;

while(1)
{
PORTD=0XFF;
}
}