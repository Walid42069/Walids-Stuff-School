//Pin definering

int led_1 = 13;
int led_2 = 12;
int led_3 = 11;
int INPUT_pin = 5;

//Definering af varieble

int p = 0;  //Pinreading

int paus = 1234;

void setup() {
  pinMode(led_1, OUTPUT);
  pinMode(led_2, OUTPUT);
  pinMode(led_3, OUTPUT);
  pinMode(INPUT_pin, INPUT);
}

//********************
void loop() {

  p = digitalRead(INPUT_pin);  // pinstatus til varieblen p

  if (p == HIGH) {

    for (int X = 0; X < 17; X++) {

      digitalWrite(led_1, 1);
      digitalWrite(led_2, 1);
      digitalWrite(led_3, 1);
      delay(paus);
      digitalWrite(led_1, 0);
       digitalWrite(led_2, 0);
        digitalWrite(led_3, 0);
      delay(paus);
    }
  }
  delay(1234);
}