PImage rgb2cmy(PImage I){
    PImage R = I.copy();
    R.loadPixels();
    
    float r,g,b,c,m,y;
    for(int i=0; i<R.pixels.length; i++){
      r = red(R.pixels[i]);
      g = green(R.pixels[i]);
      b = blue(R.pixels[i]);
      
      c = 255-r;
      m = 255-g;
      y = 255-b;
      
      R.pixels[i] = color(c,m,y);
    }
    
    R.updatePixels();
    return R;
}

PImage cmy2rgb(PImage I){
    PImage R = I.copy();
    R.loadPixels();
    
    float r,g,b,c,m,y;
    for(int i=0; i<R.pixels.length; i++){
      c = red(R.pixels[i]);
      m = green(R.pixels[i]);
      y = blue(R.pixels[i]);
      
      r = 255-c;
      g = 255-m;
      b = 255-y;
      
      R.pixels[i] = color(r,g,b);
    }
    
    R.updatePixels();
    return R;
}

void imageCMY(PImage I, int x, int y){
  I = cmy2rgb(I);
  image(I,x,y);
}
