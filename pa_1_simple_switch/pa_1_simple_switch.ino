// Value read in from switch on Pin 7 
//is printed over serial

int switchPin = 7;

void setup() {
  Serial.begin( 9600 );
  //pinMode( switchPin, INPUT );
}

void loop() {
  int switchValue = digitalRead( switchPin );
  
  Serial.println(switchValue);
  
  delay( 100 );
}
