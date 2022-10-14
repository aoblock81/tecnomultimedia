class Escenario {
  Papa papa;

  int varianteOjo;
  int varianteBoca; 
  PFont font;
  PImage bg;

  Escenario() {
    papa = new Papa(varianteOjo, varianteBoca);
  }

  void dibujar() {
    bg = loadImage("bg.png");
    image(bg, 0, 0, 500, 700); 
    font = loadFont("ClarksSummit-18.vlw");

    textAlign(CENTER);
    fill(150);
    textSize(18);
    text("Cambia Ojos & Boca", width/2, height-50);
    fill(200);
    text("mouse click / Left and Right", width/2, height-30);

    
    papa.dibujar();
  }

  void mousePresionado() {
    papa.mousePresionado();
  }
}
