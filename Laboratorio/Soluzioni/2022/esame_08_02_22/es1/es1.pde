ArrayList<Cifra> cifra;
ArrayList<Cifrotta> cifrotta;

void setup(){
  size(500, 500);
  
  cifra = new ArrayList<Cifra>();
  cifrotta = new ArrayList<Cifrotta>();
}

void draw(){
  background(0);
  for(Cifra c:cifra){
    c.run();
  }
  
  for(Cifrotta C:cifrotta){
    C.run();
  }
  
  
  
}


void keyPressed(){
  if(key == 'A'){
    cifra.add(new Cifra(int(random(width-50)), int(random(height)), char(int(random(33, 126)))));
  }
  if(key == 'B'){
    cifrotta.add(new Cifrotta(int(random(width-50)), int(random(height)), char(int(random(33, 126)))));
  }
}

void mousePressed(){
  if(mouseButton == RIGHT){
    setup();
  }
}
