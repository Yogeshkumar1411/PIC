/*Name: Yogesh
Date: 21-06-2022
Concept: Internal_EEPROM*/
#include<pic.h>
int i=0;
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
void delay(unsigned int ms)
{
	while(ms--);
}



void main()
{
	
	TRISC=0X01;
	PORTC=0X00;
	TRISD=0X00;
	PORTD=0X00;
	i=eeprom_read(0);
	PORTD=seg[i];
	while(1)
	{

		if(RC0==1)
		{
			i++;
			while(RC0==1);
		}
		if(i>10)
		{
			i=0;
		}

		eeprom_write(0,i);
	
	}
}