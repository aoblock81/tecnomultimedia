void reset() {
  aleatorio = (floor (random(cantFilas-1))  );

  for ( int i=0; i< numEnemigo; i++) {
    y[i] = floor(random(1, cantFilas-1));
    x[i] = floor(random(1, cantColumnas-1));
    direcciones[i] = floor(random(-1, 1));   

    for ( int j=0; j< numEnemigo; j++) {     //   convierte el 0 en direccion 
      if (direcciones[j] == 0) {
        direcciones[j] = 1;
      }
    }
  }
}


void dibujaComida() {

  for (int i = 0; i < dificultad; i++) {
    tablero[floor(random(cantFilas-1))][floor(random(cantColumnas-1))] = 3;
  }
}


void dibujaObstaculo(int numEnemigo) {

  // dibuja obstaculos-enemigos
  fill (255, 0, 0);
  if (frameCount%10 == 0) {

    for (int fila = 0; fila < cantFilas; fila++) {
      for (int columna = 0; columna < cantColumnas; columna++) {

        if (tablero[columna][fila] == 1) {

          tablero[columna][fila] = 0 ;                               
          println("enemigooooo borra");
        }
      }
    }

    // obtaculo coliciona con personaje pierde

    for (int i = 0; i < numEnemigo; i++) {

      if ( tablero[x[i]][y[i]] == 2) {
        gameOver();
        println("perdiste");
      }


      // obtaculo coliciona con comida rebota X

      else if ((y[i]!=0) && (x[i]!=0) && (y[i]!=cantColumnas-1) && (x[i]!=cantFilas-1)  && (tablero[x[i]+direcciones[i]][y[i]+direcciones[i]])  == 3) {
        direcciones[i] = -direcciones[i];
        println("rebota");
      }


      // dibuja nueva ubicacion

      else if ((y[i] == cantFilas-1) || (y[i] == 0) || (x[i] == cantFilas-1) || (x[i] == 0) ) {          //obtaculo coliciona con limite rebota
        direcciones[i] = -direcciones[i];
        println("rebotaaaaa" + direcciones);
      }

      tablero[x[i]][y[i]] = 1;  
      x[i] += (vel * direcciones[i]);
      y[i] += (vel * direcciones[i]);
    }
  }
}



void gameOver() {
  t3 = ("GAME-OVER");
  ganaste =false;
  gameOver=true;
}

void ganaste() {
  t3 = ("Ganaste! COOL");
  ganaste =true;
  gameOver=true;
}

void bt() {
  fill (100);
  textAlign(CENTER);
  textFont(font2, 14);
  text ("Presiona SPACE para jugar", width/2, height/2);
}
void bt2() {
  fill (250);
  ellipse(width-20, 20, 20, 20);

  if (ayuda == false) {
    fill (0);
    textAlign(RIGHT);
    textFont(font2, 14);
    text ("?", width-16, 25 );
  } else {
    fill (0);
    textAlign(RIGHT);
    textFont(font2, 14);
    text ("x", width-16, 25 );
  }
}


void ayuda() {

  if (ayuda == true) {
    background (0, 10);
    bt2();

    fill (250);
    textAlign(CENTER);
    textFont(font1, 30);
    text ("-Hi gatito-", width/2, height/2-50); 
    textFont(font1, 20);
    fill (250);
    text ("by My", width/2, height/2-20);

    textAlign(CENTER);
    textFont(font2, 14);
    text ("Intrucciones:", width/2-90, height/2 +20);
    fill (150);
    text ("desplazate con las flechas ", width/2+40, height/2 +20);
    text ("para recolectar los cubos AZULES, ", width/2, height/2 +35);
    text ("Y TEN CUIDADO! de los ROJOS que te MATARAN! :( ", width/2, height/2 +50);
    text ("al completar la cantidad minima de cubos", width/2, height/2 +65);
    text ("se abrira una puerta VERDE de salida", width/2, height/2 +80);
    text (" para GANAR! :)", width/2, height/2 +95);
  }
}
