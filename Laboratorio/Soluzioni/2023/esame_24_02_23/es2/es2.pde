PImage Im;
void setup(){
  size(512,512);
  Im = loadImage("lena.png");
  image(wow(Im), 0,0);
}

void draw(){

}

void keyPressed(){
  if(key == 'r' || key == 'R')
    setup();
}
