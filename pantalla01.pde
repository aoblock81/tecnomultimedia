//********* ELIJO JUGADOR 

class Pantalla01 {
  Juego juego;
  boolean activa = false;

  Boton botonMan, botonFem;

  PFont font = loadFont("04b30-36.vlw");
  color player;
  String conteo;
  boolean cuentaRegresiva=true;

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
    println("A1");
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


  void cuentaRegresiva() {

    int tiempo = millis(); 
    println(tiempo);

    if (tiempo > 4000) {
      cuentaRegresiva = false;
    } else if (tiempo > 4000) {

      conteo="0";
    } else if (tiempo > 3000) {

      conteo="1";
    } else if (tiempo > 2000) {

      conteo="2";
    } else if (tiempo > 1000) {

      conteo="3";
    } 

    textSize(150);
    text (conteo, width/2, height/2);
    println(conteo);
  }
}
