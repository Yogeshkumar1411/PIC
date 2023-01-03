/*Name: Yogesh
Date: 25/6/22
Concept: GSM_msg_call*/
#include<pic.h>
int count=0;
void delay(unsigned int ms)
{
	while(ms--);
}
void timer(int sec)
{
	while(0<sec)
	{
		if(T0IF==1)
		{
			count++;
			T0IF=0;
		}
		if(count==15)
		{
			count=0;
			sec--;
		}
	}
}
	
void tran(char data)
{
	TXREG=data;
	while(TXIF==0);
	TXIF=0;
	delay(1000);
}
void trans(char *data1)
{
	while(*data1)
	{
		TXREG=*data1++;
		while(TXIF==0);
		TXIF=0;
		delay(1000);
	}
}
void new()
{
		tran(0X0D);	
		tran(0X0A);
}
void main()
{
	TRISC=0X83;
	PORTC=0X00;
	TXSTA=0X26;
	RCSTA=0X90;
	SPBRG=25;
	OPTION_REG=0X07;
	while(1)
	{
		if(RC0==1)
		{
			trans("AT");
			new();
			delay(10000);
			trans("ATD+918220276181;");
			new();
			delay(10000);
			timer(20);
			trans("ATH");
			new();
			delay(10000);
			while(RC0==1);
		}
		if(RC1==1)
		{
			trans("AT");
			new();
			delay(10000);
			trans("AT+CMGF=1");
			new();
			delay(10000);
			trans("AT+CMGS=\"+919698902452\"");
			new();
			delay(10000);
			trans("Dear Jayaprakash, your resume has been shortlisted for final round for the post of EMBEDDED DEVELOPER at Robert BOSCH. Call 9566511486.");
			new();
			delay(10000);
			tran(0X1A);
			new();
			delay(10000);
			while(RC1==1);
		}
	}
}