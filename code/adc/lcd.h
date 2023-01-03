#define RS RE0
#define RW RE1
#define EN RE2
#define LCD PORTD
void delay(unsigned int ms)
{
	while(ms--);
}
void lcd_cmd(int a,int b, char c)
{
	RS=a;
	RW=b;
	LCD=c;
	EN=1;
	delay(10);
	EN=0;
	delay(10);
}
