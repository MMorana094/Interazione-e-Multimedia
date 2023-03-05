class Hyperball extends Ball{
  color c = color(0,0,255);
  //richiamo il costruttore della classe principale
  Hyperball(int x, int y, int r){
    super(x, y, r);
  }
  //controllo se il mouse è all'interno del cerchio in caso affermativo la palla cambia colore
  void checkMouse(){
    if(dist(mouseX, mouseY, posx, posy) < 50)
      c = color( random(255), random(255), random(255));
  }
  
  
  void display(){
    noStroke();
    fill(c);
    circle(posx, posy, R*2);
    }
    
  void move(){
   posy+=VSy;
    if (posy < 0 || posy > height)
     VSy*=-1;
    }
    
  void run(){
    move();
    display();
    checkMouse();
  }
}
