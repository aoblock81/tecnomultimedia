class Ojos {  

  int varianteOjos;

  Ojos ( int _varianteOjos) {
    varianteOjos = _varianteOjos;
  }


  void dibujar() {
    image(ojo[varianteOjos], width/3, height/3+20, 150, 150);
  }



  void mousePresionado() {
    if (mouseButton == LEFT && mouseY <= height/2) {
      if (varianteOjos == 9) {
        varianteOjos = 1;
      } else {
        varianteOjos += 1;
      }    
    }
        if (mouseButton == RIGHT && mouseY <= height/2) {
      if (varianteOjos == 1) {
        varianteOjos = 9;
      } else {
        varianteOjos -= 1;
      }    
    }

  }
}
