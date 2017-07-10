import ddf.minim.*;

Minim minim;
AudioPlayer player, player1,player2,player3,player4;

void setup(){
  size(400,400);
  
  minim = new Minim(this);
  player = minim.loadFile("drums.wav");
  player1 = minim.loadFile("drums-shuffle.wav");
  player2 = minim.loadFile("groovy-blues-retro-organ.wav");
  player3 = minim.loadFile("jazz-swing-drums.wav");
  player4 = minim.loadFile("slow-blues-jazz-shuffle.wav");
}

void draw(){
  
}

void keyPressed(){
  if(key == 'a'){
    player.play();
    player.loop();
    } else if(key == 's'){
      player1.play();
      player1.loop();
    } else if(key == 'd'){
      player2.play();
      player2.loop();
    } else if(key == 'f'){
      player3.play();
      player3.loop();
    } else if(key == 'g'){
      player4.play();
      player4.loop();
    } else if(key == 'l'){
      player.pause();
      player1.pause();
      player2.pause();
      player3.pause();
      player4.pause();
    }
}