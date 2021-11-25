int led = 13;

int pot = A0;

int pot_read; 


void setup() {
 pinMode(led, OUTPUT);
 Serial.begin(9600);

}

void loop() {
pot_read = analogRead (pot);

int mapping = map (pot_read, 0, 1023, 0 , 255); // mapping for processing to read

Serial.println (mapping); // sending output to processing

if (Serial.available () > 0) {
  char state = Serial.read();

  if(state == '1') // if data recieved LED turns on
  {
    digitalWrite (led, HIGH);
  }
  if (state == '0') {
    digitalWrite (led, LOW);
  }
}
delay (50);

}
