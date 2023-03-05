PImage randomIm(int n1, int n2){
  PImage R = createImage(n1,n2,RGB);
  
  R.loadPixels();

  int max = 'm'+'r'+1;
  for(int i=0; i<R.pixels.length; i++){
    R.pixels[i]= color(int(random(0,max)), int(random(0,max)), int(random(0,max)));
  }
  
  R.updatePixels();
 
  return R;
}


PImage combine(PImage I, PImage Q, float a){
  PImage R = createImage(I.width, I.height, RGB);
  
  R.loadPixels();
  I.loadPixels();
  Q.loadPixels();
  
  float r,g,b;
  
  for(int i=0; i<I.pixels.length; i++){
    r=(a*red(I.pixels[i]) + (1-a)*red(Q.pixels[i]));
    g=(a*green(I.pixels[i]) + (1-a)*green(Q.pixels[i]));
    b=(a*blue(I.pixels[i]) + (1-a)*blue(Q.pixels[i]));
    
    R.pixels[i] = color(r,g,b);
  }
  
  R.updatePixels();
  return R;
}
