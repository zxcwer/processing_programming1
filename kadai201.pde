float x,y;
float dx = 2.0, dy = 2.0;

void setup(){
  size(600,500);
  stroke(128,128,255);
  fill(255,255);
  background(128,128,128);
  x = random(20,width-20);
  y = random(20,height-20);
}

void draw(){
  //background(128,128,128);
  x = x + dx;
  y = y + dy;
  
  if((x<10)||(x>(width-10))){
    dx = -dx;
    stroke(random(256),random(256),random(256));
  }
  
  if((y<10)||(y>(height-10))){
    dy = -dy;
    stroke(random(256),random(256),random(256));
  }
  
  ellipse(x,y,20,20);
}

void strokeChange(){
  stroke(random(256),random(256),random(256));
}
