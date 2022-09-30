class Boca {  

  int varianteBoca;

  Boca ( int _varianteBoca) {
    varianteBoca = _varianteBoca;
  }


  void dibujar() {
    image(boca[varianteBoca], width/3, height/3+50, 150, 150);  //cargo la imagen
  }


  void mousePresionado() {
    if (mouseButton == LEFT && mouseY >= height/2) {
      if (varianteBoca == 9) {
        varianteBoca = 1;
      } else {
        varianteBoca += 1;
      }    
    }
        if (mouseButton == RIGHT && mouseY >= height/2) {
      if (varianteBoca == 1) {
        varianteBoca = 9;
      } else {
        varianteBoca -= 1;
      }    
    }

  }
  
  
  
}
