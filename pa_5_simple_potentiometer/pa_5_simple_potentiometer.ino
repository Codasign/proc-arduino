// Value read in from potentiometer on Pin A0 
//is printed over serial

int potPin = A0;

void setup() {
  Serial.begin( 9600 );
}

void loop() {
  int potValue = analogRead( potPin );
  
  Serial.println( potValue );
  
  delay( 100 );
}
