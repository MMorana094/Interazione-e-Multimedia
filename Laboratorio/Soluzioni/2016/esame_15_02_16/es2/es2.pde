PImage Im;
PImage ImCMY;

void settings(){
  Im = loadImage("lena.png");
  Im.resize(Im.width/2,Im.height/2);
  size(Im.width*3,Im.height+30);
}

void setup(){
  image(Im,0,0); //mostro la rgb normale scelta
  
  ImCMY = rgb2cmy(Im); //converto Im da rgb a cmy
  image(ImCMY,Im.width,0); //mostro la versione cmy al centro
  imageCMY(ImCMY,ImCMY.width*2,0); //torno alla versione rgb da ImCMY
  
  //didascalie sotto le immagini
  textAlign(CENTER);
  textSize(20);
  fill(0);
  text("RGB Originale",Im.width/2,Im.height+15);
  text("CMY in RGB",Im.width/2+Im.width,Im.height+15);
  text("CMY Corretta",Im.width/2+Im.width*2,Im.height+15);
}

void draw(){

}
