
void dibujaArcoiris() { 
  pushMatrix();
  for (int ii=0; ii<50; ii++) {

    for (int i = 0; i < 30; i++) {             //  30 veces en 360   //fuxia

      x = 460 * cos(i * TWO_PI/30.0);      
      y = 460 * sin(i * TWO_PI/30.0);

      fill(fuxia); 
      ellipse(x, y, radio, radio);
    }

    for (int i = 0; i < 30; i++) {            //azul
      x = 450 * cos(i * TWO_PI/30.0);      
      y = 450 * sin(i * TWO_PI/30.0);

      fill(azul);  

      ellipse(x, y, radio, radio);
    }

    for (int i = 0; i < 30; i++) {            //verde
      x = 440 * cos(i * TWO_PI/30.0);      
      y = 440 * sin(i * TWO_PI/30.0);

      fill(verde);  
      ellipse(x, y, radio, radio);
    }

    for (int i = 0; i < 30; i++) {             //celeste
      x = 430 * cos(i * TWO_PI/30.0);      
      y = 430 * sin(i * TWO_PI/30.0);

      fill(celeste);  //verde
      ellipse(x, y, radio, radio);
    }

    for (int i = 0; i < 30; i++) {             //amarillo
      x = 420 * cos(i * TWO_PI/30.0);      
      y = 420 * sin(i * TWO_PI/30.0);

      fill(amarillo);  
      ellipse(x, y, radio, radio);
    }
    scale(0.89);
    rotate (rampa);
  }

  popMatrix();
}



void obturador() { 
  for (int x=-720; x<720; x+=4) {                       ///////////////////////////obturador
   


    fill(0);
    noStroke();
    rect (x+rampa, -height/2, 3, height); 
    println(rampa);
  }
}
