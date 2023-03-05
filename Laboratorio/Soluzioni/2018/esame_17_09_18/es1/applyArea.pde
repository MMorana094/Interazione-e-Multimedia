PImage applyArea(PImage I, int x, int y, int d, boolean f){
  PImage R = I.copy();
  PImage tmp = R.get(x-d/2,y-d/2,d,d);
  
  if(f){
    tmp = orangeFilter(tmp);
  }
  else{
    tmp = lemonFilter(tmp);
  }
  
  R.set(x-d/2,y-d/2,tmp);
  return R;
}
