// TP1 TMM1
// Comisión 4 (online)
// Prof. Tobías Albirosa
// James Bond 007
// Alejandro Block - Leg. 41126/7
//
//

color negro = color(#0F0F0F);
int segundos, tiempo; 
float posX, posY;
float velX, velY;

boolean parpadeo=true;
int mov1=1;
int mov2=1;
int mov3=1;
int mov4=1;
int mov5=1;
int aniX, ani2X;
float sangre=-100;

float borra;
PImage img1;
color verde= #178657;
color celeste= #3E9689;
color oliva= #A9AE37;
color blanco= #D5CBC6;
color rojo= #961E1E;
color rojoA= color(125, 20, 20, 200);

int numFrames = 38;  // frame animacion
int currentFrame = 0;
PImage[] imagen = new PImage[numFrames];


void setup() { 
  frameRate(12);
  size(720, 405);
  smooth();
  background (15);
  textSize(25);
  velX=1;
  borra=1;
  ellipseMode(CENTER);
  mov1=1;
  mov2=1; 
  aniX=1;

  imagen[0]  = loadImage("imagen00000.jpg");
  imagen[1]  = loadImage("imagen00001.jpg");
  imagen[2]  = loadImage("imagen00002.jpg");
  imagen[3]  = loadImage("imagen00003.jpg");
  imagen[4]  = loadImage("imagen00004.jpg");
  imagen[5]  = loadImage("imagen00005.jpg");
  imagen[6]  = loadImage("imagen00006.jpg");
  imagen[7]  = loadImage("imagen00007.jpg"); 
  imagen[8]  = loadImage("imagen00008.jpg");
  imagen[9]  = loadImage("imagen00009.jpg");
  imagen[10] = loadImage("imagen00010.jpg");
  imagen[11]  = loadImage("imagen00011.jpg");
  imagen[12]  = loadImage("imagen00012.jpg");
  imagen[13]  = loadImage("imagen00013.jpg");
  imagen[14]  = loadImage("imagen00014.jpg");
  imagen[15]  = loadImage("imagen00015.jpg");
  imagen[16]  = loadImage("imagen00016.jpg");
  imagen[17]  = loadImage("imagen00017.jpg"); 
  imagen[18]  = loadImage("imagen00018.jpg");
  imagen[19]  = loadImage("imagen00019.jpg");
  imagen[20]  = loadImage("imagen00020.jpg");
  imagen[21]  = loadImage("imagen00021.jpg");
  imagen[22]  = loadImage("imagen00022.jpg");
  imagen[23]  = loadImage("imagen00023.jpg");
  imagen[24]  = loadImage("imagen00024.jpg");
  imagen[25]  = loadImage("imagen00025.jpg");
  imagen[26]  = loadImage("imagen00026.jpg");
  imagen[27]  = loadImage("imagen00027.jpg"); 
  imagen[28]  = loadImage("imagen00028.jpg");
  imagen[29]  = loadImage("imagen00029.jpg");
  imagen[30]  = loadImage("imagen00030.jpg");
  imagen[31]  = loadImage("imagen00031.jpg");
  imagen[32]  = loadImage("imagen00032.jpg");
  imagen[33]  = loadImage("imagen00033.jpg");
  imagen[34]  = loadImage("imagen00034.jpg");
  imagen[35]  = loadImage("imagen00035.jpg");
  imagen[36]  = loadImage("imagen00036.jpg");
  imagen[37]  = loadImage("imagen00037.jpg");
}



void draw() { 
  PFont font1 = loadFont("AvenirNext-Bold-250.vlw");  
  PFont font2 = loadFont("AvenirNext-Medium-48.vlw"); 
  segundos = frameCount/12; // para pantallas
  tiempo = frameCount/2;


  println ("segundos:" + segundos);
  println ("tiempo" + tiempo);
  println ("velX" + velX);



  //Pantalla 1
  if (segundos <= 5) {

    if ( velX <= width/2.5) {    // animacion ellipse
      velX += 10;
      background (negro);
      ellipse (velX, height/2, 50, 50);
    }    

    if ( velX >= width/2.5) {   // texto 1
      background (negro);
      stroke (255);
      fill (255);
      textAlign(RIGHT, CENTER);
      textFont(font1, 20);
      text ("HARRY SALTZMAN", width/2.5-30, height/2);
      textAlign(LEFT, CENTER);
      text ("ALBERT R.BROCCOLI", width/2.5+30, height/2);

      textFont(font2, 15);
      text ("present", width/2.5+250, height/2);
      noStroke();
      circle (width/2.5, height/2, 50);

      fill (negro);
      textAlign(CENTER, CENTER);
      textFont(font1, 30);
      text ("&", width/2.5, height/2);
    }
  }
  //Pantalla 2
  else if (segundos <=10  ) {

    if ( velX >= width/2.5) {              //continua animacion ellipse
      fill (0);                           //Borra ellipse actual
      ellipse (velX, height/2, 51, 51);  

      fill (0, 30);                       // opacidad general borra texto de fondo
      rect (0, 0, width, height);

      velX += 10;                     // dibuja  ellipse nueva ubicacion
      fill (255);                        
      ellipse (velX, height/2, 50, 50);
    }

    if ( velX >= 500 && velX <= 600) {      // dibuja  ellipse delay1      

      fill (rojo);                        
      ellipse (500, height/2, 50, 50);
    }
    if ( velX >= 650 && velX <= 720) {      // dibuja  ellipse delay2   
      fill (rojo);                        
      ellipse (650, height/2, 50, 50);

      fill (0, 30);                      // opacidad y opacidad general
      rect (0, 0, width, height);
    }
  }

  //Pantalla 3  
  else if (segundos <= 14) {

    frameRate(12);

    if (currentFrame<=36) {      //cargo secuencia
      image(imagen[(currentFrame) % numFrames], 0, 0, width, height);
      currentFrame = (currentFrame+1) % numFrames;
    } 

    if (aniX <=110) {     /// mira objetivo
      strokeWeight(1450);
      stroke(0);
      noFill();
      ellipse (700-aniX, height/2, 1600+aniX, 1600+aniX); 
      aniX +=10;
    } else 

    if (aniX <=330) {     /// mira objetivo
      strokeWeight(1450);
      stroke(0);
      noFill();
      ellipse (700-aniX, height/2, 1700, 1700); 
      aniX +=10;
      noStroke();
    } else {


      tint(125, 20, 20);  // Tint 
      noFill();
      stroke(#1C0505);
      ellipse (700-aniX, height/2, 1660, 1720);  //pausa
      noStroke();

      fill (125, 20, 20);
      textAlign(CENTER, CENTER);
      textFont(font1, 360);
      text ("0 7", width/2, 200);
    }
  } 



  //Pantalla 4  
  else if (segundos <= 24) {

    frameRate(30);
    if ( sangre <= 400) {

      noStroke();
      fill ( rojo);  // sangre cae

      ellipse(20, sangre + 0+ random(30), 90, 90);
      ellipse(200, sangre +  50, 90, 90);
      ellipse(550, sangre +  70+ random(30), 90, 90);
      ellipse(485, sangre +  50, 70, 80);
      ellipse(690, sangre +  55+ random(50), 90, 90);

      ellipse(150, sangre + 0, 200, 130);
      ellipse(300, sangre -20, 200, 130);
      ellipse(650, sangre + 0, 200, 150);
      ellipse(450, sangre + 10, 300, 120);

      sangre = sangre + random(10);
    } else {

      fill (0);                      // opacidad y opacidad general
      rect (0, 0, width, height);
    }
  }

  //Pantalla 4  
  else if (segundos <=26) {
    println ("HOLSSSSSSSSSSSSS");

    frameRate(6);

    if (parpadeo== false && segundos <= 26) {   
      noStroke();
      fill (rojo);
      circle (500, 365, 70); 


      for (int y=-10; y<=380; y+=62) {      // verde2
        fill (verde);   
        circle (575, y, 60) ;
      }

      fill (0);
      rect (0, 0, 200, 405);
      parpadeo = !parpadeo;
    } else {

      for (int x=40; x<=200; x+=62) {       // verde1
        for (int y=0; y<=400; y+=62) {
          fill (verde);   
          circle (x, y, 60) ;
        }
      }
      fill (verde);   
      circle (500, 365, 70);
      fill (0, 255);

      rect (540, 0, 720, 405);
      parpadeo = !parpadeo;
    }



    if (mov1<=410) {                     //celeste1
      fill (celeste);   
      circle (220, mov1+21, 40) ;
      mov1+=42;
    } 

    if (mov2>=-400) {                     //oliva
      fill (oliva);   
      circle (262, mov2+399, 40) ;
      mov2-=42;
    } else
      if (mov3<=300) {                    //oliva2
        fill (oliva);   
        circle (304, mov3+21, 40) ;
        mov3+=42;
      } 
    if (mov4<=200) {                //celeste 2
      for (int y=22; y<=180; y+=42) {
        fill (celeste);   
        circle (mov4+350, y, 40) ;
      } 
      mov4+=42;
    } else   if (posX<=200) {                   //blanco
      posX+=42;
      fill (blanco);   
      circle (posX+308, 190, 40) ;
    }
  } else if (segundos <=27) { 

    fill (0, 30);                      // opacidad y opacidad general
    rect (0, 0, width, height);
  } 
  
  
  
  else {                 // FIN 
    fill (125, 20, 20);
    textAlign(CENTER, CENTER);
    textFont(font1, 70);
    text ("James Bond", width/2, 200);
  }
  
  
} 

void mouseMoved() {
  strokeWeight(1);
  stroke(rojoA);
  point (mouseX, mouseY);
  line (mouseX-10, mouseY, mouseX-20, mouseY);
  line (mouseX+10, mouseY, mouseX+20, mouseY);
  line (mouseX, mouseY+10, mouseX, mouseY+20);
  line (mouseX, mouseY-10, mouseX, mouseY-20);
  noStroke();
}
