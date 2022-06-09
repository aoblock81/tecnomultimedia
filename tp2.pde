// TP2 - Ilusion optica - TMM1
// Comisión 4 
// Prof. Garay Leonardo - Tobías Albirosa
// Alejandro Block - Leg. 41126/7
//
// https://youtu.be/aujd64OBHIA
//

color celeste= (#0193D8);
color verde = (#007A49);
color azul = (#002563);
color amarillo = (#FED300);
color fuxia = (#FF2E88);

PImage img1;
boolean activa = false;
int radio = 93;
float x=0;
float y=0;
float rampa;


void setup() {
  size(720, 420); 
  noStroke();
  smooth();
  img1 = loadImage("gato.png");
}

void draw() {

  translate(width/2, height/2);


  dibujaArcoiris(); 

  if ( activa == true ) {                                  // Activa Ilusion Gato
    image(img1, -400, -160, 720, 405);                     // SecuenciaGato
    obturador();                                           // obturador
    
  } else {                                                  // Muestra Intrucciones
    fill (0, 150);
    rect (-250, height/2-35, 500, 25);
    fill (255);
    textAlign(CENTER, CENTER);
    textSize(15);
    text ("mouseDragged para Activar Ilusión  |  keyPressed para Reset", 0, height/2-25);
  }



  println (rampa);
}


void mouseMoved() {
  activa = false;
  rampa = ceil(map(mouseX, 0, width, 0, 12));    // redondeo y evita smooth
}
void mouseDragged() {
  activa = true;
  rampa = ceil(map(mouseX, 0, width, 0, 12));
}
void keyPressed() {
  rampa = 0.0;
  activa = false;
}
