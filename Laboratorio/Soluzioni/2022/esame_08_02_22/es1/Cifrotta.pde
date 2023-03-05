class Cifrotta extends Cifra{
  color c = color(255, 0, 0);
  
  Cifrotta(int x, int y, char c){
    super(x, y, c);
  }
  
  void display(){
    noFill();
    stroke(c);
    ellipseMode(CENTER);
    ellipse(posx, posy, dim, dim);
    super.display();  }
  
  void move(){
    posy -= Vy;
    if(posy == 0){
      posy = height;
      posx = int(random(width-50));
    }
  }
  
  void run(){
    display();
    move();
  }
}
