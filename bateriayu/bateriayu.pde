import ddf.minim.*;

Minim minim;
AudioPlayer player1, player2, player3, player4;

void setup () {
  size (600, 600);
  minim = new Minim(this); //this: utiliza este objeto
  player1 = minim.loadFile("clap.wav", 2048);
  player2 = minim.loadFile("bass606.wav", 2048);
  player3 = minim.loadFile("hihat808.wav", 2048);
  player4 = minim.loadFile("cowbell.mp3", 2048);
}

void draw () {
}

void keyPressed() {
  if (key == 's') {
    fill (random(255), random(255), random(255));
    rect(width/2, height/2, width, height);
    if (player1.isPlaying()) {
      player1.pause();
    } else if (player1.position() == player1.length()) {
      player1.rewind();
      player1.play();
    } else
      player1.play();
  }
  
  if (key == 'a') {
    rectMode(CORNER);
    rect(0, 0, 300, 300);
    fill(random(255), random (255), random (255));
    if (player2.isPlaying()) {
      player2.pause();
    } else if (player2.position() == player2.length()) {
      player2.rewind();
      player2.play();
    } else
      player2.play();
  }

  if (key == 't') {
    rectMode(CORNER);
    rect(width/2,0,width/2,height/2);
    fill(random(255), random (255), random (255));
    if (player3.isPlaying()) {
      player3.pause();
    } else if (player2.position() == player3.length()) {
      player3.rewind();
      player3.play();
    } else
      player3.play();
  }

  if (key == 'd') {
    rectMode(CORNER);
    rect(0,width/2,width/2,height/2);
    fill(random(255), random (255), random (255));
    if (player4.isPlaying()) {
      player4.pause();
    } else if (player4.position() == player4.length()) {
      player4.rewind();
      player4.play();
    } else
      player4.play();
  }
}