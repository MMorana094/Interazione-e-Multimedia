Ball balls;
Hyperball hyperBall;

void setup(){
  size(512, 256);
  
  balls = new Ball(int(random(256)), int(random(256)), 40);
  hyperBall = new Hyperball(int(random(256,512)), int(random(256)), 40);
}

void draw(){
  background(0);
  balls.run();
  hyperBall.run();
}

void keyPressed(){
  if(key == 'R' || key == 'r'){
  setup();
  }
}
