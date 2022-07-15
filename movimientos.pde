void mouseMoved () {
  float d1 = dist(mouseX, mouseY, width-20, 20);
  int r1=20/2;
  if (d1<r1) {
    ayuda=true;
  } else {
    ayuda=false;
  }
}


void keyPressed() {
  tablero[posX][posY] = 0;   // borra posicion actual


  if (keyCode == LEFT) {                
    if (posX == 0) {                      // consional de pared
      println(t1);
    } else if (tablero[posX-1][posY] == 3) { // come comida y suma puntaje
      posX--;
      puntaje+=10;
    } else if (tablero[posX-1][posY] == 4) { // salida
      posX--;
      tablero[posX][posY] = 3;
      ganaste();
    } else if (tablero[posX-1][posY] == 0 ) {  // si esta en blanco avanza
      posX--;
    } else if (tablero[posX-1][posY] == 1 ) {  // toca obstaculo
      gameOver();
    }
  }


  if (keyCode == RIGHT) {
    if (posX == cantColumnas-1) {
      println(t1);
    } else if (tablero[posX+1][posY] == 3) { // come comida y suma puntaje
      posX++;
      puntaje+=10;
    } else if (tablero[posX+1][posY] == 4) { // salida
      posX++;
      tablero[posX][posY] = 0;
      ganaste();
    } else if (tablero[posX+1][posY] == 0 ) {  // si esta en blanco avanza
      posX++;
    } else if (tablero[posX+1][posY] == 1 ) {  // si esta en blanco avanza
      gameOver();
    }
  } 
  if (keyCode == UP) {
    if (posY == 0) {
      println(t1);
    } else if (tablero[posX][posY-1] == 3) { // come comida y suma puntaje
      posY--;
      puntaje+=10;
    } else if (tablero[posX][posY-1] == 4) { // salida
      posY--;
      tablero[posX][posY] = 0;
      ganaste();
    } else if (tablero[posX][posY-1] == 0 ) {  // si esta en blanco avanza
      posY--;
    } else if (tablero[posX][posY-1] == 1 ) {  // si esta en blanco avanza
      gameOver();
    }
  }
  if (keyCode == DOWN) {
    if (posY == cantFilas-1) {
      println(t1);
    } else if (tablero[posX][posY+1] == 3) { // come comida y suma puntaje
      posY++;
      puntaje+=10;
    } else if (tablero[posX][posY+1] == 4) { // salida
      posY++;
      tablero[posX][posY] = 0;
      ganaste();
    } else if (tablero[posX][posY+1] == 0 ) {  // si esta en blanco avanza
      posY++;
    } else if (tablero[posX][posY+1] == 1 ) {  // si esta en blanco avanza
      gameOver();
    }
  }
  if (key == ' ') {
    gameOver=false;
    puntaje=0;
    reset();
  }

  tablero[posX][posY] = 2;
}
