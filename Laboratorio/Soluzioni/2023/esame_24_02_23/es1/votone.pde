class Votone extends Voto{
  Votone(){
    super();
  }
  
  void display(){    
    
    stroke(150, 150, 0);
    noFill();
    rectMode(CENTER);
    rect(super.posx, super.posy, super.l, super.l);
    fill(255);
    textSize(28);
    text(voto,posx-13, posy+10);
    text("LODE", super.posx, super.posy+30);
  }
  
  void run(){
    if(super.voto > 24){
        fill(255);
        display();
    }
   }
}
