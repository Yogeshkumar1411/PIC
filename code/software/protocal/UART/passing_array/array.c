/*Name: Yogesh
Date: 01-06-2022
Conept: Passing_string*/
#include<pic.h>
void TX(char a)
{	
	TXREG=a;	
	while(TXIF==0);
	TXIF=0;
}

void main()
{
char name[10]={'Y','O','G','E','S','H'};
int i=0;
PORTC=0X00;
TRISC=0X00;
TXSTA=0X26;
RCSTA=0X90;
SPBRG=25;
while(1)
{
while(i<6)
	{	
	TX(name[i]);
	i++;
	}
	while(1);
}
	
}