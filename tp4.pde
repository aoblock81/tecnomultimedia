// TP4 - POO - TMM1
// Comisión 4 
// Prof. Garay Leonardo 
// Alejandro Block - Leg. 41126/7
// video: https://youtu.be/qva81Z_eeYQ
//


Escenario escenario;                     //declaro el objeto Escenario


void setup() {
  size(500, 700);
  escenario = new Escenario();          //contruye el objeto Escenario
} 

void draw() {
  background(255);
  escenario.dibujar();
}

void mousePressed() {
  escenario.mousePresionado();
}
