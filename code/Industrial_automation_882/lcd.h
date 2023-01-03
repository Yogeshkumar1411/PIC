#define RS RB1
#define RW RB2
#define EN RB3
#define LCD PORTB
void delay(unsigned int ms)
{
	while(ms--);
}
void pulse()
{
	EN=1;
	delay(10);
	EN=0;
	delay(10);
}
void lcd_cmd(int a,int b, char c)
{
	RS=a;
	RW=b;	
	LCD=c;
	pulse();
	LCD=c<<4;
	pulse();
}
