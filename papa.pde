class Papa {
  Ojo ojo;
  Boca boca;
  PImage cuerpo;
  int varianteOjo;
  int varianteBoca; 

  Papa(int _varianteOjo, int _varianteBoca) {
    varianteOjo = _varianteOjo;  
    varianteBoca = _varianteBoca;  

    ojo = new Ojo();  
    boca = new Boca();
  }

  void dibujar() {
    cuerpo = loadImage("papa.png");
    image(cuerpo, 0, 0, 500, 700);   // dibuja cuerpo de papa
    ojo.dibujar();
    boca.dibujar();
  }

  void mousePresionado() {
    boca.mousePresionado();
    ojo.mousePresionado();
  }
}
