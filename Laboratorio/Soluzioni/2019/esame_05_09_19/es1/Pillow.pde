class Pillow{
  int posx, posy, w, h, Vsx = 2;
  
  Pillow(int x, int y, int w, int h){
    this.posx = x;
    this.posy = y;
    this.w = w;
    this.h = h;
  }
  
  void display(){
    fill(255);
    noStroke();
    rectMode(CENTER);
    rect(posx, posy, w, h);
  }
  
  void move(){
    posx += Vsx;
    if(posx < 0 || posx > width){
      Vsx *= -1;
    }
  }
  
  void run(){
    display();
    move();
  }
}
