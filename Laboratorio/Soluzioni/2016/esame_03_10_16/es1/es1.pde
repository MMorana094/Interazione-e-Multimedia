ArrayList<Bubble> bubble;
ArrayList<Fish> fish;
void setup(){
  size(500, 500);
  frameRate(60);
  bubble = new ArrayList<Bubble>();
  fish = new ArrayList<Fish>();
}

void draw(){
  background(0, 127, 255);
  for(Bubble b:bubble)
  b.run();
  for(Fish f:fish){
  f.run();
  //con una possibilità del 2% ogni pesce genera una bolla
  if(int(random(0, 100)) < 2){
    bubble.add(f.generaBubble());
    }
  }
}

void keyPressed(){
  if(key == 'N' || key == 'n'){
    fish.add(new Fish(-50,int(random(50,450)),color(random(0,255), random(0,255), random(0,255)) ));
  }
}
