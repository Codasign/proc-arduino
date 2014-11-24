// variables for pins
int xPin = A0;
int yPin = A1;


void setup() {
  // start Serial
  Serial.begin( 9600 );
}

void loop() {
  // read in values
  int xValue = analogRead( xPin );
  int yValue = analogRead( yPin );
  
  // print out values
  Serial.print( xValue );
  Serial.print( "; " );
  Serial.println( yValue );
  
  // wait a little bit
  delay( 30 );
}
