class Escenario {
  Papa papa;

  int varianteOjos = ceil(random(9));
  int varianteBoca = ceil(random(9)); 


  Escenario() {
    papa = new Papa(varianteOjos, varianteBoca);
  }

  void dibujar() {
    papa.dibujar();
  }


  void mousePresionado() {
    papa.mousePresionado();
  }
}
