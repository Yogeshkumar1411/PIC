/*Name: Yogesh
Date: 21-03-2022
Concept: Keypad with led*/
#include<pic.h>
#define C1 RD0
#define C2 RD1
#define C3 RD2
#define R1 RD3
#define R2 RD4
#define R3 RD5
#define R4 RD6
void main()
{
char seg[20]={0X3F,0X06,0X5B,0X4F,0X66,0X6D,0X7D,0X07,0X7F,0X6F};
char a[10];
PORTA=0X00;
TRISA=0X00;
ANSEL=0X00;
ANSELH=0X00;
PORTC=0X00;
TRISC=0X00;
PORTD=0X00;
TRISD=0X07;
int i=0;
while(1)
{
R1=1;R2=R3=R4=0;
if(C1==1)
{
PORTA=seg[1];
a[i]=1;
i++;
while(C1==1);
}
if(C2==1)
{
PORTA=seg[2];
a[i]=2;
i++;
while(C2==1);
}
if(C3==1)
{
PORTA=seg[3];
a[i]=3;
i++;
while(C3==1);
}


R2=1;R1=R3=R4=0;
if(C1==1)
{
PORTA=seg[4];
a[i]=4;
i++;
while(C1==1);
}
if(C2==1)
{
PORTA=seg[5];
a[i]=5;
i++;
while(C2==1);
}
if(C3==1)
{
PORTA=seg[6];
a[i]=6;
i++;
while(C3==1);
}

R3=1;R1=R2=R4=0;
if(C1==1)
{
PORTA=seg[7];
a[i]=7;
i++;
while(C1==1);
}
if(C2==1)
{
PORTA=seg[8];
a[i]=8;
i++;
while(C2==1);
}
if(C3==1)
{
PORTA=seg[9];
a[i]=9;
i++;
while(C3==1);
}
R4=1;R1=R2=R3=0;
if(C1==1)
{
if(a[0]==1&&a[1]==2&&a[2]==3)
{
PORTC=0X00;
RC0=1;
}
if(a[0]==4&&a[1]==5&&a[2]==6)
{
PORTC=0X00;
RC1=1;
}
if(a[0]==7&&a[1]==8&&a[2]==9)
{
PORTC=0X00;
RC2=1;
}while(C1==1);
}
if(C3==1)
{
i=0;
PORTC=0X00;
PORTA=seg[0];
while(C3==1);
}
}
}



