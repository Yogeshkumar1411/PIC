/*Name: Yogesh
Date: 03-07-2022
Concept: Industrial automation - Main gate closing on time and siren alarm on time using RTC
and calculating generator run time.  With that by using LDR to turn on the lights in the 
industry
*/
#include<pic.h>
#include"lcd.h"
#define EB_On RA0//EB mode input
#define Generator_On RA1//Generator mode input
#define Heat_danger RA4//Fire alarm while fire hazard
#define Shift_man_alarm RC1//Shift management Siren
#define EB_LED_on RB0//indication of EB mode
#define Gen_LED_on RB1//indication of Generator mode
#define Diesel_1 RB3//diesel level 1 litre
#define Diesel_2 RB4//diesel level 0.5 litre
#define Reset RB5//Reset button the flags for GSM purpose
unsigned char i,read[6];//for RTC
int  variable=0,Gen_a,Gen_b,Gen_c,Gen_d,Gen_e,Gen_f;//Variables for generator's run time at present
int Pre_a1,Pre_b1,Pre_c1,Pre_d1,Pre_e1,Pre_f1;//Variables for generator's run time at previous
int high,low,sensorvalue;//For the PT100 samplings
int temp_a,temp_b,temp_c,temp_d,temp_e,temp_f;//PT100 variables
int Generator=0,store,retain=0;//EEPROM variables
char stop='m';//For storing the generator start
int flag1=0;//Interlocking the GSM msg
int flag2=0;//Interlocking the GSM msg
int flag_supply=0;//Interlocking the supply
//const float vt_factor=1.689;
//const float offset=0;
int vari1;
float temp;
//I2C functions
void hold()
{
	while(SSPIF==0);
	SSPIF=0;
}
void I2C_Start()
{
	SEN=1;
	hold();
}
void I2C_Stop()
{
	PEN=1;
	hold();
}
void I2C_Slave(char data)
{
	ACKSTAT=1;
	SSPBUF=data;
	while(ACKSTAT==1);
	hold();
}
void I2C_Restart()
{
	RSEN=1;
	hold();
}
unsigned char I2C_Read(unsigned int i)
{
	unsigned char read1;
	if(i==2)
	{
		ACKDT=1;
	}
	else
	{
		ACKDT=0;
	}
	while(BF==0);
	read1=SSPBUF;
	SSPOV=0;
	ACKEN=1;
	BF=0;
	return read1;
}
void string(char *p)
{
	while(*p)
	{	
		lcd_cmd(1,0,*p++);
	}
}
//Time display
void conversion(char disp[])
{
	lcd_cmd(0,0,0X80);
	string("time  : ");
	lcd_cmd(1,0,((disp[2]&0X30)>>4)+0X30);
	lcd_cmd(1,0,(disp[2]&0X0F)+0X30);
	lcd_cmd(1,0,':');

	lcd_cmd(1,0,((disp[1]&0X70)>>4)+0X30);
	lcd_cmd(1,0,(disp[1]&0X0F)+0X30);
	lcd_cmd(1,0,':');

	lcd_cmd(1,0,((disp[0]&0X70)>>4)+0X30);
	lcd_cmd(1,0,(disp[0]&0X0F)+0X30);
    	
}
//Function for gate and siren operation
void Gate_Siren(char read1[])
{	
//Siren
	if((read1[2]==0X10&&read1[1]==0X00&&read1[0]==0X00)||(read1[2]==0X01&&read1[1]==0X00&&read1[0]==0X00)||(read1[2]==0X05&&read1[1]==0X00&&read1[0]==0X00))//Siren times
    {
		Shift_man_alarm=1;
		delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
		Shift_man_alarm=0;
    }
}
//Run time of generator at present
void Generator_run()//Display generator run time
{
		lcd_cmd(0,0,0XC0);
		string("Gen.run:");
		Gen_a=variable/1000;
		Gen_b=variable%1000;
		Gen_c=Gen_b/100;
		Gen_d=Gen_b%100;
		Gen_e=Gen_d/10;
		Gen_f=Gen_d%10;
		lcd_cmd(1,0,Gen_a+0X30);
		lcd_cmd(1,0,Gen_c+0X30);
		lcd_cmd(1,0,Gen_e+0X30);
		lcd_cmd(1,0,Gen_f+0X30);
		string(".min");		
		if(EB_On==1&&flag_supply==0)//Enabling EB supply
		{
			Generator=0;
			Gen_LED_on=0;
			EB_LED_on=1;
			lcd_cmd(0,0,0X01);
			lcd_cmd(0,0,0X80);
			string(" From EB supply");
			delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
			flag_supply=1;
		}	
		if(Generator==1&&read[0]==stop)//Counting the minutes of generator runtime
		{
			
			variable++;
			delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
		}
		store=retain+variable;//
		eeprom_write(0,store);//Stroing the current time in EEPROM

}
//PT100 and GSM
void trans(char *data1)//UART string
{
	while(*data1)
	{
		TXREG=*data1++;
		while(TXIF==0);
		TXIF=0;
		delay(1000);
	}
}
void tran(char data2)//UART char
{
	TXREG=data2;
	while(TXIF==0);
	TXIF=0;
	delay(1000);
}
void new()//Pulsing the GSM
{
		tran(0X0D);	
		tran(0X0A);
}
void gsm(int cmd)
{	
	if(flag1==1)
	{
			trans("AT");
			new();
			delay(10000);
			trans("AT+CMGF=1");
			new();
			delay(10000);
			trans("AT+CMGS=\"+919566511486\"");
			new();
			delay(10000);
			if(cmd==1)//For the fire
			{
				trans("This an emergency due to Generator overheat. Take an action.");
			}
			if(cmd==2)//For 1 litre
			{
				trans("Generator diesel reached low level 1 liter");
			}
			if(cmd==3)//For 0.5 litre
			{
				trans("Generator diesel reached very low level 0.5 liter");
			}
			new();
			delay(10000);
			tran(0X1A);
			new();
			delay(10000);			
			flag2=1;
	}
}
void adc()//PT100 adc conversion
{
char DV[10];
	int j=0;
    int u;
    if(u==0)
{
    lcd_cmd(0,0,0X90);
	string("Temp: ");
	lcd_cmd(1,0,'0');
	lcd_cmd(1,0,'0');
	lcd_cmd(1,0,'0');
    lcd_cmd(1,0,'0');
}
	ADCON0=0X93;
	ADCON1=0X80;
	high=ADRESH;
	low=ADRESL;
	sensorvalue=low+(high*256);
	if(sensorvalue>=680)
	{
       u=1;
       int Final_value;
		vari1=sensorvalue-680;
		temp=(vari1*0.2840);
        Final_value=temp*10;
		//temp=(((voltage*100.0)/vt_factor)+offset);//vt_factor=1.689 and offset=0
		sprintf(DV,"%d",Final_value);
		lcd_cmd(0,0,0X90);
		string("Temp: ");
		while(DV[j]!='\0')
		{
			lcd_cmd(1,0,DV[j]);
			j++;
		}
		if(Final_value>=260)
		{
			Heat_danger=1;//Siren for Over heat of generator
			flag1=1;
			gsm(1);
			delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
			delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
			delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);
			Heat_danger=0;
		}
	}
else
{
u=0;
}
}


void main()//Main function
{
	TRISC=0X98;//PORT declarations
	PORTC=0X00;
    TRISA=0X2F;//RA4 adc
    PORTA=0X00;
	TRISD=0X00;
	PORTD=0X00;
	TRISB=0X3C;
	PORTB=0X00;
	TRISE=0X00;
	PORTE=0X00;
	ANSEL=0X10;//AN4
	ANSELH=0X00;
	SMP=1;// For I2C
	SSPCON=0X28;	
	TXSTA=0X26;// For UART communication
	RCSTA=0X90;
	SPBRG=25;
	lcd_cmd(0,0,0X38);	
	lcd_cmd(0,0,0X0E);

	
	retain=eeprom_read(0);//Reading the EEPROM value for previous run time
	while(1)
	{
		adc();//adc function PT100		
    	if(Generator_On==1&&flag_supply==1)//From generator supply
    	{
			stop=read[0];
			Pre_a1=retain/1000;
			Pre_b1=retain%1000;
			Pre_c1=Pre_b1/100;
			Pre_d1=Pre_b1%100;
			Pre_e1=Pre_d1/10;
			Pre_f1=Pre_d1%10;
		
			lcd_cmd(0,0,0X01);	
			lcd_cmd(0,0,0X80);
			string(" Generator On");
			lcd_cmd(0,0,0X91);
			string(" Previous_run:");
			lcd_cmd(0,0,0XD0);
			lcd_cmd(1,0,Pre_a1+0X30);
			lcd_cmd(1,0,Pre_c1+0X30);
			lcd_cmd(1,0,Pre_e1+0X30);
			lcd_cmd(1,0,Pre_f1+0X30);
			string(".mins");
			Gen_LED_on=1;
			EB_LED_on=0;
			delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);delay(60000);		
			Generator=1;			
			flag_supply=0;
		}
		I2C_Start();//I2C
		I2C_Slave(0XD0);
		I2C_Slave(0X00);
		I2C_Restart();
		I2C_Slave(0XD1);
		for(i=0;i<3;i++)
		{
			RCEN=1;
			read[i]=I2C_Read(i);
		}
		I2C_Stop();
		conversion(read);
		delay(1000);
		Gate_Siren(read);
		Generator_run();
		if(Diesel_1==1&&flag1==0&&flag2==0)//For 1 litre aware
		{
			flag1=1;
			gsm(2);
		}
		if(Diesel_2==1&&flag1==1)//For 0.5 litre aware
		{
			gsm(3);
			flag1=2;
		}
		if(Reset==1)//reseting the interlocking flags
		{
			flag1=0;
			flag2=0;
		}
    }
}
