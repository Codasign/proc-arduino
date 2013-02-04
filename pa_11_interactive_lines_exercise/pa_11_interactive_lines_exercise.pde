import processing.serial.*;

Serial myPort; // The serial port:


void setup() {
  size(500, 500); 
  
   println(Serial.list());
 
  // You may need to change the number in [ ] to match 
  // the correct port for your system
  myPort = new Serial(this, Serial.list()[0], 9600);

  myPort.bufferUntil('\n');
  
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

void serialEvent(Serial myPort) {
  // read a byte from the serial port:
  //int inByte = myPort.read();
  inValue = myPort.readString();
}

