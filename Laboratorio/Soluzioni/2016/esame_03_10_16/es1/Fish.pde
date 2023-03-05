class Fish{
  int posx, posy, Vx = int(random(1, 4)), Vy = int(random(-1.5, 1.5)), asseX = 80, asseY = 50;
  color c;
  
  Fish(){
    this.posx = int(random(450));
    this.posy = int(random(450));
    this.c = color(int(random(255)));
  }
  Fish(int x, int y, color C){
    this.posx = x;
    this.posy = y;
    this.c = C;
  }
  //creo un pesce composto da un ellisse come corpo, e un triangolo ottenuto tramite i vertici come coda
  void display(){
    fill(c);
    ellipse(posx, posy, asseX, asseY);

    beginShape(TRIANGLES);
    vertex((posx-(asseX/2)), posy);
    vertex((posx-(asseX/2)-40), posy+25);
    vertex((posx-(asseX/2)-40), posy-25);
    endShape(CLOSE);
    
    fill(0);
    circle(float(posx+20), float(posy-10), 10);
    
  }
  //controllo se la posizione lungo Y è in corrispondenza dei bordi superiori e inferiori, se lo è inverto la direzione di marcia del pesce, sennò continuo ad avanzare
  void move(){
    if(posy <0 || posy > width){
      Vy *= -1;
    }
    posx += Vx;
    posy += Vy;
    
  }
  //creo bolle richiamando il costruttore della classe
  Bubble generaBubble(){
    Bubble R = new Bubble(posx+70,posy);
    return R;
  }
  
  void run(){
    display();
    move();
  }
}
