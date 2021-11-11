//LEDS
const int redLED = 8;
const int blueLED = 7;

//button
const int blueButton = 13;

//ldr
const int ldr = A0;

//state of button & ldr
int buttonState = 0;
int ldrState = 0;


void setup() {
  
  pinMode(blueButton, INPUT);
  pinMode(redLED, OUTPUT);
  pinMode(blueLED, OUTPUT);
  pinMode(ldr, INPUT);
  
Serial.begin(9600);

}


void loop() {
 
buttonState = digitalRead(blueButton);
ldrState = digitalRead(ldr);

  
  if (ldrState == HIGH) {
    digitalWrite(redLED, HIGH);
    digitalWrite(blueLED, HIGH);
    delay(300);
    digitalWrite(redLED, LOW);
    digitalWrite(blueLED, LOW);
    delay(300);
    digitalWrite(redLED, LOW);
    digitalWrite(blueLED, HIGH);
    delay(300);
    digitalWrite(redLED, HIGH);
    digitalWrite(blueLED, LOW);
    delay(200);

  } 
  
 else if (buttonState == HIGH) {

    analogWrite(redLED, LOW);
    analogWrite(blueLED, LOW);
    
  } 
}
