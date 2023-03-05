ArrayList<Casa> casa;
ArrayList<Casetta> casetta;

void setup(){
  size(500, 500);
  casa = new ArrayList<Casa>();
  casetta = new ArrayList<Casetta>();
  
}

void draw(){
  background(0);
  
  for(Casa c:casa){
    c.run();
  }
  
  for(Casetta ca:casetta){
    ca.run();
  }
}

void keyPressed(){
  if(key == 'r'){
    setup();
  }
}

void mouseClicked(){
  if(mouseButton == LEFT){
    casa.add(new Casa(random(15, width-15), random(15, height-15)));
  }
  if(mouseButton == RIGHT){
    casetta.add(new Casetta(random(15, width-15), random(15, height-15)));
  }
}
