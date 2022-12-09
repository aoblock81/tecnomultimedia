class Principal {   
  Pantalla00 pantalla00;  /// Pantalla INICO
  Pantalla01 pantalla01;  /// Elijo jugador
  Pantalla02 pantalla02;  /// CREDITOS/AYUDA
  Pantalla03 pantalla03;  /// GANA
  Pantalla04 pantalla04;  /// PIERDE

  Juego juego; 
  boolean activa = false;
  PFont font = loadFont("04b30-36.vlw");


  Principal () {
    juego = new Juego();
    pantalla00 = new Pantalla00(pantalla01, pantalla02);
    pantalla01 = new Pantalla01(juego);
    pantalla02 = new Pantalla02(pantalla00);
    pantalla03 = new Pantalla03(pantalla00, juego);
    pantalla04 = new Pantalla04(pantalla00, juego);

    pantalla00.activar();
    pantalla00.setPantalla(pantalla01, pantalla02);
    juego.setPantalla(pantalla03, pantalla04);
    pantalla02.setPantalla(pantalla00);
    pantalla03.setPantalla(pantalla00);
    pantalla04.setPantalla(pantalla00);
  }



  void dibuja() {
    //  background(250);

    if (pantalla00.activado()) {
      pantalla00.dibuja();
    } else if (pantalla01.activado()) {
      pantalla01.dibuja();
    } else if (juego.activado()) {
      juego.dibuja();
    } else if (pantalla02.activado()) {
      pantalla02.dibuja();
    } else if (pantalla03.activado()) {
      pantalla03.dibuja();
    } else if (pantalla04.activado()) {
      pantalla04.dibuja();
    }
  }


  void mousePresionado() {
    if (pantalla00.activado()) {
      pantalla00.mousePresionado();
    } else if (pantalla01.activado()) {
      pantalla01.mousePresionado();
    } else if (juego.activado()) {
      //juego.mousePresionado();
    } else if (pantalla02.activado()) {
      pantalla02.mousePresionado();
    } else if (pantalla03.activado()) {
      pantalla03.mousePresionado();
    } else if (pantalla04.activado()) {
      pantalla04.mousePresionado();
    }
  }


  void teclaPresionada() {
    if (juego.activado()) {
      juego.teclaPresionada();
    }
  }
}
