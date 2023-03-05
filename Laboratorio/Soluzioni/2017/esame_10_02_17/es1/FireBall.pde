class FireBall{
  float posx, posy, Vx, Vy, D; // Vx/Vy = Velocità lungo gli assi, D = diametro
  
  FireBall(float x,float y,float v1,float v2,float d){
    this.posx = x;
    this.posy = y;
    this.Vx = v1;
    this.Vy = v2;
    this.D = d;
  }
  
  void display(){
    noStroke();
    fill(100, 0, 0);
    ellipseMode(CENTER);
    ellipse(posx, posy, D, D);
  }
  
  void move(){
    posx += Vx;
    posy += Vy;
    posy -=0.1;
  }
  
  void run(){
    display();
    move();
  }
}
