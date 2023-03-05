class Asteroids{
  float posx, posy, Vx, Vy, dim = 50;
  boolean state = true;
  color c = color(255, 255, 0);
  
  Asteroids(float x, float y, float v1, float v2){
    this.posx = x;
    this.posy = y;
    this.Vx = v1;
    this.Vy = v2;
  }
  
  void display(){
    ellipse(posx, posy, dim, dim);
    strokeWeight(1);
    stroke(c);
    if(state){
      fill(180, 0, 0);
    } else {
      fill(150);
    }    
  }
  
  void move(){
    
    if(state == false){
      posy += 0.2;
    } else {
    posx += Vx;
    posy += Vy;
    }
  }
  
  void hit(Bullets a){
    if((dist(a.posx, a.posy, posx, posy) < dim/2) && state){
       state = false;
    }
  }
  void run(){
    display();
    move();
  }
}
