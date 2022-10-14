class Escenario {
  Papa papa;

  int varianteOjo;
  int varianteBoca; 
  PFont font;


  Escenario() {
    papa = new Papa(varianteOjo, varianteBoca);
  }

  void dibujar() {

    fill(200);
    font = loadFont("ClarksSummit-18.vlw");
    textFont(font, 32);
    textAlign(CENTER);
    fill(0, 200, 0);
    textSize(32);
    text("Cara de Papa MUTANTE", width/2, 50);
    fill(150);
    textSize(18);
    text("Cambia Ojos", width/2, 100);
    text("Cambia Boca", width/2, height-50);
    fill(200);
    text("mouse click / Left and Right", width/2, 120);
    text("mouse click / Left and Right", width/2, height-30);
    line (0, height/2, width, height/2);
    
    papa.dibujar();
  }

  void mousePresionado() {
    papa.mousePresionado();
  }
}
