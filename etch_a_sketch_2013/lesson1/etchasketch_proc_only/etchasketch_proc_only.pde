color bgColor = color( 0 ); // color of background
color penColor = color( 60, 120, 20 ); // color of our pen

/* setup
 everything here happens only once when
 the sketch starts
 */
void setup() {
  size( 800, 600 );
  background( bgColor ); // set the background color
  noStroke(); // turn off outline around shapes
  fill( penColor ); // set pen color
}

/* draw
 everything here happens repeatedly
 */
void draw() {
  ellipse( mouseX, mouseY, 30, 30 );
}

/* keyPressed
 this function is called whenever a key is pressed
 */
void keyPressed() {
  background( bgColor );
}

