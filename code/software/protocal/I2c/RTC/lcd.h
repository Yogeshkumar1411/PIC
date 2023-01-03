#define RS RE0
#define EN RE1
#define LCD PORTD
void delay(unsigned int ms)
{
	while(ms--);
}
void lcd_cmd(char a,char c)
{
	RS=a;
	LCD=c;
	EN=1;
	delay(100);
	EN=0;
	delay(100);	
}

