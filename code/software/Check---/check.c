#include<pic.h>
void main()
{
	PORTA=0X00;
	TRISA=0X01;
	ANSEL=0X00;
	ANSELH=0X00;
	while(1)
	{
		if(RA0==1)
		{
			RA1=1;
		}
	}
}