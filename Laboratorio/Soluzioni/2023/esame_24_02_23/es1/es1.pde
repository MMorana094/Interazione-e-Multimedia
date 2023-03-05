//per mandare l'esame cambiamo l'estensione del file da .zip a .avi
ArrayList<Voto> v1;
ArrayList<Votone> v2;
void setup(){
size(500, 500);
v1 = new ArrayList<Voto>();
v2 = new ArrayList<Votone>();
}

void draw(){
 background(0);
 for(Voto v:v1){
   v.run();
 }
 for(Votone v:v2){
   v.run();
 }
}

void keyPressed(){
  if(key == 'r'){
    setup();
  }
}

void mousePressed(){
  if(mouseButton == LEFT){
    v1.add(new Voto());
  }
  if(mouseButton == RIGHT){
    v2.add(new Votone());
  }
}
