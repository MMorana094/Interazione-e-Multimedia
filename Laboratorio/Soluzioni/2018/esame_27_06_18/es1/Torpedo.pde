class Torpedo{
  float posx, posy, Vx, b = 100, h = 20;
  color c = color(135, 0, 0);
  
  
  Torpedo(){
    this.posx = random(width-62);
    this.posy = random(50, height-62);
    this.Vx = random(3, 10);
  }
  
  Torpedo(float x, float y, float v){
    this.posx = x;
    this.posy = y;
    this.Vx = v;
  }  
  
  void display(){
    fill(c);
    rect(posx, posy, b, h);
    ellipseMode(CENTER);
    ellipse(posx+b, posy+h/2, h, h);
  }
  
  Smoke addSmoke(){
    float d = random(10, 30);
    Smoke s = new Smoke((posx-b/2), (posy-h), (d/5), d);
    return s;
  }
  
  void move(){
    posx += Vx;
  }
  
  void run(){
    display();
    move();
  }
}
