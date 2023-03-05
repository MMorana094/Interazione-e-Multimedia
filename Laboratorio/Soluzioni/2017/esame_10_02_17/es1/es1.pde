Volcano v1, v2, v3;
ArrayList<FireBall> ball;
boolean state = false;

void setup(){
  size(640, 480);
  
  v1 = new Volcano(random(0, width-150), height-55);
  v2 = new Volcano(random(0, width-150), height-55);
  v3 = new Volcano(random(0, width-150), height-55);
  ball = new ArrayList<FireBall>();
}

void draw(){
  background(0);
  
  v1.run();
  v2.run();
  v3.run();
  for(FireBall f:ball){
    f.run();
  }
  //se lo stato del vulcano è attivo sparerà palle di fuoco altrimenti no
  if(state){
    if(random(1) < 0.2){
    ball.add(v1.spara());
    ball.add(v2.spara());
    ball.add(v3.spara());
    }
  }
}
void keyPressed(){
  if(key == 'N'){
    if(state){
      state = false;
     } else {
       state = true;
     }
  } 
}
