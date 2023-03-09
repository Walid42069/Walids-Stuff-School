const int  tolerance = 50;
int PinCCW = 7;
int PinCW = 8;
int AnalogPin = A0;
int x = 0;
void setup() {
  // put your setup code here, to run once:
  Serial.begin(9600);
  pinMode(PinCCW, OUTPUT);
  pinMode(PinCW, OUTPUT);
  digitalWrite(PinCW, LOW);
}



/*
hvis værdien er over 562 til højre 
hvis under 462 til venstre 
hvis i mellem ikke noget +
*/
int turn = 0;

void loop() {
  // put your main code here, to run repeatedly:
  x = analogRead(AnalogPin);
  Serial.println(x);
  delay(10);

  if(x > 562) {
    turn = 1;
    digitalWrite(PinCW, LOW);
    digitalWrite(PinCCW, HIGH);
  } else if (x < 462) {
    turn = 2;
    digitalWrite(PinCCW, LOW);
    digitalWrite(PinCW, HIGH);
  }

  if (turn == 1) {
    if (x <= 512) {
      turn = 0;
      digitalWrite(PinCCW, LOW);
    }
  } else if (turn == 2) {
    if (x >= 512) {
      turn = 0;
      digitalWrite(PinCW, LOW);
    }
  }
}