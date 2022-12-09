class Vibora {

  ArrayList <Integer> posX = new ArrayList<Integer>();  //crea arreglo ubicacion de partes de la vibora
  ArrayList <Integer> posY = new ArrayList<Integer>(); 
  ArrayList <Integer> colores = new ArrayList<Integer>(); 

  Tablero tablero;  //cambia luego a foto  
  Comida comida;
  boolean activo = false;
  color player;
  boolean coliciono = false;
  boolean remover = false;
  Boolean comio = false;


  Obstaculo[]obstaculos;

  int direccion = 1;                 // avanzo en direccion 1
  int [] dirX = {0, 0, -1, 1};      // eje x ,avanzar hacia,arriba ,abajo ,der ,izq
  int [] dirY = {-1, 1, 0, 0};

  Vibora (Tablero _tablero, Comida _comida, color _player, Obstaculo []_obstaculos) {

    player=_player;
    tablero=_tablero;
    comida=_comida;
    obstaculos=_obstaculos;

    Integer _posX = tablero.columnas/2;    ///posicion inicial centro pantalla
    Integer _posY = tablero.filas/2;

    this.posX.add(_posX);
    this.posY.add(_posY); 
    this.colores.add(color(117, 48, 15));
  }


  void dibuja() {
    rectMode(CORNER);

    noStroke();
    for (int i = 0; i < this.posX.size(); i++) {   // recorro el array y si hay vivora

      fill(colores.get(i));

      if (posX.get(i)!=posX.get(0) || posY.get(i)!=posY.get(0) ) {              ///// si no es cabeza es cuadrado
        rect( (posX.get(i) *tablero.anchoCelda), (posY.get(i) *tablero.anchoCelda), tablero.anchoCelda, tablero.anchoCelda, 0, 0, 0, 0 );
      } else  if (posX.get(i)==posX.get(0) && dirX[direccion]== -1 ) {
        rect( (posX.get(0) *tablero.anchoCelda), (posY.get(0) *tablero.anchoCelda), tablero.anchoCelda, tablero.anchoCelda, 100, 0, 0, 100);
      } else if (posX.get(i)==posX.get(0) && dirX[direccion]== 1 ) {
        rect( (posX.get(0) *tablero.anchoCelda), (posY.get(0) *tablero.anchoCelda), tablero.anchoCelda, tablero.anchoCelda, 0, 100, 100, 0);
      } else if (posY.get(i)==posY.get(0) && dirY[direccion]== -1 ) {
        rect( (posX.get(0) *tablero.anchoCelda), (posY.get(0) *tablero.anchoCelda), tablero.anchoCelda, tablero.anchoCelda, 100, 100, 0, 0);
      } else if (posY.get(i)==posY.get(0) && dirY[direccion]== 1 ) {
        rect( (posX.get(0) *tablero.anchoCelda), (posY.get(0) *tablero.anchoCelda), tablero.anchoCelda, tablero.anchoCelda, 0, 0, 100, 100);
      }
    }
    println(direccion);

    comer(); 

    movimiento();
    detectarBordes();
    autoColicion();
    colicionoObstaculo();
  }



  void comer() {
    if (posX.get(0) == comida.posX && posY.get(0) == comida.posY) {

      this.colores.add(comida.colorActual());
      posX.add(0, posX.get(0)+dirX[direccion]); 
      posY.add(0, posY.get(0)+dirY[direccion]);
      println("hayComida");

      comio();
    }
  }

  void movimiento() {
    posX.add(0, posX.get(0)+dirX[direccion]);     //a la ubicacion 0 de la lista defino movimiento de cabeza
    posY.add(0, posY.get(0)+dirY[direccion]); 
    posY.remove(posY.size()-1);                  //resto de la cola
    posX.remove(posX.size()-1);
  }

  void detectarBordes () {
    if (this.posX.get(0) <0 || this.posX.get(0) > tablero.columnas || this.posY.get(0) <0 || this.posY.get(0) > tablero.filas ) {
      coliciono();
    }
  }

  void autoColicion () {
    for (int i = 2; i < posX.size(); i++) {      // el 2 de arranque soluciona fallo de que no colicione si la vibora es mas de 4
      for (int j = 2; j < posY.size(); j++) { 
        if (posX.get(0) == posX.get(i) && posY.get(0) == posY.get(i)  ) {
          println("autoColicion");
          coliciono();
        }
      }
    }
  }
  void colicionoObstaculo() {

    for (int i = 0; i<obstaculos.length; i++) {  

      if (posX.size() == 1 && posY.size() == 1) {
        if (posX.get(0) == obstaculos[i].posX.get(0) && posY.get(0) == obstaculos[i].posY.get(0)) {
          println("colicionoObstaculo");
          coliciono();
        }
      } else if (posX.get(0) == obstaculos[i].posX.get(0) && posY.get(0) == obstaculos[i].posY.get(0)) {
        println("colicionoObstaculo");
        remover();
      }
    }
  }
  void restart(color player) {
    activo = false;
    posX.clear();
    posY.clear();
    posX.add(tablero.columnas/2);
    posY.add(tablero.filas/2);
    colores.clear();
    colores.add(player);
    coliciono = false;
    comio = false;
  }
  void player(color _player) {
    player = _player;
  }

  void teclaPresionada() {

    if ( keyCode == UP && dirX[direccion]!= 0   ) {
      direccion= 0;
    }
    if ( keyCode == DOWN && dirX[direccion] != 0 ) {
      direccion= 1;
    }
    if ( keyCode == LEFT && dirY[direccion] != 0 ) {
      direccion= 2;
    }
    if ( keyCode == RIGHT && dirY[direccion] != 0 ) {
      direccion= 3;
    }
  }


  boolean coliciono() {
    coliciono = true;
    pierde.rewind();
    pierde.play();
    println("Coliciono");

    return coliciono;
  }

  boolean remover() {
    remover = true;
    quita.rewind();
    quita.play();
    posY.remove(posY.size()-1);                  //resto de la cola
    posX.remove(posX.size()-1);
    println("remueve");

    return coliciono;
  }

  boolean comio() {
    comida.cambiaColor();
    come01.rewind();
    come01.play();

    comio = true;
    println("comio");
    return comio;
  }
}
