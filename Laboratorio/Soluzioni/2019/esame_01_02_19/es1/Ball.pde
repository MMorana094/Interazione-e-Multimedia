class Ball{
  int posx, posy, R;                  // posizione(x, y), raggio
  int VSy = 5;                        // VSy = velocità lungo Y
  Ball(int x, int y, int R){
    this.posx= x;
    this.posy= y;
    this.R = R;
  }
  //faccio stampare a schermo un cerchio senza bordi di colore rosso della grandezza R*2
  void display(){
    noStroke();
    fill(255,0,0);
    circle(posx, posy, R*2);
    }
  //faccio muovere il cerchio da sinistra a destra della velocità VSy
  void move(){
    if (posy < 0 || posy > height)
     VSy*=-1;
     
       posy += VSy;
     }
    
  void run(){
  move();
  display();
  }
}
