// stores the top and bottom lines, don't change these two lines
char str_i[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};
char str_o[16] = {0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0};

/*
 * This file defines the encode and decode functions for the decoder.
 * If you are only planning to encode or decode, you only need one of them.
 * Unfortunately, you will need to write the two functions seperately, and
 * currently the only way to make sure that you have done both correctly
 * is to test it - upload your code, fill the top line with characters, and
 * press the line button several times, ensuring that neither line changes.
 */

// encode the output from the input - runs when cursor is on the top line
void f_encode()
{
  // place your encode logic here
  // example:
  for(int i=0; i<16; i++)
  {
    if(str_i[i] == 0)     // leave a space as a space
    {
      str_o[i] = 0; 
    }
    else                  // encode any characters
    {
      str_o[i] = str_i[i]+5;        // encode by adding five to each character
      if(str_o[i] > 26)             // wrap around if a character exceeds 26
      {
        str_o[i] -= 26; 
      }
    }
  }
}

// decode the input from the output - runs when cursor is on the bottom line
void f_decode()
{
  // place your decode logic here
  // example:
  for(int i=0; i<16; i++)
  {
    if(str_o[i] == 0)     // leave a space as a space
    {
      str_i[i] = 0; 
    }
    else                  // encode any characters
    {
      str_i[i] = str_o[i]-5;        // encode by adding five to each character
      if(str_i[i] < 0)              // wrap around if a character exceeds 26
      {
        str_i[i] += 26;
      }
    }
  }
}
