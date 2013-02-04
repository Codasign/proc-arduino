proc-arduino
============

Examples used in workshop on communicating between Processing and Arduino via serial


Review
------
- Review setting up an Arduino and circuit with a switch.
- Go through pa_1_simple_switch.ino sketch where switch value is printed over serial to serial monitor in Arduino.
- Discuss print vs println.

- Review basics of Processing sketches (setup, draw, shapes, mouseX, mouseY).
- Introduce using text( ).
**Exercise:** Create a Processing sketch that draws a circle that follows your mouse and also displays the current coordinates. See pa_2_text_exercise.pde.

Polling Serial Data in Processing
-------------------------------
- Introduce libraries and create sketch that polls for serial data to display.  See pa_3_serial_polling.pde.  
- Try using println vs print in the Arduino sketch.
- Discuss ASCII and representations of data.
**Exercise:** Adapt sketch to make a decision based on the data coming in (like change background color).  See pa_4_serial_polling_exercise.pde.


Serial Interrupts in Processing
-------------------------------
- Review setting up circuit with potentiometer and printing data to Arduino serial monitor. see pa_5_simple_potentiometer.ino
- Write Processing sketch again that takes serial data and displays with text( ), but using serial event interrupt.See pa_6_serial_event.pde
- Discuss why using println and new line characters as escape characters is useful for transmitting more than 1 character strings.
**Exercise:**  Adapt sketch to change diameter of ellipse with potentiometer. See pa_7_circle_exercise.pde.

Further Exercises
-----------------
- Introduce map( ) function and mousePressed variable.
- Go through example circles sketch pa_8_interactive_circles.pde.
 **Exercise:** Add serial communication to example so that a button replaces the mousePressed functionality and a potentiometer replaces the mouseX and mouseY. See pa_9_interactive_circles_exercise.pde.

- Go through example lines visual pa_10_interactive_lines.pde.
**Exercise:** Add serial communication to example so that a button replaces the mousePressed functionality and a potentiometer replaces the mouseX and mouseY. See pa_11_interactive_lines_exercise.pde.