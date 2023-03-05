class Voto{
  float posx, posy, Vx, l = 30;// Vx = velocità lungo x, l = lato del quadrato;
  int voto;
  
  Voto(float x, float y, float v, int s){
     this.posx = x;
     this.posy = y;
     this.Vx = v;
     this.voto = s;
  }
  Voto(){
     this.posx = random(width);
     this.posy = random(height);
     this.Vx = random(2, 10);
     this.voto = int(random(18, 30));
  }
  
  void move(){
    if(posx < 0){
      Vx *= -1;
    }
    if(posx >width){
      Vx *= -1;
    }
    posx+=Vx;
  }
  
  void display(){
    stroke(150, 150, 0);
    noFill();
    rectMode(CENTER);
    rect(posx, posy, l, l);
    fill(150, 150, 0);
    textSize(28);
    text(voto,posx-13, posy+10);
    
  }
  
  void run(){
      display();
      move();
  }
}  
