// current mouse coordinates are displayed
// along with circle that follows mouse

void setup() {
 size( 500, 500 ); 
 
 smooth();
}

void draw() {
  background( 50 );
  fill( 33, 138, 147 );
  ellipse( mouseX, mouseY, 50, 50 ); 
  
  fill( 255 );
  text( mouseX + " " + mouseY, mouseX, mouseY);
}
