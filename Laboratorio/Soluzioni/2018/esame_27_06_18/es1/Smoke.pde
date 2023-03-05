class Smoke{
  float posx, posy, Vy, D; // Vy = velocità ungo y, D = Diametro
  color c = color(150);
  Smoke(float x, float y, float v, float d){
    this.posx = x;
    this.posy = y;
    this.Vy = v;
    this.D = d;
  }
  
  void display(){
    fill(c);
    ellipse(posx, posy, D, D);
  }
  
  void move(){
    if(posy >= height/2)
    posy -= Vy;
    if(posy <= height/2)
    posy -= Vy;
    
  }
  
  void run(){
    display();
    move();
  }
  
}
