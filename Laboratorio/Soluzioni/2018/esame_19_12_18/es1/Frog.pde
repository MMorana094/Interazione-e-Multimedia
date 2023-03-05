class Frog{
  float posx, posy, Vx = random(-3, 3), Vy = random(-3, 3), dim = 20;
  
  Frog(float x, float y){
    this.posx = x;
    this.posy = y;
  }
  
  void display(){
    noStroke();
    ellipseMode(CENTER);
    fill(0, 255, 0);
    ellipse(posx, posy, 70, 50);
    ellipse(posx-25, posy-20, dim, dim);
    ellipse(posx+25, posy-20, dim, dim);
  }
  
  void move(){
    if(posx <= 0 || posx >= width-10){
      Vx *= -1;
    }
    if(posy <= 0 || posy >= height-10){
      Vy *= -1;
    }
    posx += Vx;
    posy += Vy;
    
  }
  
  void checkDist(){
    if(dist(mouseX, mouseY, posx, posy) <= 35){
      if(posy > height/2){
        Vy = -7;
      } 
      if(posy < height/2){
        Vy = -7;
      }
    }
  }
  
  void run(){
    display();
    checkDist();
    move();
  }
}
