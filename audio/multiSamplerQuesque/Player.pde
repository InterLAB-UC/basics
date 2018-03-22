// esta calse se encarga de contruir los objetos
// donde almacenar los archivos de audio.
import ddf.minim.*;

class Player {


  Minim minim;
  AudioPlayer player;

  Player(PApplet p) {
    minim = new Minim(p);
  }

  //este método se encarga de llamar a los archivos
  void carga(int a) {
    player = minim.loadFile(str(a)+".wav");
  }

  //Este método se encarga de tocar los archivos
  void toca() {
    if (player.isPlaying()) {
      player.pause();
    } else if (player.position() == player.length()) {
      player.rewind();
    } else {
      player.play();
    }
  }
}//EOC