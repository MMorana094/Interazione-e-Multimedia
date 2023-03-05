PImage Im, ImR, ImC; //Immagine Random ImR, Immagine Combinata ImC
float alfa = 0.5;

void setup(){
  size(768,256);
  Im = loadImage("lena.png");
  Im.resize(256,256);
  ImR = randomIm(256,256);
}

void draw(){
  ImC = combine(Im,ImR, alfa);
  
  image(ImR,0,0);
  image(Im,ImR.width,0);
  image(ImC, ImR.width*2,0);
  
  textSize(30);
  text("Alfa = " + alfa, width/2-Im.width/2,height-40);
}

void keyPressed(){
  if(key=='+' && alfa <1){
    alfa+=0.1;
  }
  
  if(key=='-' && alfa>0.1){
    alfa-=0.1;
  }
}
