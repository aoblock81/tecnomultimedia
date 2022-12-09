class Juego {
  Tablero tablero;
  Pantalla03 pantalla03;   /// pantalla GANO
  Pantalla04 pantalla04;   // pantalla PERDIO
  Comida comida;
  Obstaculo[]obstaculos = new Obstaculo[20];
  Vibora vibora;
  color player;
  boolean activo = false;
  int puntaje = 0;

  Juego () {

    tablero = new Tablero(24, 43, 15);
    comida = new Comida (tablero);    
    for (int i=0; i<obstaculos.length; i++) {   
      obstaculos[i] = new Obstaculo(tablero);
    }
    
    vibora = new Vibora(tablero, comida, player, obstaculos);
  }

  Juego ( Pantalla03 _pantalla03, Pantalla04 _pantalla04) {
    pantalla03=_pantalla03;
    pantalla04=_pantalla04;
  }

  void setPantalla(Pantalla03 _pantalla03, Pantalla04 _pantalla04) {
    pantalla03 = _pantalla03;
    pantalla04 = _pantalla04;
  }

  void dibuja() {

    if (vibora.comio==true) {
      vibora.comio=false;
      comida.nuevaPosicion();
      puntaje();
      println("COMIOOOOOOO");
    } else if (vibora.remover==true) {  
      vibora.remover=false;
      restaPuntaje();
    } else if (vibora.coliciono==true) {  
      pierde();
    }

    tablero.dibuja();
    comida.dibuja();
    vibora.player(player);
    vibora.dibuja();
    textAlign(RIGHT);
    text("Score:"+puntaje, width - 15, 15);
    for (int i=0; i<obstaculos.length; i++) {  
      obstaculos[i].dibuja();
    }
  }

  void puntaje() {
    puntaje +=100;
  }
  void restaPuntaje() {
    puntaje -=100;
  }

  int puntajeTotal() {
    return puntaje;
  }


  void activar() {
    music01.rewind();
    music01.play();
    activo = true;
  }

  void desactivar() {
    music01.pause();
    activo = false;
  }

  boolean activado() {
    return activo;
  }


  void mousePresionado() {
    //hud.mousePresionado();
  }
  void teclaPresionada() {
    vibora.teclaPresionada();
  }

  void gana() {
    desactivar();
    pantalla03.activar();
  }

  void pierde() {
    desactivar();
    pantalla04.activar();
  }

  void restart(color _player) {
    vibora.restart(_player);
    comida.restart();
    for (int i=0; i<obstaculos.length; i++) {  
      obstaculos[i].restart();
    }
  }
}
