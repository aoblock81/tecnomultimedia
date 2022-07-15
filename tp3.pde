// TP3 - JuegoLibre - TMM1
// Comisión 4 
// Prof. Garay Leonardo 
// Alejandro Block - Leg. 41126/7
//


int cantFilas = 40;
int cantColumnas = 40;
int ancho, alto;
int [][] tablero;
int posX, posY;            // posicion personaje
int dificultad = 10;
int puntaje = 0;
PFont font1, font2;
String t1 = ("PARED!!! ouch");
String t2 = ("que onda?!!!");
String t3 = (" ");

int aleatorio = (floor (random(cantFilas-1))  );

int numEnemigo = 20;

int [] y;
int [] x;
int [] direcciones;
int vel = 1;

boolean gameOver = true;
boolean ganaste = false;
boolean ayuda=false;

//0=blanco Vacio
//1= obstaculo ROJO
//2=personaje Negro
//3=comida Azul  
//4=puerta salida Verde  

void setup() {
  size(400, 400);

  tablero = new int[cantFilas][cantColumnas];
  y = new int[numEnemigo];
  x = new int[numEnemigo];
  direcciones = new int[numEnemigo];

  ancho = width/cantColumnas;
  alto = height/cantFilas;

  font1= loadFont("pixel-48.vlw");
  font2= loadFont("DINNextLTPro-Bold-24.vlw");
}

void draw() {

  if (gameOver == true) {              // pantalla inicio    

    for (int i = 0; i<40; i++) {           // limpia pantalla
      for (int j = 0; j<40; j++) {
        tablero[i][j] = 0;
      }
    }

    posX = cantFilas/2;
    posY = cantColumnas/2;
    tablero[posX][posY] = 2;  // posicion inicial del jugador

    dibujaComida() ;

    println("Hi gatito");
    background(0);
    fill (250);
    textAlign(CENTER);
    textFont(font1, 30);
    text ("Hi gatito", width/2, height/2-50); 
    if ( ganaste==false) {      //Resultado gana o pierde               
      fill (255, 0, 0);               
      text (t3, width/2, height/2-20);
    } else if ( ganaste==true) {               
      fill (0, 255, 0);               
      text (t3, width/2, height/2-20);
    }                      
    if (puntaje > 0 ) 
    {               
      fill (250);               
      textFont(font1, 14);               
      text ("MaxScore:" + puntaje, width/2, height/2+50);
    }

    bt() ;  //agrego boton inicio
    bt2() ;  //agrego boton ayuda

    ayuda();
  } else {                           // JUGANDO    

    dibujaObstaculo(numEnemigo) ; 

    stroke(200);
    for (int fila = 0; fila < cantFilas; fila++) {
      for (int columna = 0; columna < cantColumnas; columna++) {
        if (tablero[columna][fila] == 1) {
          fill(255, 0, 0);                                  //dibuja OBSTACULO
        } else if (tablero[columna][fila] == 2) {
          fill(0);                                          //dibuja cuadrado NEGRO PERSONAJE
        } else if (tablero[columna][fila] == 3) {
          fill(0, 0, 255);                                  //dibuja COMIDA
        } else if (tablero[columna][fila] == 4) {
          fill(0, 200, 0 );                                  //dibuja PUERTA
        } else {
          fill(255);                                        //dibuja cuadrado BLANCO vacio
        }
        rect(columna * ancho, fila * alto, ancho, alto);
      }
    }

    fill (20);
    textAlign(RIGHT);
    textFont(font1, 12);
    text ("score:" + puntaje, width-20, 20);


    /// abre salida si completa puntaje basico

    if ( (puntaje >= dificultad/2*10) ) {
      tablero[aleatorio][aleatorio] = 4;
    }
  }
}
