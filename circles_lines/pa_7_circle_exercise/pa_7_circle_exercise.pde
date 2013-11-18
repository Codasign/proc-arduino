import processing.serial.*;

Serial myPort; // The serial port:

int circDiameter;

void setup() {
  size(400, 300);
  
  println(Serial.list());
 
  // You may need to change the number in [ ] to match 
  // the correct port for your system
  myPort = new Serial(this, Serial.list()[0], 9600);

  circDiameter = 30;
  myPort.bufferUntil('\n');
}

void draw() {
  background(200);

  fill(165, 27, 27);

  //circDiameter = mouseY;
  if ( circDiameter < 30)
    circDiameter = 30;

  if (circDiameter > 250)
    circDiameter = 250;
    
  ellipse(width/2, height/2, circDiameter, circDiameter);
}


void serialEvent(Serial myPort) {
  // read a byte from the serial port:
  //int inByte = myPort.read();
  String inString = myPort.readString();
  println(inString);
  float tempDiameter = float(inString);
  println(circDiameter);
  circDiameter = int( map(tempDiameter, 0, 1023, 30, 250) );
  //println(char(inByte));
}
