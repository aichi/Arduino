/*
  Analog input, serial output
 
 Reads an analog input pin, recalculate to length in centimeters
 and prints the results to the serial monitor.
 
 The circuit:
 * Proximity sensor connected to +5V, GND and output is connected to analog pin 0.
   Used library count length for Sharp gp2y0a21yk sensor 
 
 created 7 Feb. 2010 
 by Michal Aichinger
 
 */

#include <gp2y0a21yk.h>

// Analog input pin that the proximity sensor is attached to
const int analogInPin = 0;  

void setup() {
  // initialize serial communications at 9600 bps:
  Serial.begin(9600); 
}

void loop() {
  // print the results to the serial monitor:
  Serial.print("\t output = "); 
  Serial.print(digitalToDistance(analogInPin));  
  Serial.println("cm");   

  // wait 10 milliseconds 
  delay(100);                     
}

