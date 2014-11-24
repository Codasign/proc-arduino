// variables for pins
int buttonPin = 7;


void setup() {
  pinMode( buttonPin, INPUT );

  // start Serial
  Serial.begin( 9600 );
}

void loop() {
  // read in value
  int buttonValue = digitalRead( buttonPin );
  
  // print out value
  Serial.print( buttonValue );
  
  // wait a little bit
  delay( 30 );
}
