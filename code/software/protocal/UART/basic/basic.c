/*Name: Yogesh
Date: 31-05-2022
Conept: Basic*/
#include<pic.h>
__CONFIG(0X2CE4);
void TX(char *a)
	{
while(*a)
{
	TXREG=*a++;
	while(TXIF==0);
	TXIF=0;
}
	}
void main()
{
PORTC=0X00;
TRISC=0X00;
TXSTA=0X26;
RCSTA=0X90;
SPBRG=25;
while(1)
	{
	TX("Arul");
	}
}
