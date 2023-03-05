PImage hash(PImage I, int h, int k){
  PImage R = I.copy();
  R.loadPixels();
  
  R.pixels[h*R.width+h] = color(0);
  R.pixels[h*R.width+k] = color(0);
  
  R.updatePixels();
  R.filter(GRAY);
  
  return R;
}

PImage hash(PImage I, int h, int k, int n){
  PImage R = I.copy();
  R.loadPixels();
  
  PImage window = R.get(h, k, n, k);
  window.loadPixels();
  float max = red(R.pixels[0]);
  for(int i=1; i<window.pixels.length; i++){
    if(red(window.pixels[i]) > max ){
      max = red(R.pixels[i]);
    }
  }
  
  R.set(h+n/2, k+n/2, int(max));
  R.pixels[h*R.width+h] = color(0);
  R.pixels[h*R.width+k] = color(0);
  
  R.updatePixels();
  R.filter(GRAY);
  
  return R;
}
