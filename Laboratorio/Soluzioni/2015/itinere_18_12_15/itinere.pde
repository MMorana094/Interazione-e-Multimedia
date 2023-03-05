Watch orologio;

void setup(){
  frameRate(60);
  size(500, 500);
  
  orologio = new Watch();
}

void draw(){
  background(0);
  orologio.run();
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    setup();
  }
}
