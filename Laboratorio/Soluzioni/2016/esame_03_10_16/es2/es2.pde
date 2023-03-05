  PImage Im, ImUniforme, ImLog;
  int N = 10;
void setup(){
  size(768, 280);
  
  Im = loadImage("lena.png");
  Im.resize(256, 256);
  Im.filter(GRAY);
  
  image(Im, 0, 0);
}

void draw(){
  
  ImUniforme = uniQuant(Im, N);
  image(ImUniforme, Im.width, 0);
  
  ImLog = logQuant(Im, N);
  image(ImLog, Im.width*2, 0);
  
  fill(0);
  textSize(20);
  text("Originale",Im.width/2,Im.height+15);
  text("Uniforme",Im.width/2*3,ImUniforme.height+15);
  text("Logaritmica",Im.width/2*5,ImLog.height+15);
  
  fill(0, 200, 0);
  text("N = " + N, width/2, 15);
}

void keyPressed(){
  if(key == '+' && N < 256){
    N++;
  }
  
  if(key == '-' && N > 2){
    N--;
  }
}
