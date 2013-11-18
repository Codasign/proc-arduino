Etch-A-Sketch
=============

Teaching serial communication from Arduino to Processing by using physical sensors to control the drawing in a Processing sketch.


Assumed knowledge
-----------------
### Arduino
- Basics of reading in digital and analog signals into Arduino
- Printing to Serial Monitor in Arduino IDE
- Circuits
-- Momentary switch or pushbutton
-- Potentiometer

### Processing
- Basics of drawing in Procesing
- Shapes ellipse
- Variables mouseX, mouseY
- Colour representation in RGB
- Handling keyboard input

Lesson 1
--------
Go through beginning Processing sketch to review coding in Processing.  The sketch implements all functionality of the etch-a-sketch using only the mouse and keyboard.  A line is drawn following the mouse curson and any key being pressed clears the drawing.

Lesson 2
--------
Review the circuit and Arduino code for reading in a value from a switch.  Introduce using internal pullup resistors.

Send button value from Arduino to Processing.  In Processing, the button clears the screen (replacing keypress functionality).

Lesson 3
--------
Review setting up a potentiometer and reading in an analogue value into the Arduino.

Send the potentiometer value to Processing using newlines.

In Processing, use bufferUntil to parse string values and then map potentiometer range to window width.  Control the x position of the pen with the potentiometer.

Lesson 4
--------
Set up two potentiometers and send both values separated by a ";" and terminated with a newline.

In Processing, map each potentiometer value to x and y of the pen.

Lesson 5
--------
Add a pushbutton to the two potentiometers.

Add labels to each data feed.

In Processing, complete the interaction by adding the button to clear the drawing.

Licenses
--------
All non-code made available here is released under Creative Commons Attribution Noncommercial (CC-BY-NC-SA) with attritbution to Codasign.  This means you are free to do whatever you would like with it, but please credit Codasign for the original work and don't use it for commercial purposes.  See [the full licencse](http://creativecommons.org/licenses/by-nc-sa/3.0/deed.en_US) for more information.

All code is made available here is released under GPL-3.  This means you can use and change the code, but you need to include the original and list your changes if you re-distribute it.  The full license is included in this repository but you can also read it [online](http://opensource.org/licenses/gpl-3.0.html).
