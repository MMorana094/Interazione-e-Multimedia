ArrayList<Stain> stain;
Sponge s;

void setup(){
  size(700, 700);

  stain = new ArrayList<Stain>();
  s = new Sponge();
}

void draw(){
  background(90, 150, 200);
  for(Stain st:stain){
    s.absorb(st);
    st.run();
    
    if(s.absorb(st)){
      st.delete();
    }
  }
  s.run();
}
  
void keyPressed(){
    if(key == 'S' || key == 's'){
      stain.add(new Stain(int(random(50,650)), -30, int(random(10,50)), color( int(random(255)), int(random(255)), int(random(255)))));
    }
    if(key == 'G' || key == 'g'){
      setup();
    }
    if(key == 'R' || key == 'r'){
      s = new Sponge(30);
    }
}
