int q = 34021;

int f(int q){
  return ((q%21)/80);
}

class Heart{
  float posx, posy, sx = random(-5, 5), sy = random(3, 7);  //sx = velocità lungo x, sy = velocità lungo y
  boolean state = true;
  
  Heart(float x, float y){
    this.posx = x;
    this.posy = y;
    
  }
  
  void display(){
    noFill();
    rectMode(CENTER);
    stroke(255);
    strokeWeight(2);
    rect(posx, posy, 60, 60);
    noStroke();
    if(state)
    fill(255, 50, 50);
    else
    fill(150);
    bezier(posx, posy-15, posx-30, posy-25, posx-30, posy-25, posx, posy+25);
    bezier(posx, posy-15, posx+30, posy-25, posx+30, posy-25, posx, posy+25);
  }
  
  void swap(){
    if(dist(posx, posy, mouseX, mouseY) < 30){
      state = false;
    }
  }
  
  void move(){
    posx += sx;
    if(!state){
      sy -= (0.1 + f(q));
    }
    posy -= sy;
  }
  
  void run(){
    display();
    move();
  }
}
