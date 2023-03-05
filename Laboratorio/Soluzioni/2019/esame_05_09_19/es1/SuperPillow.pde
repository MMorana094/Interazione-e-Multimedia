class SuperPillow extends Pillow{
  int angle = int(random(0, 360));
  
  SuperPillow(int x, int y, int w, int h){
    super(x, y, w, h);
  }
  
  void display(){
    /*fill(255);
    rectMode(CENTER);
    rect(posx, posy, w, h);
    fill(0);
    
    */
      pushMatrix();
    
      translate(posx,posy);
      rotate(radians(angle));
      
      fill(255);
      noStroke();
      rectMode(CENTER);
      rect(0,0,w,h);
      
      fill(0);
      circle(0, 0, w);
      
    popMatrix();
  }
  
  void incAng(){
    if(dist(mouseX, mouseY, this.posx, this.posy) < w/2){
      angle+=5;
    }
  }
  

  
  void run(){
    display();
    move();
    incAng();
  }
}
