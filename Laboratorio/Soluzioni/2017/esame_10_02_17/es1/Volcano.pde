class Volcano{
  float posx, posy;
  int h = 60;                      //altezza del vulcano
  color c = color(100, 40, 0);
  boolean state = false;          //stato di attivazione
  
  Volcano(float x, float y){
    this.posx = x;
    this.posy = y;
  }
  
  void display(){
    fill(c);
    quad(posx+35, posy, posx, posy+h, posx+120, posy+h, posx+85, posy);
  }
  //creo una palla di fuoco e la restituisco
  FireBall spara(){
    FireBall f1 = new FireBall(posx+60, posy, random(-2, 2), random(-8, -2), random(5, 10));
    
    return f1;
  }
  
  void run(){
    display();
  }
}
