/*
  LiquidCrystal Library - Hello World

 Demonstrates the use a 16x2 LCD display.  The LiquidCrystal
 library works with all LCD displays that are compatible with the
 Hitachi HD44780 driver. There are many of them out there, and you
 can usually tell them by the 16-pin interface.

 This sketch prints "Hello World!" to the LCD
 and shows the time.

  The circuit:
 * LCD RS pin to digital pin 12
 * LCD Enable pin to digital pin 11
 * LCD D4 pin to digital pin 5
 * LCD D5 pin to digital pin 4
 * LCD D6 pin to digital pin 3
 * LCD D7 pin to digital pin 2
 * LCD R/W pin to ground
 * LCD VSS pin to ground
 * LCD VCC pin to 5V
 * 10K resistor:
 * ends to +5V and ground
 * wiper to LCD VO pin (pin 3)

 Library originally added 18 Apr 2008
 by David A. Mellis
 library modified 5 Jul 2009
 by Limor Fried (http://www.ladyada.net)
 example added 9 Jul 2009
 by Tom Igoe
 modified 22 Nov 2010
 by Tom Igoe
 modified 7 Nov 2016
 by Arturo Guadalupi

 This example code is in the public domain.

 http://www.arduino.cc/en/Tutorial/LiquidCrystalHelloWorld

*/

// include the library code:
#include <LiquidCrystal.h>

const int rs = 12, en = 11, d4 = 5, d5 = 4, d6 = 3, d7 = 2;
LiquidCrystal lcd(rs, en, d4, d5, d6, d7);


char rx_byte;

int sw_countUP = 7;

int sw_countDOWN = 8;

int x = 10;

int reset = 9;






void setup() {


  Serial.begin(9600);

  pinMode(sw_countUP, INPUT);

  // set up the LCD's number of columns and rows:
  lcd.begin(20, 4);
  // Print a message to the LCD.
  lcd.print("Bomb Exploded");
  lcd.setCursor(0, 1);

  delay(5000);

  /*lcd.clear();
  lcd.print("Hint. CS");
  lcd.setCursor(0, 1);

  delay(5000);

  lcd.clear();

  lcd.print("TIK TOK TIK TOK");
  lcd.setCursor(0, 1);

  delay(5000);
*/
  lcd.clear();

  lcd.print("BOOOM,SEE YA");


  lcd.setCursor(0, 1);
  lcd.print("Victims:   ");
  lcd.print(x);
  pinMode(reset, INPUT);
}

void loop() {

  if (digitalRead(sw_countUP) == 1) {
    x++;
    skrivLCD();

    delay(10);
  }
  while (digitalRead(sw_countUP) == 1) {
    delay(10);
  }



  if (digitalRead(sw_countDOWN) == 1) {
    x--;

    if (x < 0) x = 0;
    skrivLCD();
    delay(10);
  }
  while (digitalRead(sw_countDOWN) == 1) {
    delay(10);
  }



  if (digitalRead(reset) == 1) {
    x = 0;
    skrivLCD();
    delay(10);
  }

  //******************************

  if (Serial.available() > 0) {

    rx_byte = Serial.read();
    if (rx_byte == 'R') {
      x = 0;
      skrivLCD();
    }
  }
}

void skrivLCD() {

  lcd.setCursor(15, 1);
  lcd.print(x);
  lcd.print("   ");

  Serial.print("");
  Serial.println(x);
}