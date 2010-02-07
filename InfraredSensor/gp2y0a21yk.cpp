/*

Method for measuring distance with GP2Y0A21YK Sharp Infrared Proximity sensor
@see http://www.sharpsma.com/Page.aspx/americas/en/part/GP2Y0A21YK/

With standard cable:
 - yellow is output data (left)
 - black is GND (middle)
 - red is +5Vcc (right)

Measured values for exponential function
cm	V
10	470
20	300
30	200
40	140
50	100
60	90
70	75
80	67
*/

#include "WProgram.h"
#include "gp2y0a21yk.h"



float digitalToDistance(byte analogInPin) {
  int sensorValue = analogRead(analogInPin); 
  return pow((float)sensorValue,-0.985)*5117.5;
}