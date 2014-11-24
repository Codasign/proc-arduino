import processing.serial.*;

float penX;
float penY;

color bgColor = color( 0 ); // color of background
color penColor = color( 60, 120, 20 ); // color of our pen

Serial myPort; // our serial port

/* setup
 everything here happens only once when
 the sketch starts
 */
void setup() {
  size( 800, 600 );
  background( bgColor ); // set the background color
  noStroke(); // turn off outline around shapes
  fill( penColor ); // set pen color

  penX = width/2; // starting x position of pen
  penY = height/2; // starting y position of pen

  println(Serial.list()); // print list of all ports
  // you may need to change the number in [ ] to match 
  // the correct port for your computer
  myPort = new Serial(this, Serial.list()[10], 9600);

  myPort.bufferUntil('\n');
}

/* draw
 everything here happens repeatedly
 */
void draw() {
  ellipse( penX, penY, 30, 30 );
}

/* serialEvent
 this function is called whenever there is data waiting
 on the serial port
 */
void serialEvent(Serial p) {
  String inString = p.readString(); // read in the string
  //println( inString );
  String pairs[] = split( inString, ';' ); // split up string into pairs

  // go through each pair of label and value
  // and assign it to its variable
  for ( int i=0; i<pairs.length; i++) { 
    String data[] = split( pairs[i], ':' );
    if ( data.length == 2 ) { // continue only if there are 2 things
      String label = trim( data[0] ); // remove extra whitespace
      String value = trim( data[1] ); // remove extra whitespace
      //print(label);
      //print(value);
      if ( label.equals( "button" ) ) {
        if ( value.equals( "0" ) ) {// if button was pressed
          clearDrawing();
        }
      }
      if ( label.equals( "x") ) {
        int v = int(value);
        penX = map( v, 0, 1023, 0, width);
      }
      if ( label.equals( "y") ) {
        int v = int(value);
        penY = map( v, 0, 1023, 0, height);
      }
    }
  }
}


/* clearDrawing
 this function is called when button on Arduino is pressed
 */
void clearDrawing() {
  background( bgColor );
}

