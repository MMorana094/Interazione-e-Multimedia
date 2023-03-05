PImage swap(PImage I, int x1, int y1, int x2, int y2, int s){
  PImage R = I.copy();

  PImage tmp1 = I.get(x1-s/2, y1-s/2,s,s);
  PImage tmp2 = I.get(x2-s/2, y2-s/2,s,s);
  
  R.set(x2-s/2, y2-s/2, tmp1);
  R.set(x1-s/2, y1-s/2, tmp2);

  return R;
}
