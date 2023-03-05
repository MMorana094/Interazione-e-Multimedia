PImage logOp(PImage I){
  int w = I.width;
  int h = I.height;
  
  PImage R = createImage(w, h, ALPHA);
  
  I.loadPixels();
  R.loadPixels();
  
  // calcola l'operatore logaritmo per ogni pixel dell'immagine
  for (int i = 0; i < w * h; i++) {
    int c = I.pixels[i];
    int r = (int) (log(1 + red(c)) * 255 / log(256));
    int g = (int) (log(1 + green(c)) * 255 / log(256));
    int b = (int) (log(1 + blue(c)) * 255 / log(256));
    R.pixels[i] = color(r, g, b);
  }
  
  R.updatePixels();
  
  return R;
}

PImage logOp(PImage I, int h, int k) {
  int w = I.width;
  int height = I.height;
  
  PImage output = createImage(w, height, ALPHA);
  
  I.loadPixels();
  output.loadPixels();
  
  // centro del rettangolo casuale
  int centerX = int(random(h / 2, w - h / 2));
  int centerY = int(random(k / 2, height - k / 2));
  
  // disegna il rettangolo nero
  for (int y = centerY - k / 2; y < centerY + k / 2; y++) {
    for (int x = centerX - h / 2; x < centerX + h / 2; x++) {
      int index = x + y * w;
      output.pixels[index] = color(0);
    }
  }
  
  // calcola l'operatore logaritmo per ogni pixel dell'immagine
  for (int y = 0; y < height; y++) {
    for (int x = 0; x < w; x++) {
      if ((x >= centerX - h / 2 && x < centerX + h / 2) &&
          (y >= centerY - k / 2 && y < centerY + k / 2)) {
        // pixel all'interno del rettangolo nero
        continue;
      }
      
      int index = x + y * w;
      int c = I.pixels[index];
      int r = (int) (log(1 + red(c)) * 255 / log(256));
      int g = (int) (log(1 + green(c)) * 255 / log(256));
      int b = (int) (log(1 + blue(c)) * 255 / log(256));
      output.pixels[index] = color(r, g, b);
    }
  }
  
  output.updatePixels();
  
  return output;
}


void setup(){
  size(768, 256);
  PImage Im = loadImage("lena.png");
  Im.resize(256, 256);
  Im.filter(GRAY);
  image(Im, 0, 0);
  
  image(logOp(Im), Im.width, 0);
  
  image(logOp(Im, int(random(10, 70)), int(random(10, 70))), Im.width*2, 0);
}

void keyPressed(){
  if(key == 'r' || key == 'R'){
    setup();
  }
}
