PImage Im;
char stato;

void setup(){
  size(512,512);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  stato = 'r';
  
}

void draw(){
  image(Im,0,0);
  image(channel(Im,'r'), Im.width,0);
  image(channel(Im,'g'),0, Im.height);
  image(channel(Im,'b'), Im.width,Im.height);

}


void keyPressed(){
  if(key=='g')
    stato='g';
    
  if(key=='r')
    stato='r';
    
  if(key=='b')
    stato='b';
    
  if(key=='+')
    Im = changeColor(Im,stato,3);

  if(key=='-')
    Im = changeColor(Im,stato,-3);
}
