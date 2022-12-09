class Comida {
  Tablero tablero;
  Obstaculo[]obstaculos;
  int posX;
  int posY;
  int anchoCelda;   //remplazar por imagen
  boolean activa = false;

  color[]colores = {
    color(227, 5, 26), //rojo
    color(240, 129, 0), //naranja
    color(254, 234, 0), //amarillo
    color(0, 133, 58), //Verde
    color(44, 89, 165), //azul
    color(135, 30, 130), //violeta
    color(1, 1, 1), //negro
    color(117, 48, 15), //marron
    color(0, 183, 227), //celeste
    color(240, 160, 180), //rosa
  };
  color colorActual = colores[0] ;



  Comida (Tablero _tablero, Obstaculo []_obstaculos ) {
    tablero =_tablero;
    posX =_tablero.columnas;
    posY =_tablero.filas;
    anchoCelda =_tablero.anchoCelda;
    obstaculos = _obstaculos; 

    nuevaPosicion();
  }

  void dibuja() {

    fill(colorActual); 
    ellipse(posX*anchoCelda+anchoCelda/2, posY*anchoCelda+anchoCelda/2, anchoCelda, anchoCelda);
  }


  void nuevaPosicion() {
    posX = int(random(0, tablero.columnas-1));
    posY = int(random(0, tablero.filas-1));
    
    for (int i = 0; i<obstaculos.length; i++) {  
      if (posX == obstaculos[i].posX.get(0) && posY == obstaculos[i].posY.get(0)) {
        posX = int(random(0, tablero.columnas-1));
        posY = int(random(0, tablero.filas-1));
      }
    }
  }

  void restart() {
    activa = false;
    nuevaPosicion();
    colorActual = colores[0];
  }

  color colorActual() {
    return colorActual;
  }

  void cambiaColor() {

    if (colorActual==colores[0]) {
      colorActual=colores[1];
    } else  if (colorActual==colores[1]) {
      colorActual=colores[2];
    } else  if (colorActual==colores[2]) {
      colorActual=colores[3];
    } else  if (colorActual==colores[3]) {
      colorActual=colores[4];
    } else  if (colorActual==colores[4]) {
      colorActual=colores[5];
    } else  if (colorActual==colores[5]) {
      colorActual=colores[6];
    } else  if (colorActual==colores[6]) {
      colorActual=colores[7];
    } else  if (colorActual==colores[7]) {
      colorActual=colores[8];
    } else  if (colorActual==colores[8]) {
      colorActual=colores[9];
    } else  if (colorActual==colores[9]) {
      colorActual=colores[0];
    }
  }
}
