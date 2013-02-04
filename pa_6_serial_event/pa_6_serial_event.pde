import processing.serial.*;

Serial myPort; // The serial port:

String inValue = "";

void setup() {
  size(400, 300);
  
  println(Serial.list());
 
  // You may need to change the number in [ ] to match 
  // the correct port for your system
  myPort = new Serial(this, Serial.list()[0], 9600);

  myPort.bufferUntil('\n');
  
  
}

void draw() {
  background(200);

   text( inValue, width/2, height/2 ); 
}


void serialEvent(Serial myPort) {
  // read a byte from the serial port:
  //int inByte = myPort.read();
  inValue = myPort.readString();
}
