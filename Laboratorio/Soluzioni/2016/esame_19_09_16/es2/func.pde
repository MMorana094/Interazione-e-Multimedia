PImage channel(PImage I, char c){
  PImage R = I.copy();
  
  R.loadPixels();
  float r,g,b;

  for(int i=0; i<R.pixels.length; i++){
    r=red(R.pixels[i]);
    g=green(R.pixels[i]);
    b=blue(R.pixels[i]);
    switch(c){
      case 'r':
        R.pixels[i] = color(r,r,r);
        break;
      case 'g':
        R.pixels[i] = color(g,g,g);
        break;
      case 'b':
        R.pixels[i] = color(b,b,b);
        break;
    }
  }
  
  R.updatePixels();
  
  return R;
}


PImage changeColor(PImage I, char c, int n){
  PImage R = I.copy();
  
  R.loadPixels();
  float r,g,b;

  for(int i=0; i<R.pixels.length; i++){
    r=red(R.pixels[i]);
    g=green(R.pixels[i]);
    b=blue(R.pixels[i]);
    switch(c){
      case 'r':
        R.pixels[i] = color(r+n,g,b);
        break;
      case 'g':
        R.pixels[i] = color(r,g+n,b);
        break;
      case 'b':
        R.pixels[i] = color(r,g,b+n);
        break;
    }
  }
  
  R.updatePixels();

  return R;
}
