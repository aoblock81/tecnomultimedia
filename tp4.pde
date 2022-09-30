// TP4 - POO - TMM1
// Comisión 4 
// Prof. Garay Leonardo 
// Alejandro Block - Leg. 41126/7
// video: https://youtu.be/qva81Z_eeYQ
//


PImage cuerpo;
PImage [] ojo = new PImage[10];
PImage [] boca = new PImage[10];
PFont font;
Escenario escenario;   //declaro el objeto Escenario


void setup() {
  size(500, 500);
  smooth();
  font = loadFont("ClarksSummit-18.vlw");
  fill(200);
textFont(font,32);

  cuerpo = loadImage("papa.png");
  // carga  imgenes ojos
  ojo[0] = loadImage("o0.png");
  ojo[1] = loadImage("o1.png");
  ojo[2] = loadImage("o2.png");
  ojo[3] = loadImage("o3.png");
  ojo[4] = loadImage("o4.png");
  ojo[5] = loadImage("o5.png");
  ojo[6] = loadImage("o6.png");
  ojo[7] = loadImage("o7.png");
  ojo[8] = loadImage("o8.png");
  ojo[9] = loadImage("o9.png");
  // carga  imgenes boca
  boca[0] = loadImage("b0.png");
  boca[1] = loadImage("b1.png");
  boca[2] = loadImage("b2.png");
  boca[3] = loadImage("b3.png");
  boca[4] = loadImage("b4.png");
  boca[5] = loadImage("b5.png");
  boca[6] = loadImage("b6.png");
  boca[7] = loadImage("b7.png");
  boca[8] = loadImage("b8.png");
  boca[9] = loadImage("b9.png");


  escenario = new Escenario();    //contruye el objeto Escenario
} 

void draw() {
  background(255);
  textAlign(CENTER);
  fill(0,200,0);
  textSize(32);
  text("Cara de Papa MUTANTE", width/2, 50);
  fill(150);
  textSize(18);
  text("Cambia Ojos", width/2, 100);
    text("Cambia Boca", width/2, height-50);
  fill(200);
  text("mouse click / Left and Right", width/2, 120);
  text("mouse click / Left and Right", width/2,height-30);
 line (0,height/2,width,height/2);
  escenario.dibujar();
}




void mousePressed() {
  escenario.mousePresionado();

}
