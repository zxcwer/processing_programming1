void setup(){
  size(600,500);
  background(255,255,255);
}

void draw(){
  if(mousePressed==true){
    stroke(random(256),random(256),random(256));
    for(int i = 3; i > 0; i--){
      ellipse(mouseX, mouseY, i*8, i*8);
      ellipse(mouseX+16, mouseY, i*8, i*8);
      ellipse(mouseX-16, mouseY, i*8, i*8);
      ellipse(mouseX, mouseY+16, i*8, i*8);
      ellipse(mouseX, mouseY-16, i*8, i*8);
    }
    
  }
}

void keyPressed(){
  if(key=='c'){
    background(255,255,255);
   }
}
