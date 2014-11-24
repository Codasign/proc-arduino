// variables for pin
int xPin = A0;


void setup() {
  // start Serial
  Serial.begin( 9600 );
}

void loop() {
  // read in value
  int xValue = analogRead( xPin );
  
  // print out value
  Serial.print( xValue );
  
  // wait a little bit
  delay( 30 );
}
