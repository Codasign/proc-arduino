// variables for pins
int xPin = A0;
int yPin = A1;
int buttonPin = 7;


void setup() {
  // turn on internal pull-up resistor
  pinMode( buttonPin, INPUT_PULLUP );

  // start Serial
  Serial.begin( 9600 );
}

void loop() {
  // read in values
  int xValue = analogRead( xPin );
  int yValue = analogRead( yPin );
  int buttonValue = digitalRead( buttonPin );
  
  // print out values
  Serial.print( "x:" );
  Serial.print( xValue );
  Serial.print( "; y:" );
  Serial.print( yValue );
  Serial.print( "; button:" );
  Serial.println( buttonValue );
  
  // wait a little bit
  delay( 30 );
}
