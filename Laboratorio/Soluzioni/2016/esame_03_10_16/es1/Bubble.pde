class Bubble{
  int posx, posy, Vy = int(random(1, 4)), D;  //D = diametro, Vy = velocità lungo Y
  
  Bubble(int x, int y){
    this.posx = x;
    this.posy = y;
    this.D = int(random(100));
  }
  // creo un cerchio di grandezza D/4 che sarebbe la bolla
  void display(){
    fill(100, 150, 255);
    circle(posx, posy, D);
    fill(255);
    noStroke();
    circle(posx-D/2+D/4, posy-D/2+D/4, D/4);
  }
  
  void move(){
    posy -= Vy;
  }
  
  void run(){
    display();
    move();
  }
}
