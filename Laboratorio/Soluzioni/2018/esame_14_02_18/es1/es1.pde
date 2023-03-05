ArrayList<Heart> heart;

void setup(){
  size(512, 512);
  frameRate(60);
  smooth();
  heart = new ArrayList<Heart>();
}

void draw(){
  //creiamo l'effeto scia
  fill(0, 20);
  rect(0, 0, width*2, height*2);
    if(random(0, 100) < 5){
        heart.add(new Heart(random(50, width-50), height+50));
    }
    for(Heart h:heart){
    h.run();
    if(mousePressed && h.state){
      h.swap();
    }
  }
}

void keyPressed(){
  if(key == 'r'){
    setup();
  }
}
