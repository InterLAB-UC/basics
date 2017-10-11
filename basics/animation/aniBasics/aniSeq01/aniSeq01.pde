import de.looksgood.ani.*;



int diameter,x,y;

AniSequence seq;

void setup(){
  size(600,600);
  background(0);
  smooth();
  diameter = 10;
  x = width/2;
  y = height/2;
  
  Ani.init(this);
  seq = new AniSequence(this);
  seq.beginSequence();
  
  seq.add(Ani.to(this,1,"diameter",55));
  
  seq.add(Ani.to(this,3,"diameter",20));
  seq.add(Ani.to(this,5,"x:30,y:30"));
  seq.add(Ani.to(this,7,"diameter",100));
  seq.add(Ani.to(this,3,"x:500,y:30,diameter:10"));
  seq.add(Ani.to(this,5,"diameter",50));
  seq.add(Ani.to(this,7,"x:30,y:500,diameter:10"));
  seq.add(Ani.to(this,3,"diameter",50));
  seq.add(Ani.to(this,5,"x:500,y:500,diameter:10"));
  
  seq.beginStep();
  
  seq.add(Ani.to(this,5,"x:300,y:300"));
  seq.add(Ani.to(this,3,"diameter",50));
  
  seq.endStep();

  
  seq.endSequence();
  
  seq.start();
}


void draw(){
 fill(255,20);
  rect(0,0,width,height);
 fill(125);
  ellipse(x,y,diameter,diameter); 
}
