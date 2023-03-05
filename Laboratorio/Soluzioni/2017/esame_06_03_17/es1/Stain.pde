class Stain{
  int posx, posy, D;
  color c;
  
  Stain(int x, int y, int D, color C){
  this.posx = x;
  this.posy = y;
  this.D = D;
  this.c = C;
  }
  
  void display(){
    fill(c);
    noStroke();
    ellipse(posx, posy, D, D);
  }
  
  void move(){
    posx += int(random(-1, 1));
    posy += int(random(0, 4));
  }
  
  void run(){
    move();
    display();
  }
  
  void delete(){
    posx-=width*2;
    posy = height;
  }
}
