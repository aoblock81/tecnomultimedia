class Papa {
  Ojos ojos;
  Boca boca;

  int varianteOjos;
  int varianteBoca; 


  Papa(int _varianteOjos, int _varianteBoca) {
    varianteOjos = _varianteOjos;  
    varianteBoca = _varianteBoca;  

    ojos = new Ojos(varianteOjos);  
    boca = new Boca(varianteBoca);
  }

  void dibujar() {
    image(cuerpo, 0, 0, 500, 500);   // dibuja cuerpo de papa
    ojos.dibujar();
    boca.dibujar();
  }



  void mousePresionado() {
    boca.mousePresionado();
    ojos.mousePresionado();
  }
}
