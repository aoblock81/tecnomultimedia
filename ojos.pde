class Ojo {  
  PImage ojo;
  int cantidadDeOjos=9;
  int varianteOjo;

  Ojo () {
    varianteOjo = ceil(random(cantidadDeOjos));
  }

  void dibujar() {
    ojo = loadImage("o" + varianteOjo + ".png");
    image(ojo, width/3, 200, 150, 150);
  }


  void mousePresionado() {
    if (mouseButton == LEFT && mouseY < 280) {
      if (varianteOjo == 9) {
        varianteOjo = 1;
      } else {
        varianteOjo += 1;
      }
    }
    if (mouseButton == RIGHT && mouseY < 280) {
      if (varianteOjo == 1) {
        varianteOjo = 9;
      } else {
        varianteOjo -= 1;
      }
    }
  }
}
