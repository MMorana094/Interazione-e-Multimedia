PImage lemonFilter(PImage I){
  PImage R = I.copy();
  R.loadPixels();
  float r, g, b;
  for(int i=0; i<R.pixels.length; i++){
    r = red(R.pixels[i]);
    g = red(R.pixels[i]);
    b = red(R.pixels[i]);
    
    R.pixels[i] = color(r-(b/8), g+b, 0);
  }
  
  R.updatePixels();
  return R;
}
