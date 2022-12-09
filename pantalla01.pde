//********* ELIJO JUGADOR 

class Pantalla01 {
  Juego juego;
  boolean activa = false;

  Boton botonMan, botonFem;

  PFont font = loadFont("04b30-36.vlw");
  color player;


  Pantalla01 () {
  }
  Pantalla01 (Juego _juego) {
    juego=_juego;

    botonMan = new Boton(width/2-70, height/2, "&&&&", color(0, 183, 227));  
    botonFem = new Boton(width/2+70, height/2, "&&&&", color(240, 160, 180));
  }


  void dibuja() {

    cursor(ARROW);
    fill(10);
    textAlign(CENTER); 
    textFont(font, 16);
    text("or", width/2, height/2);

    botonMan.dibuja();
    botonFem.dibuja();
  }


  void activar() {
    activa = true;
  }

  void desactivar() {
    activa = false;
  }

  boolean activado() {
    return activa;
  }


  void mousePresionado() {
    botonMan.mousePresionado();
    botonFem.mousePresionado();

    if (botonMan.click==true) {
      desactivar();
      botonMan.desactivar();
      this.player = color(0, 183, 227);
      juego.restart(player);
      juego.activar();
    }
    if (botonFem.click==true) {
      desactivar();
      botonFem.desactivar();
      this.player = color(240, 160, 180);
      juego.restart(player);
      juego.activar();
    }
  }


  void teclaPresionada() {
    if (juego.activado()) {
      juego.teclaPresionada();
    }
  }

}
