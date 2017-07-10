import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;


Minim minim;
AudioPlayer player, player1;
void setup(){
  size(600,600);
  minim = new Minim(this);
  player = minim.loadFile("hihat_001.wav");
  player1 = minim.loadFile("hihat_002a.wav");
}

void draw(){
  background(0);
}

void keyPressed(){
  if(key == 'a'){
    fill(random(255),random(255),random(255));
    rect(200,200,200,200);
    if ( player.isPlaying() )
  {
    player.pause();
  }
  
  else if ( player.position() == player.length() )
  {
    player.rewind();
    player.play();
  }
  else
  {
    player.play();
  }
  }
  
  if(key == 'b'){
    fill(random(255),random(255),random(255));
    ellipse (200,200,200,200);
    if ( player1.isPlaying() )
  {
    player1.pause();
  }
  
  else if ( player1.position() == player1.length() )
  {
    player1.rewind();
    player1.play();
  }
  else
  {
    player1.play();
  }
  }
}