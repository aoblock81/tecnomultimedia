class Tablero {

int filas;
  int columnas;
  int anchoCelda;


  Tablero ( int _filas, int _columnas, int _anchoCelda) { 
    this.filas=_filas;
    this.columnas=_columnas;
    this.anchoCelda=_anchoCelda;

  }

  void dibuja() {
    stroke (220);
    for (int i = 0; i <= this.filas; i++) {
      line (0, i*this.anchoCelda, width, i*this.anchoCelda);
    }
    for (int j = 0; j <=this.columnas; j++) {
      line (j*this.anchoCelda, 0, j*this.anchoCelda, height);
    }
    noStroke ();
  }


}
