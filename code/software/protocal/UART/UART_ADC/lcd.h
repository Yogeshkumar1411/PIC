#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
void delay(unsigned int ms)
{
	while(ms--);
}
void lcd_cmd(char a,char b, char c)
{
	RS=a;
	RW=b;
	LCD=c;
	EN=1;
	delay(1000);
	EN=0;
	delay(1000);	
}
