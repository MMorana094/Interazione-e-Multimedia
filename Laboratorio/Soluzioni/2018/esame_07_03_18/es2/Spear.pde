class Spear{
  int posx, posy;
  float Vy;
  
  Spear(int x, int y, float V){
    this.posx = x;
    this.posy = y;
    this.Vy = V;
  }
  
  void display(){
    fill(100, 150, 200);
    noStroke();
    beginShape(TRIANGLES);
    vertex(posx, posy+40);
    vertex(posx+15, posy);
    vertex(posx-15, posy);
    endShape();
   
    
  }
  
  void move(){
    posy += Vy;
    if(posy == height){
      posy = 0;
    }
  }
  
  void run(){
    display();
    move();
  }
}
