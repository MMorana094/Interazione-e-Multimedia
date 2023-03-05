PImage Im;
int S;
void setup(){
  size(512,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  Im.filter(GRAY);
  
  S=2;
}


void draw(){
  background(0);
  image(Im,0,0);

  image(jonnyFilter(Im,S),Im.width,0);
  
  textSize(30);
  text("S = " + S,width-70, 50);
}

void keyPressed(){
  if(key=='+' && S < 9)
    S++;
  if(key=='-' && S > 2)
    S--;
}
