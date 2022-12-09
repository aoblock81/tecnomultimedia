class Boton {   ////INICIO 
  int posX, posY;
  String  textoBoton;
  color colorBg;
  PFont font = loadFont("04b30-36.vlw");
  boolean activa = false;
  boolean click = false;


  Boton (int _posX, int _posY, String _textoBoton, color _colorBg) {
    posX=_posX;
    posY=_posY;
    textoBoton=_textoBoton;
    colorBg=_colorBg;
  }


  void dibuja() {
    // configuro rectBoton
    noStroke();
    rectMode(CENTER);
    fill(colorBg);
    rect(posX, posY-8, textWidth(textoBoton)+30, 56);

    // configuro txtBoton
    fill(255);
    textAlign(CENTER); 
    textFont(font, 16);
    text(this.textoBoton, posX, posY);

    mouseOver();
  }


  void activar() {
    println("A1");
    activa = true;
  }

  void desactivar() {
    click = false;
    activa = false;
  }

  boolean activado() {
    click = false;
    return activa;
  }
  boolean click() {
    click = true;
    return click;
  }

  void mouseOver() {

    if (mouseX > posX-textWidth(textoBoton)/2-15 && mouseX <  posX+textWidth(textoBoton)/2+15 && mouseY >  posY -28 && mouseY <  posY +28 ) {
      cursor(HAND);
      println("Over mouse" );
    }
  }

  void mousePresionado() {

    if (mouseX > this.posX-textWidth(textoBoton)/2-15 && mouseX <  this.posX+textWidth(textoBoton)/2+15 && mouseY >  this.posY -28 && mouseY <  this.posY +28 ) {
      println("presionado mouse" );
      fill(0);

      click();
      println("click");
    }
  }
}
