int led_1=13;
int led_2=12;
int led_3=11;
int p=1000;

void setup() {

pinMode(led_1, OUTPUT);
pinMode(led_2, OUTPUT);
pinMode(led_3, OUTPUT);

}

void loop(){
digitalWrite(led_1, HIGH);
delay(p);

digitalWrite(led_2, HIGH); 
delay(p);

digitalWrite(led_3, HIGH); 
delay(p);

digitalWrite(led_1, LOW);
delay(p);


digitalWrite(led_2, LOW);
delay(p);

digitalWrite(led_3, LOW);
delay(p);

p = p-100;

if(p<5) p=750;
}