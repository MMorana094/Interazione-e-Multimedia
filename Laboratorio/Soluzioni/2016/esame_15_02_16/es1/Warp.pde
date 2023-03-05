class Warp{
  float posx = random(50, width-50), posy = random(50, height-50), angolo = random(0, 360), potenza = random(1, 10), r1 = 35, r2 = 30, r3 = 25;  //r1,2,3 = raggio dei cerchi
  color c = color(150, 150, 0);
  Warp(){
  }
  //creo 3 cerchi concentrici di colori e grandezze differenti
  void display(){
    ellipseMode(CENTER);
    //noFill();
    strokeWeight(2);
    fill(0);
    ellipse(posx, posy, r1*2, r1*2);
    strokeWeight(2);
    fill(150);
    ellipse(posx, posy, r2*2, r2*2);
    strokeWeight(2);
    fill(c);
    ellipse(posx, posy, r3*2, r3*2);
  }
  //controllo se il mouse è dentro il warp
  Boolean checkDist(){
    return (dist(mouseX, mouseY, posx, posy) <= 25);
    }
  //sparo un proiettile da dentro il warp con velocità sx, sy uguali al prodotto del seno e del coseno del loro angolo per la potenza
  Bullet shot(){
    float sx = potenza*cos(radians(angolo));
    float sy = potenza*sin(radians(angolo));
    Bullet b = new Bullet(posx, posy, sx, sy);
    
   return b;
  }
  
  void run(){
    display();
  }
}
