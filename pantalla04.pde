//********* PIERDE - GAME OVER

class Pantalla04 {

  boolean activa = false;

  Boton botonVolver;
  Pantalla00 pantalla00;
  Juego juego;

  PFont font = loadFont("04b30-36.vlw");

  Pantalla04 (Pantalla00 _pantalla00, Juego _juego) {
    pantalla00 =_pantalla00;
    juego=_juego;
    botonVolver = new Boton(width/20, height/2, "<", color(60));
  }


  void dibuja() {

    bg();
    fill(255);
    textAlign(LEFT, CENTER); 
    textFont(font, 16);
    text("Upps.. :/ \n" + "prueba otra vez!!\n\n"+ "Score " + juego.puntajeTotal() , width/3, height/2);
    botonVolver.dibuja();
  }


  void activar() {
    music02.rewind();
    music02.play();
    activa = true;
  }

  void desactivar() {
    music02.pause();
    activa = false;
  }

  boolean activado() {
    return activa;
  }

  void setPantalla(Pantalla00 _pantalla00) {
    pantalla00 = _pantalla00;
  }


  void bg() {
    rectMode(CORNER);
    int alto=15;
    for (int i=0; i< height; i++) {
      fill(227, 5, 26); //rojo
      rect (0, 0, width/10, alto+i); 
      fill(240, 129, 0); //naranja
      rect (1*width/10, 0, width/10, alto+i); 
      fill(254, 234, 0); //amarillo
      rect (2*width/10, 0, width/10, alto+i);
      fill(0, 133, 58); //Verde
      rect (3*width/10, 0, width/10, alto+i);
      fill(44, 89, 165); //azul
      rect (4*width/10, 0, width/10, alto+i);
      fill(135, 30, 130); //violeta
      rect (5*width/10, 0, width/10, alto+i);
      fill(1, 1, 1); //negro
      rect (6*width/10, 0, width/10, alto+i);
      fill(117, 48, 15); //marron
      rect (7*width/10, 0, width/10, alto+i);
      fill(0, 183, 227); //celeste
      rect (8*width/10, 0, width/10, alto+i);
      fill(240, 160, 180);
      rect (9*width/10, 0, width/10, alto+i);
    }
  }


  void mousePresionado() {
    botonVolver.mousePresionado();

    if (botonVolver.click==true) {
      desactivar();
      pantalla00.activar();
    }
  }
}
