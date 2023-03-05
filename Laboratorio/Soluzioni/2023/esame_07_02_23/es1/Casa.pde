class Casa{
  float posx, posy, Vx = random(2, 10), l = 30;    //Vx = velocità lungo x, l = lato
  
  Casa(){
    this.posx = random(width);
    this.posy = random(height);
    }
    
  Casa(float x, float y){
    this.posx = x;
    this.posy = y;
  }
    
  void display(){
    strokeWeight(3);
    stroke(100, 150, 0);
    noFill();
    rectMode(CENTER);
    rect(posx, posy, l, l);
    beginShape(TRIANGLES);
    vertex(posx+15, posy-15);
    vertex(posx-15, posy-15);
    vertex(posx, posy-30);
    endShape();
  }
  
  void move(){
    posx -= Vx;
    if(posx < 15 || posx >width-15){
      Vx *= -1;
    } 
  }
  
  void run(){
    display();
    move();
  }
}
