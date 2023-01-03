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
void lcd_init()
{
	lcd_cmd(0,0,0X38);
	lcd_cmd(0,0,0X0F);
	lcd_cmd(0,0,0X80);
}
