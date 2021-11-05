const int redLed = 13; 
const int greenLed = 12;
const int moreTea = A1; 


void setup() {

  pinMode(redLed, OUTPUT);
  pinMode(greenLed, OUTPUT);

}

void loop() {
  // put your main code here, to run repeatedly:

  int teacupCurrent = digitalRead(moreTea);

  if (teacupCurrent == HIGH) {
    digitalWrite(redLed, HIGH);
    digitalWrite(greenLed, LOW);

  }

  else {
    digitalWrite (redLed, LOW);
    digitalWrite (greenLed, HIGH);
    delay (300);
    digitalWrite(greenLed, LOW);
    delay (1000);

  }


}
