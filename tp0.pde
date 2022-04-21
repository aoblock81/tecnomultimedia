//TP.1_ TecnoMultimedia
//
//Variables Color
color blanco = #ffffff;
color base = #FDEFCE;
color cielo = #30BBD8;
color agua = #00A2C0;
color pared = #CD7269;
color suelo = #EEB4A5;
color amarillo = #DED474;

color sombra = color(0, 50);

void setup(){
  size(500,500);
  smooth();
  background(base);
  
//Cielo  
  fill(cielo);
  noStroke();
  rect(50,40,400,420);
 
//agua  
  fill(agua);
  noStroke();
  rect(50,280,400,180);
  fill(sombra);
  rect(50,280,400,15);
  fill(blanco);
  rect(50,280,400,3);
  
//pared  
  fill(pared);
  noStroke();
  rect(50,150,300,85);  
 
  //VentanaSombras
  fill(120);
  rect(50,150,165,85);  
  fill(80);
  rect(50,175,80,60);   
  rect(130,190,70,45);   
  fill(60);
  rect(50,220,165,15); 
  ellipse(170,200,18,25);
  ellipse(185,190,18,30);
  rect(168,200,4,20);
  rect(184,190,3,40);
  //cortina
  fill(#C2AB91);
  rect(105,150,10,85);
  rect(200,150,14,85);
  stroke(sombra);
  line(108,150,108,235);
  line(110,150,110,235);
  
  line(203,150,203,235);
  line(205,150,205,235);
  line(208,150,208,235);
  line(209,150,209,235);
  
//ventana
  noFill();
  strokeWeight(5);
  stroke(blanco);
  rect(52,152,163,80); 
  line(115,152,115,230);
  strokeWeight(3);
  line(82,152,82,230); 
  line(148,152,148,230);
  line(180,152,180,230);
  
  fill(sombra);
  noStroke();
  rect(50,150,300,10); 
   
//suelo  
  fill(suelo);
  noStroke();
  rect(50,235,400,45); 
  
//techo  
  fill(base);
  noStroke();
  quad(50,135, 365,135, 350,150, 50,150); 
  fill(blanco);
  quad(50,135, 365,135, 362,138, 50,138); 
  stroke(blanco);
  strokeWeight(3);
  line(235,134, 295,134);   
  
//tabla  
  fill(amarillo);
  noStroke();
  quad(280,380, 360,380, 450,421, 381,460); 
  triangle(380,460,450,420, 450, 460);
  fill(#65544A);
  noStroke();
  quad(280,385, 280,380, 381,460, 375,460); 
  
//silla
  fill(base);
  noStroke();
  rect(135,218,17,5);
  
  noFill();
  stroke(0);
  strokeWeight(1);
  rect(151,223,5,4);
  line(135,227,150,237);
  line(140,227,155,238);
  line(135,237,150,227);
  line(140,238,155,227);
  
  stroke(base);
  strokeWeight(2);
  line(140,227,155,227);
  
  noFill();
  stroke(0);
  strokeWeight(1);
  rect(135,223,5,4);
  
  stroke(sombra);
  strokeWeight(1);
  line(130,237,145,237);
  line(131,238,146,238);
  line(132,239,147,239);
  
}
