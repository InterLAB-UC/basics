import de.looksgood.ani.*;

float rad; 

AniSequence seq;

void setup(){
  size(600,600);
  smooth();
  background(0);
  
  rad = 0.027;
  
  Ani.init(this);
  
  seq = new AniSequence(this);
  
  seq.beginSequence();
  
  seq.add(Ani.to(this,1,"rad", 1.3));
  seq.add(Ani.to(this,1,"rad", 1.3));
  seq.add(Ani.to(this,1,"rad",2.6));
  seq.add(Ani.to(this,1,"rad",2.6));
  seq.add(Ani.to(this,1,"rad",-2.6));
  seq.beginStep();
  seq.add(Ani.to(this,1,"rad", 0.027));
  seq.endStep();
  seq.endSequence();
  
  seq.start();
}

void draw(){
  fill(0,20);
  noStroke();
  rect(0,0,width,height);
  
  fill(255);
  stroke(0);
  pushMatrix();
  translate(width/2, height/2);
  rotate(rad);
  arc(0, 0, 150, 150, 0, .2, PIE);
  popMatrix();
}

void sequenceEnd() {
  println("sequenceEnd() restart all again");
  seq.start();
}
