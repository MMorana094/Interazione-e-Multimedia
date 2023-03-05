class Baloon{
  int posx, posy, D = 50;
  
  Baloon(int x, int y){
    this.posx = x;
    this.posy = y;
  }
  
  void display(){
    fill(255, 0, 0);
    noStroke();
    ellipse(posx,posy, D, D);
  }
  
  void move(double e){
    posx += e;
  }
  //se il pallone è in un certo range ritorna vero o falso
  boolean range(float a, float b){
    if(posx-25 > a && posx+25 < b){
      return true;
    }
    return false;
  }
  //se il pallone viene colpito torna vero, sennò falso
  boolean hit(Spear s1){
    if(dist(s1.posx, s1.posy+40, posx, posy) < D/2){
    return true;
    }
  return false;
  }
  
  void run(double e){
    display();
    move(e);
  }
}
