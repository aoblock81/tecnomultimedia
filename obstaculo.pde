class Obstaculo {
  ArrayList <Integer> posX = new ArrayList<Integer>();  //crea arreglo con listada de posicion en X de vibora que va a definir tama;o serpiente tambien
  ArrayList <Integer> posY = new ArrayList<Integer>(); 

  Tablero tablero;
  int cantidad;

  int anchoCelda;   //remplazar por imagen
  boolean activo = false;
  PImage [] obstaculo = new PImage[3];// cantidad de imagenes
  PImage tipoDeObstaculo;

  Obstaculo (Tablero _tablero ) {
    tablero =_tablero;
    anchoCelda =_tablero.anchoCelda;
    Integer _posX = tablero.columnas;    ///posicion inicial centro pantalla
    Integer _posY = tablero.filas;
    this.posX.add(int (random(_posX)));
    this.posY.add(int (random(_posY)));

    obstaculo[0] = loadImage("obstaculo1.png");
    obstaculo[1] = loadImage("obstaculo2.png");
    obstaculo[2] = loadImage("obstaculo3.png");
    tipoDeObstaculo  = obstaculo[int (random (0, 3))];
  }

  void dibuja() {
    for (int i = 0; i < this.posX.size(); i++) {   // recorro el array y si hay obstaculos
      image(tipoDeObstaculo, (posX.get(i) *tablero.anchoCelda), (posY.get(i) *tablero.anchoCelda), anchoCelda, anchoCelda);
    }
  }

  void nuevaPosicion() {
    this.posX.clear();
    this.posY.clear();
    this.posX.add(int (random (tablero.columnas)));
    this.posY.add(int (random (tablero.filas)));
  }

  void restart() {
    activo = true;
    nuevaPosicion();
  }
}
