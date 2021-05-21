// ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !
// YOU DO NOT NEED TO CHANGE ANYTHING IN THIS FILE - ALL ENCODING AND DECODING CODE IS IN CYPHER.H
// ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! ! !

#include <LiquidCrystal.h>
#include "cypher.h"

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

int b_line = 6;
int b_up = 7;
int b_down = 8;
int b_sel = 9;

int led = 13;

int pos = 0;
int line = 0;
bool refresh = false;

void setup() 
{
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("hello, world!");
  lcd.clear();
  lcd.blink();

  pinMode(b_line, INPUT_PULLUP);
  pinMode(b_up, INPUT_PULLUP);
  pinMode(b_down, INPUT_PULLUP);
  pinMode(b_sel, INPUT_PULLUP);

  pinMode(led, OUTPUT);
}

void loop() 
{  
  // switch lines
  if(digitalRead(b_line) == LOW)
  {
    line = (line==0)?1:0;
    
    while(digitalRead(b_line) == LOW);
    refresh = true;
  }

  // advance cursor
  if(digitalRead(b_sel) == LOW)
  {
    if(++pos >= 16)
    {
      pos = 0;
    }
    while(digitalRead(b_sel) == LOW);
    refresh = true;
  }

  // increment current character
  if(digitalRead(b_up) == LOW)
  {
    if(line==0)
    {
      if(++str_i[pos] > 26)
      {
        str_i[pos] = 0;
      }
    }
    else
    {
      if(++str_o[pos] > 26)
      {
        str_o[pos] = 0;
      }
    }
    
    while(digitalRead(b_up) == LOW);
    refresh = true;
  }

  // decrement current character
  if(digitalRead(b_down) == LOW)
  {
    if(line==0)
    {
      if(--str_i[pos] < 0)
      {
        str_i[pos] = 26;
      }
    }
    else
    {
      if(--str_o[pos] < 0)
      {
        str_o[pos] = 26;
      }
    }
    
    while(digitalRead(b_down) == LOW);
    refresh = true;
  }

  // correctly position cursor
  lcd.setCursor(pos,line);

  // update display if needed
  if(refresh)
  {
    // encode or decode
    if(line == 0)
    {
      f_encode();
    }
    else
    {
      f_decode();
    }
    
    // print all characters
    lcd.noBlink();
    for(int i=0; i<16; i++)
    {
      lcd.setCursor(i,0);
      lcd.print(offset(str_i[i]));
      lcd.setCursor(i,1);
      lcd.print(offset(str_o[i]));
    }
    lcd.setCursor(pos,line);
    lcd.blink();
    refresh = false;
  }
}

char offset(char in)
{
  if(in == 0)
  {
    return (char) 32;
  }
  else
  {
    return (char) (in+64);
  }
}
