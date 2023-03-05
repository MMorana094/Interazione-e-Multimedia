int K = 4;
ArrayList<Bullet> bullets;
Warp[] warps = new Warp[K];
void setup(){
  size(600, 600);
  frameRate(60);
  for(int i=0; i<K; i++){
        warps[i] = new Warp();
      }
  bullets = new ArrayList<Bullet>();
}

void draw(){
  background(255);
  for(int i=0; i<K; i++){
        warps[i].run();
      }
    for(Bullet b:bullets){
      b.run();
    }
}
//alla pressione di un qualsiasi tasto del mouse, se il mouse è dentro al warp verrà sparato un colpo
void mousePressed(){
 for(int i=0; i<K; i++){
   if(warps[i].checkDist()){
     bullets.add(warps[i].shot());
   }
 }
}
