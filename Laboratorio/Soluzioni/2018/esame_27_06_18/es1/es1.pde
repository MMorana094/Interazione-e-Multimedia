ArrayList<Smoke> smokes;
ArrayList<Torpedo> torpedos;

void setup(){
  size(512, 512);
  frameRate(60);
  
  smokes = new ArrayList<Smoke>();
  torpedos = new ArrayList<Torpedo>();
}

void draw(){
  background(0, 108, 200);
  for(Torpedo t:torpedos){
    t.run();
    for(Smoke s:smokes){
        s.run();
      }
      if(random(0, 100) < 50){
          smokes.add(t.addSmoke());
        }
    }
}

void keyPressed(){
  if(key== 'r'){
    setup();
  }
  if(key=='N'){
    torpedos.add(new Torpedo(-50,random(50,450), random(5,10)));
  }
}
