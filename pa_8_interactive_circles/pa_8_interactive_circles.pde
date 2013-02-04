void setup() {
  size(500, 500); 
  background(0);
  noStroke();
  smooth();
}


void draw() {
  if (mousePressed) {
    float redValue = map( mouseX, 0, width, 0, 255 );
    float blueValue = map( mouseY, 0, height, 0, 255 );
    
    float circleSize = abs(mouseX-width/2);
    
    fill(redValue, blueValue, 100);
    ellipse(width/2, height/2, circleSize, circleSize);
  }
}

