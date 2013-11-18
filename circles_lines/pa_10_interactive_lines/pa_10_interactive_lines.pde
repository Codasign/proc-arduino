void setup() {
  size(500, 500); 
  background(0);
  smooth();
}


void draw() {
  if (mousePressed) {
    float redValue = map(mouseX, 0, width, 0, 255);
    float blueValue = map(mouseY, 0, height, 0, 255);
    stroke(redValue, blueValue, 100);
    line(width/2, height/2, mouseX, mouseY);
  }
}

