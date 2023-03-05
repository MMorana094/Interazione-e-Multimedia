class Bullets{
  float posx, posy, dim = 10, Vy = 10;
  color c = color(255, 0, 255);
  
  Bullets(float x, float y){
    this.posx = x;
    this.posy = y;
  }
  
  void run(){
    display();
    move();
  }
  
  void move(){
    posy -= Vy;
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipse(posx, posy, dim, dim);
  }
}
