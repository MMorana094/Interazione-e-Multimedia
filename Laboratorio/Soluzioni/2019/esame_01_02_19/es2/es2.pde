PImage Im, Imh, Imh2;

void setup(){
  size(768, 256);
  Im = loadImage("lena.png");
  Im.filter(GRAY);
  Im.resize(256,256);
  image(Im, 0, 0);
  
  Imh = hash(Im, int(random(256)), int(random(256)));
  image(Imh, Im.width, 0);
  
  Imh2 = hash(Im, (int(random(256))), (int(random(256))), (int(random(3, 11))));
  image(Imh2, Im.width*2, 0);
}

void keyPressed(){
  if(key == 'R' || key == 'r'){
    setup();
  }
}
