class Gun{
  int posx, posy, b = 20, h = 70;
  
  Gun(){
  }
  
  void display(){
    rectMode(CENTER);
    fill(150);
    rect(mouseX, height-35, b, h);
  }
  
  Bullets shot(){
    return new Bullets(mouseX, float(height-70));
  }
  
  void run(){
    display();
  }
}
