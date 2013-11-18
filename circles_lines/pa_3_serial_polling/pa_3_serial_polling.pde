// Read and display data from serial port

import processing.serial.*;

Serial myPort;
int val; 

void setup() 
{
  size(200, 200);
  // I know that the first port in the serial list on my mac
  // is always my  FTDI adaptor, so I open Serial.list()[0].
  // On Windows machines, this generally opens COM1.
  // Open whatever port is the one you're using.
  String portName = Serial.list()[0];
  myPort = new Serial(this, portName, 9600);
  
  textAlign( CENTER );
  fill( 0 );
}

void draw()
{
  background(255);
  // if data is available
  if ( myPort.available() > 0) {  
    val = myPort.read();
  }
  text( val, width/2, height/2-20 );
  text( char(val), width/2, height/2+20 ); 
}

/*
// Value read in from switch on Pin 7 
//is printed over serial

int switchPin = 7;

void setup() {
  Serial.begin( 9600 );
  //pinMode( switchPin, INPUT );
}

void loop() {
  int switchValue = digitalRead( switchPin );
  
  Serial.print(switchValue);
  
  delay( 100 );
}
*/
