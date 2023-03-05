PImage uniQuant(PImage I, int k){
  PImage R = I.copy();
  R.filter(GRAY);
  R.loadPixels();
  float v2;
  for(int i=0; i<R.pixels.length; i++){
    float v1 = red(R.pixels[i]);
    v2 = floor((v1*k)/256);
    
    v2 = floor((v2/float(k-1))*255);
    R.pixels[i] = color(v2);
  }
  R.updatePixels();
  return R;
}

PImage logQuant(PImage I, int k){
  PImage R = I.copy();
  R.filter(GRAY);
  R.loadPixels();
  float v2;
  for(int i=0; i<R.pixels.length; i++){
    float v1 = int(red(R.pixels[i]));
    v2 = floor((log(v1)*k)/log(256));
    
    v2 = floor((v2/float(k-1))*255);
    R.pixels[i] = color(v2);
  }
  R.updatePixels();
  return R;
}
