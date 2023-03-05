PImage wow(PImage I){
  PImage R = I.copy();
  PImage terzodx = I.get(2*I.width/3,0,I.width/3, I.height);    //prendo i pixel del terzo destro dell'immagine
  PImage terzosx = I.get(0,0,I.width/3, I.height);              //prendo i pixel del terzo sinistro dell'immagine
  //carico i pixel delle parti create
  terzodx.loadPixels();
  terzosx.loadPixels();      
  float f = (random(0, 2));  //valore random dato dal testo
  float r, g, b;
  //cambio i valori di rosso dei pixel a sinistra
  for(int i=0; i<terzosx.pixels.length; i++){
    r = red(terzosx.pixels[i]);
    g = green(terzosx.pixels[i]);
    b = blue(terzosx.pixels[i]);
    
    terzosx.pixels[i] = color(r/f, g, b);
  }
  //cambio i valori di rosso dei pixel a destra
  for(int i=0; i<terzodx.pixels.length; i++){
    r = red(terzodx.pixels[i]);
    g = green(terzodx.pixels[i]);
    b = blue(terzodx.pixels[i]);
    
    terzodx.pixels[i] = color(r*f, g, b);
  }
  //aggiorno i pixel di output
  terzosx.updatePixels();
  terzodx.updatePixels();
  //li metto nella posizione finale
  R.set(0,0,terzodx);
  R.set(2*I.width/3,0,terzosx);
  return R;
}
