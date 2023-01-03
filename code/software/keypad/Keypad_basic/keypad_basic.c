#include<htc.h>
#define col1 RD0
#define col2 RD1
#define col3 RD2
#define col4 RD3
#define row1 RD4
#define row2 RD5
#define row3 RD6
#define row4 RD7
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};

void main()
{
PORTD=0X00;
TRISD=0X0F;
PORTB=0X00;
TRISB=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
row1=1;row2=row3=row4=0;
if(col1==1)
{
PORTB=seg[1];
while(col1==1);
}
if(col2==1)
{
PORTB=seg[2];
while(col2==1);
}
if(col3==1)
{
PORTB=seg[3];
while(col3==1);
}
if(col4==1)
{
PORTB=seg[4];
while(col4==1);
}


row2=1;row1=row3=row4=0;
if(col1==1)
{
PORTB=seg[5];
while(col1==1);
}
if(col2==1)
{
PORTB=seg[6];
while(col2==1);
}
if(col3==1)
{
PORTB=seg[7];
while(col3==1);
}
if(col4==1)
{
PORTB=seg[8];
while(col4==1);
}


row3=1;row1=row2=row4=0;
if(col1==1)
{
PORTB=seg[9];
while(col1==1);
}
if(col2==1)
{
PORTB=seg[0];
while(col2==1);
}
/*if(col3==1)
{
PORTB=seg[9];
while(col3==1);
}


row4=1;row1=row2=row3=0;
if(col2==1)
{
PORTC=seg[0];
while(col2==1);
}*/
}
}