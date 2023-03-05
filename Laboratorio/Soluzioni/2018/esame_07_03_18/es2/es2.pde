ArrayList<Spear> spear1;
Baloon baloon1;

double energy = 0;

void setup(){
  size(512, 512);
  frameRate(60);
  
  spear1 = new ArrayList<Spear>();
  baloon1 = new Baloon(width/2, height);
}

void draw(){
  
 background(0, 255, 255);
 fill(255);
 rect(0,height-((height*5)/5),width,height-((height*5)/5));
 for(Spear s:spear1){
 s.run();
   //se il pallone viene colpito si ferma il gioco
  if(baloon1.hit(s)){
   noLoop();
 }
}
//si crea una lancia con una probabilità del 10%
if((random(0,100)) < 10){
  spear1.add(new Spear(int(random(width)), -60 , int(random(3,8))));
}
 baloon1.run(energy);
 
}
//se premi uno dei testi aumenti/diminuisci l'energia e quindi la velocità di spostamento, se premi R resetti il gioco

void keyPressed(){
  if(key=='R' || key == 'r')
    setup();
    
  if((key=='A' ||key=='a' )&& energy>-3)  
    energy-=0.2;

  if((key=='D' || key=='d') && energy<3)  
    energy+=0.2;
    
  if(energy > 0)
    energy-=0.05;  
    
  if(energy < 0)
    energy+=0.05;
}
