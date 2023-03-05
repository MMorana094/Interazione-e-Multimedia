color imMean(PImage I){
  color R;
  
  float r=0 ,g=0, b=0;
  I.loadPixels();
  
  for(int i=0; i<I.pixels.length; i++){
    r+= red(I.pixels[i]);
    g+= green(I.pixels[i]);
    b+= blue(I.pixels[i]);
  }
  
  r/=I.pixels.length;
  b/=I.pixels.length;
  g/=I.pixels.length;
  
  R = color(r,g,b);
  return R;
}

color regionMean(PImage I, int x, int y, int n){
    if(x-n/2 < 0)
      x=n/2;
    
    if(y-n/2 < 0)
      y=n/2;
      
    if(x+n/2 > I.width)
      x=I.width-n/2;
      
    if(y+n/2 > I.height)
      y=I.height-n/2;
  
  PImage region = I.get(x-n/2,y-n/2, n, n);
  
  return imMean(region);
}
