
import processing.serial.*;

import cc.arduino.*;

Arduino arduino;

int valor0, valor1, valor2;
float rojo, verde, azul;
float data0, data1, data2;

void setup(){
  size(720,480);
  background(0);
  arduino = new Arduino(this, Arduino.list()[1], 57600);
  smooth();
}

void draw(){
  valor0 = arduino.analogRead(0);
  valor1 = arduino.analogRead(1);
  valor2 = arduino.analogRead(2);
  noStroke();
  fill(0,12);
  rect(0,0,width,height);
  
  rojo = map(float(valor0), 0, 1023, 0, 255);
  verde = map(float(valor1), 0, 1023, 0, 255);
  azul = map(float(valor2), 0, 1023, 0, 255);
  
  data0 = map(float(valor0), 0, 1023, 0, TWO_PI);
  data1 = map(float(valor1), 0, 1023, 0, TWO_PI);
  data2 = map(float(valor2), 0, 1023, 0, TWO_PI);
  
  noFill();
  stroke(255);
  strokeWeight(1);
  arc(100,100,50,50,0,data0);
  arc(100,200,50,50,0,data1);
  arc(100,300,50,50,0,data2);
  
  pushMatrix();
  translate(width/2,50);
  fill(rojo,verde,azul);
  noStroke();
  rect(0,0,300,400);
  popMatrix();
}