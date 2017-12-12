import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

int valor;
  float back;
  float data;

void setup(){
  size(720,480);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
 
}

void draw(){
  
  background(back);
   valor = arduino.analogRead(0);
  
  noFill();
  stroke(255,0,0);
  strokeWeight(20);
  strokeCap(ROUND);
 back = map(float(valor), 0,1023,0,255);
 data = map(float(valor),0,1023, 0, TWO_PI);
 arc(width/2,height/2,200,200,0,data);
  //println(arduino.analogRead(0)+ " " + arduino.analogRead(1)+ " "+ back+ " "+valor);

}