//********* INICIO

class Pantalla00 {
  Boton botonJugar, botonCreditos;
  Pantalla01 pantalla01;
  Pantalla02 pantalla02;

  boolean activa = false;
  PFont font = loadFont("04b30-36.vlw");

  Pantalla00 () {
  }
  Pantalla00 (Pantalla01 _pantalla01, Pantalla02 _pantalla02) {
    pantalla01 = _pantalla01;
    pantalla02 = _pantalla02;
    botonJugar = new Boton(width/2, height/2-40, "JUGAR", color(60));  
    botonCreditos = new Boton(width/2, height/2+40, "COMO?", color(110));
  }


  void dibuja() {

    cursor(ARROW);
    fill(10);
    textAlign(CENTER); 
    textFont(font, 16);
    //   text("hi baby", width/2, height/4);

    botonJugar.dibuja();
    botonCreditos.dibuja();
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

  void setPantalla(Pantalla01 _pantalla01, Pantalla02 _pantalla02) {
    pantalla01 = _pantalla01;
    pantalla02 = _pantalla02;
  }


  void mousePresionado() {
    botonJugar.mousePresionado();
    botonCreditos.mousePresionado();

    if (botonJugar.click==true) {
      desactivar();
      botonJugar.desactivar();
      pantalla01.activar();
    }
    if (botonCreditos.click==true) {
      desactivar();
      botonCreditos.desactivar();
      pantalla02.activar();
    }
  }
}
