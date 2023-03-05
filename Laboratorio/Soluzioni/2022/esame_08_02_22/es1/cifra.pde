class Cifra{
  int posx, posy, dim = 32;
  float Vy = 1;
  char ct;
  color c= color(255, 255, 0);

  Cifra(){
    this.posx = int(random(width));
    this.posy = int(random(height));
    this.ct = char(int(random(33, 126)));
  }
  
  Cifra(int x, int y, char c){
    this.posx = x;
    this.posy = y;
    this.ct = c;
  }
  
  void display(){
    textSize(dim);
    fill(c);
    text(ct, posx, posy);
  }
  
  void move(){
    posy += Vy;
    if(posy >= height){
      posy = 0;
      posx = int(random(width-50));
    }
  }
  
  void run(){
    display();
    move();
  }
}
