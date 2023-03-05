class Casetta extends Casa{
  float l = 10;
  
  Casetta(){
    super();
  }
  
  Casetta(float x, float y){
    super(x, y);
  }
  
  void display(){
    strokeWeight(3);
    noFill();
    stroke(255);
    rectMode(CENTER);
    rect(posx, posy, super.l, super.l);
    beginShape(TRIANGLES);
    vertex(posx+15, posy-15);
    vertex(posx-15, posy-15);
    vertex(posx, posy-30);
    endShape();
    rectMode(CENTER);
    rect(posx, posy+7, l, l);
  }
  
  void move(){
    posx += Vx;
    if(posx > width+15){
      posx = 0;
    }
  }
  
  void run(){
    display();
    move();
  }
}
