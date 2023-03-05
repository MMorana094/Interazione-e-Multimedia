class Bullet{
  float posx, posy, sx, sy, r = 10;  // sx = velocità lungo x, sy = velocità lungo y, r = raggio
  color c;
  
  Bullet(float x, float y, float sx, float sy){
    this.posx = x;
    this.posy = y;
    this.sx = sx;
    this.sy = sy;
    this.c = color(0, 0, 0);
  }
  
  void display(){
    noStroke();
    fill(c);
    ellipseMode(CENTER);
    ellipse(posx, posy, r*2, r*2);
  }
  
  void move(){
    posx += sx;
    posy += sy;
  }
  
  void run(){
    display();
    move();
  }
}
