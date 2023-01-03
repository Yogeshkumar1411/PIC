#include<pic.h>
#define col1 RD0
#define col2 RD1
#define col3 RD2
#define col4 RD3
#define row1 RD4
#define row2 RD5
#define row3 RD6
#define row4 RD7
#define _XTAL_FREQ 4000000
void delay(unsigned int a)
{
while(a--);
}

void main()
{
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
char a[10];
int sum=0;
int b,c,i=0,j;
PORTB=0X00;
TRISB=0X00;
PORTD=0X00;
TRISD=0X0F;
PORTE=0X00;
TRISE=0X00;
ANSEL=0X00;
ANSELH=0X00;
while(1)
{
row1=1;row2=row3=row4=0;
if(col1==1)
{
b=1/10;
c=1%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE1=0;RE0=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=1;
i++;
while(col1==1);
}
if(col2==1)
{
b=2/10;
c=2%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=2;
i++;
while(col2==1);
}
if(col3==1)
{
b=3/10;
c=3%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=3;
i++;
while(col3==1);
}

if(col4==1)
{
b=4/10;
c=4%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=4;
i++;
while(col4==1);
}

row2=1;row1=row3=row4=0;
if(col1==1)
{
b=5/10;
c=5%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=5;
i++;
while(col1==1);
}
if(col2==1)
{
b=6/10;
c=6%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=6;
i++;

while(col2==1);
}
if(col3==1)
{
b=7/10;
c=7%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=7;
i++;

while(col3==1);
}
if(col4==1)
{
b=8/10;
c=8%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=8;
i++;
while(col4==1);
}



row3=1;row1=row2=row4=0;
if(col1==1)
{
b=9/10;
c=9%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=9;
i++;

while(col1==1);
}
if(col2==1)
{
b=0/10;
c=0%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=0;
i++;

while(col2==1);
}

/*if(col3==1)
{
b=9/10;
c=9%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=9;
i++;

while(col3==1);
}*/


row4=1;row1=row2=row3=0;
if(col1==1)
{
sum=a[0]+a[1];
b=sum/10;
c=sum%10;
for(j=0;j<500;j++)
{
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(60);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(60);
while(col1==1);
}
}
/*if(col2==1)
{
b=0/10;
c=0%10;
RE0=1;RE1=0;
PORTB=seg[b];
__delay_ms(250);
RE0=0;RE1=1;
PORTB=seg[c];
__delay_ms(250);
a[i]=0;
i++;

while(col2==1);
}*/
if(col3==1)
{
i=0;

while(col3==1);
}
}
}
