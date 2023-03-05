PImage jonnyFilter(PImage I, int N){
  PImage R = I.copy();
  PImage window;
  
  
  for(int x=N/2; x<R.width-N/2; x++){
    for(int y=N/2; y<R.height-N/2; y++){
      window = R.get(x-N/2, y-N/2,N,N);
      window.loadPixels();
      float max = red(window.pixels[0]);
      float min = red(window.pixels[0]);
      
      for(int i=1; i<window.pixels.length; i++){
        if(red(window.pixels[i]) > max)
          max = red(window.pixels[i]);
          
        if(red(window.pixels[i]) < min)
          min = red(window.pixels[i]);
      }
      float diff = max-min;
      
      R.set(x-N/2, y-N/2, color(diff));

      R.updatePixels();
    }
  }
  return R;
}
