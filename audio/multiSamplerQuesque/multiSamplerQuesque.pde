Player[] player = new Player[3];


void setup() {
  for (int i = 0; i < 3; i++ ) {
    //i += i+1;
    println(i);
    player[i] = new Player(this);
  }
  for (int i = 0; i < 3; i++ ) {
    //i += i+1;
    println(i);
    player[i].carga(i) ;
  }
}

void draw() {
}

void keyPressed() {
  //if (key == 'b'){
  //player[0].toca();
  //}
  //if (key == 'n'){
  //player[1].toca();
  //}
  //if (key == 'm'){
  //player[2].toca();
  //}
  for (Player ply : player) {
    ply.toca();
  }
}