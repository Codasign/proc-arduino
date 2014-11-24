import processing.serial.*;

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

    println(Serial.list()); // print list of all ports
  // you may need to change the number in [ ] to match 
  // the correct port for your computer
  myPort = new Serial(this, Serial.list()[10], 9600);
}

/* draw
 everything here happens repeatedly
 */
void draw() {
  ellipse( mouseX, mouseY, 30, 30 );
}

/* serialEvent
 this function is called whenever there is data waiting
 on the serial port
 */
void serialEvent(Serial p) {
  String inString = p.readString(); // read in the string
  inString = trim( inString );  // remove any whitespace
  println( inString );
  // if the button is pressed, it sends a "0"
  if ( inString.equals("0") ) {
    clearDrawing();
  }
}


/* clearDrawing
 this function is called when button on Arduino is pressed
 */
void clearDrawing() {
  background( bgColor );
}

