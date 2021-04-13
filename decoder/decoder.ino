#include <LiquidCrystal.h>

//#define SIMPLE_OFFSET 10
#define SUM_MOD_OFFSET 12

// initialize the library by associating any needed LCD interface pin
// with the arduino pin number it is connected to
const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);

int b_up = 7;
int b_dn = 8;
int b_sl = 9;

bool db_u = false;
bool db_d = false;
bool db_s = false;

bool pressed = false;

char str_i[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
char str_o[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

int pos = 0;

void setup() 
{
  // set up the LCD's number of columns and rows:
  lcd.begin(16, 2);
  // Print a message to the LCD.
  lcd.print("hello, world!");
  lcd.clear();
  lcd.blink();

  pinMode(b_up, INPUT_PULLUP);
  pinMode(b_dn, INPUT_PULLUP);
  pinMode(b_sl, INPUT_PULLUP);
}

void loop() 
{
  if(digitalRead(b_sl) == LOW)
  {
    if(!db_s)
    {
      pos++;
      if(pos >= 16)
      {
        pos = 0;
      }
      db_s = true;
    }
  }
  else
  {
    db_s = false;  
  }
  
  if(digitalRead(b_dn) == LOW)
  {
    if(!db_d)
    {
      if(str_i[pos]>=26)
      {
        str_i[pos]= 0;
      }
      else
      {
        str_i[pos]++;
      }
      db_d = true;
    }
  }
  else
  {
    db_d = false;
  }

  if(db_d || db_u || db_s)
  {
    lcd.noBlink();
    encode();
    
    for(int i=0; i<16; i++)
    {
      lcd.setCursor(i,0);
      lcd.print(offset(str_i[i]));
      lcd.setCursor(i,1);
      lcd.print(offset(str_o[i]));
    }
  }
  lcd.setCursor(pos,0);
  lcd.blink();
}

#ifdef SIMPLE_OFFSET
void encode()
{
  for(int i=0; i<16; i++)
  {
    if(str_i[i] == 0)
    {
      str_o[i] = 0;
    }
    else
    {
      str_o[i] = (str_i[i]+SIMPLE_OFFSET)%26; 
    }
  }
}
#endif

#ifdef SUM_MOD_OFFSET
void encode()
{
  int sum = 0;
  for(int i=0; i<16; i++)
  {
    sum += str_i[i];
  }
  
  for(int i=0; i<16; i++)
  {
    if(str_i[i] == 0)
    {
      str_o[i] = 0;
    }
    else
    {
      str_o[i] = ((str_i[i]+SUM_MOD_OFFSET)*sum)%26; 
    }
  }
}
#endif

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
