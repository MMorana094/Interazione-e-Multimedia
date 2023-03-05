class Watch{
  int dim = 120, h, m, s;  // h = ore, m = minuti, s = secondi;
  float posx, posy;
  
  Watch(){
    this.posx = height/2;
    this.posy = width/2;
  }
  
  void display(){
    //creo un ellisse di grandezza dim
    ellipseMode(CENTER);
    noStroke();
    ellipse(posx, posy, dim, dim);
    //creo una matrice di trasformazione dove segno coordinate x e y in modo da poter poi giocare con la rotazione della lencetta dei secondi
    pushMatrix();
    translate(posx, posy);
    rotate(radians(map(s, 0,60,0, 360)));    //mappo i secondi in modo da far corrispondere un angolo giro (0-360°) a 60 secondi
    stroke(0);
    line(0, 0, 0, 0-50);
    popMatrix();
    //creo una matrice di trasformazione dove segno coordinate x e y in modo da poter poi giocare con la rotazione della lencetta dei minuti
    pushMatrix();
    translate(posx, posy);
    rotate(radians(map(m, 0,60,0, 360)));    //mappo i minuti in modo da far corrispondere un angolo giro (0-360°) a 60 minuti
    stroke(255, 0, 0);
    strokeWeight(2);
    line(0, 0, 0, 0-40);
    popMatrix();
    //creo una matrice di trasformazione dove segno coordinate x e y in modo da poter poi giocare con la rotazione della lencetta delle ore
    pushMatrix();
    translate(posx, posy);
    rotate(radians(map(h, 0,12,0, 360)));    //mappo i ore in modo da far corrispondere un angolo giro (0-360°) a 12 ore
    stroke(0, 0, 255);
    strokeWeight(3);
    line(0, 0, 0, 0-30);
    popMatrix();
    
  
}
  // faccio muovere la lancetta dei secondi una volta arrivare a 60 secondi, aumenta di uno i minuti fino ad arrivare a 60 minuti per aumentare di uno le ore.
  void move(){
    s++;
    if(s >59){
      s = 0;
      m++;
    }
    if(m >59){
      m = 0;
      h++;
    }
  }
  
  void run(){
    display();
    move();
  }
}
