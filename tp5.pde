import ddf.minim.*;
// TP5 - POO-Juego - TMM1
// Comisión 4 
// Prof. Garay Leonardo 
// Alejandro Block - Leg. 41126/7
// video: 


import ddf.minim.analysis.*;
Principal principal;  //declaro el objeto Juego


Minim minim;
AudioPlayer come01, pierde, music01, music02, quita;

void setup () {
  size(660, 375);
  frameRate (8);
  principal = new Principal();
  minim=new Minim(this);
  pierde = minim.loadFile("pierde.mp3");
  quita = minim.loadFile("quita.mp3");
  come01 = minim.loadFile("lowThreeTone.mp3");
  music01 = minim.loadFile("badRomance.mp3");
  music02 = minim.loadFile("alejandro.mp3");
}


void draw() {
  background (240);
  principal.dibuja();
}

void mousePressed () {
  principal.mousePresionado();
}

void keyPressed() {
  principal.teclaPresionada();
}
