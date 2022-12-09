//********* AYUDA/CREDITOS

class Pantalla02 {

  boolean activa = false;

  Boton botonVolver;
  Pantalla00 pantalla00;
  PImage logo = new PImage();// cantidad de imagenes

  PFont font = loadFont("04b30-36.vlw");

  Pantalla02 (Pantalla00 _pantalla00) {
    pantalla00 =_pantalla00;
    botonVolver = new Boton(width/20, height/2, "<", color(60));  
    logo = loadImage("logo.png");
  }


  void dibuja() {

    cursor(ARROW);
    fill(60);
    textAlign(LEFT, CENTER); 
    image(logo, width/4, height/4, 240, 15);

    fill(60);  
    textFont(font, 16);
    text("Como jugar? debes desplazarte con las flechas en busca de los diversos puntos de color, esquivando los obtaculos cuadrados que te quitaran fuerza, tampoco vallas contra vos, y mucho cuidado con los limites del juego que directamente te sacara de el."
      , width/4+215, height/2, 430, 300);
    textFont(font, 14);
    text("Music: LadyGaga by 8-Bit Misfits \n\n2022 / By o.Bk", width/4, height-80);
    botonVolver.dibuja();
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


  void setPantalla(Pantalla00 _pantalla00) {
    pantalla00 = _pantalla00;
  }

  void mousePresionado() {
    botonVolver.mousePresionado();

    if (botonVolver.click==true) {
      desactivar();
      pantalla00.activar();
    }
  }
}
