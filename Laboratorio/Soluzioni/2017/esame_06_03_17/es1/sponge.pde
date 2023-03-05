class Sponge{
  int posx, posy, L = 30;  //L = lato della spugna
  color c = color(200, 200, 100);
  
  Sponge(){

  }
  
  Sponge(int l){
    this.L = l;
  }
  //crea una spugna di forma quadrata senza bordi
  void display(){
    fill(c);
    noStroke();
    rectMode(CENTER);
    rect(posx, posy, L, L);
  }
  
  void move(){
    posx = mouseX;
    posy = mouseY;
  }
  //se la spugna ricopre la macchia la assorbe ed aumenta la sua grandezza cambiando colore
  boolean absorb(Stain s){
    if(dist(mouseX, mouseY, s.posx, s.posy) < L/2){
      L += (s.D/2);
      float r, g, b;
      r = (red(c) + red(s.c))/2;
      g = (green(c) + green(s.c))/2;
      b = (blue(c) + blue(s.c))/2;
      
      this.c = color(r, g, b);
      return true;
    }
    return false;
  }
  
  void run(){
    display();
    move();
  }
}
