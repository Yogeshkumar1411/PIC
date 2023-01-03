/*Name: Yogesh
Date: 01-07-2022
Concept: Helmet-unit*/
#include<pic.h>
void tx(char *data)
{
	while(*data)
	{
		TXREG=*data++;
		while(TXIF==0);
		TXIF=0;
	}
}
void main()
{
	PORTA=0X00;
	TRISA=0X04;
	ANSELA=0X00;
	TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
	while(1)
	{
		if(RA2==1)
		{
			tx("Helmet wore");
		}
	}
}