/*Name: Yogesh
Date: 01-06-2022
Concept: Receive_protocal*/
#include<stdio.h>
void TX(char a)
{
	TXREG=a;
	while(TXIF==0);
	TXIF=0;
}
void RC()
{
	char data=RCREG;
	while(RCIF==0);
	RCIF=0;
	TX(data);
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
RC();
}
}
