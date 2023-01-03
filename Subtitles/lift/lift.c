/*
 * File:   lift project.c
 * Author: vishnu
 *
 * Created on 16 May, 2022, 3:25 PM
 */


#include <pic.h>
#define b1 RA0
#define b2 RA1
#define b3 RA2
#define b4 RA3
#define s1 RC1
#define s2 RC2
#define s3 RC3
#define s4 RC4
void main(void) 
{
    PORTA=0X00;
    TRISA=0X0F;
    PORTC=0X00;
    TRISC=0X0F;
    PORTD=0X00;
    TRISD=0X00;
    ANSEL=0X00;
    ANSELH=0X00;
    while(1)
    {
        if(s1==1)// in ground floor itself
        {
            if(b1==1)
        {
            RD0=0;
            RD1=0;
        }
while(b1==1);
        if(b2==1)// moving from 0 to 1
        {
            RD0=1;
            RD1=0;
        } 
while(b2==1);  
         if(b3==1)// moving from 0 to 2
           {
            RD0=1;
            RD1=0;
           }
while(b3==1);
          if(b4==1)// moving from 0 to 3
           {
            RD0=1;
            RD1=0;
             }
while(b4==1);
        }
        /*if(s2==1)// in 1st floor itself
        {if(b1==1)//0 to 1
        {
            RD0=0;
            RD1=1;
        }
        if(b2==1)// same floor
        {
            RD0=0;
            RD1=0;
        }   
         if(b3==1)// moving from 1 to 2
           {
            RD0=1;
            RD1=0;
           }
           
         if(b4==1)// moving from 1 to 3
           {
            RD0=1;
            RD1=0;
             }
        }
        if(s3==1)// in 2nd floor 
        {if(b1==1)// 2 to 0
        {
            RD0=0;
            RD1=1;
        }
        if(b2==1)// moving from 2 to 1
        {
            RD0=0;
            RD1=1;
        }   
         if(b3==1)// same floor
           {
            RD0=0;
            RD1=0;
           }
           
         if(b4==1)// moving from 0 to 3
           {
            RD0=1;
            RD1=0;
             }
        }*/
        if(s4==1)// in ground floor itself
        {if(b1==1)// 3 to 0
        {
            RD0=0;
            RD1=1;
        while(b1==1);}

        if(b2==1)// moving from 0 to 1
        {
            RD0=0;
            RD1=1;
while(b2==1);       
		 }
   
         if(b3==1)// moving from 0 to 2
           {
            RD0=0;
            RD1=1;
          while(b3==1);
			 }
           
         if(b4==1)// same floor
           {
            RD0=0;
            RD1=0;
while(b4==1);
             }
        }
    }
}