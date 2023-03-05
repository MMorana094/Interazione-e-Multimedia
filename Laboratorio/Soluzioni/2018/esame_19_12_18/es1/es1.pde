ArrayList<Frog> frogs;

void setup(){
  size(512, 512);
  frameRate(5);
  
  frogs = new ArrayList<Frog>();
}

void draw(){
  background(0);
  for(Frog f:frogs){
    f.run();
  }
}

void keyPressed(){
  if(key == 'F'){
    frogs.add(new Frog(random(50, 450), random(50, 450)));
  }
  if( key == '+' ){
      if(frameRate >5 && frameRate<300)
        frameRate(frameRate+10);
}
  
  if(key == 'R'){
    setup();
  }
}
