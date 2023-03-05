ArrayList<Asteroids> aster;
Gun G;
ArrayList<Bullets> bull;
void setup(){
    size(512, 512);
    frameRate(60);
    aster = new ArrayList<Asteroids>();
    G = new Gun();
    bull = new ArrayList<Bullets>();
}

void draw(){
  background(120, 150, 190);
  G.run();
  
  for(Bullets b:bull){
    b.run();
  }
  //facciamo partire i nostri asteroidi e carichiamo i proiettili, se l'asteroide viene colpito cambia colore e cade
  for(Asteroids a:aster){
    a.run();
    for(Bullets b:bull){
      a.hit(b);
    }
  }
  
  if(random(0,100) < 5){
    aster.add(new Asteroids(-50,random(256), random(2,7), random(-2,2)));
  }
}

  void keyPressed(){
    if(key == 'A'){
      bull.add(G.shot());
    }
    if(key == 'R' || key == 'r'){
      setup();
    }  
}
