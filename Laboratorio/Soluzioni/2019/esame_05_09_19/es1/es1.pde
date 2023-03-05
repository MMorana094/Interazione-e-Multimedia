Pillow pillow;
SuperPillow superpillow;
void setup(){
  size(256, 512);

  pillow = new Pillow(int(random(0, 256)), int(random(256)), 40, 80);
  superpillow = new SuperPillow(int(random(256)), int(random(256, 512)), 40, 80);
}

void draw(){
  background(0);
  pillow.run();
  superpillow.run();
}

void keyPressed(){
  if(key == 'R' || key == 'r'){
    setup();
  }
  
}
