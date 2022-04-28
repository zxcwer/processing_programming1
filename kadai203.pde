float x,y;
float dx = 2.0, dy = 2.0; //the velocity of the ball
float BallRadius = 10;  //ball's radius
int WIDTH = 600, HEIGHT = 500; //Width and Height of the screen
float Rx=WIDTH/2,Ry=HEIGHT/2; //Racket's X and Y axis
float paddleX = 101, paddleY = 21; //Racket's length

void setup(){
  size(600,500);
  stroke(128,128,255);
  fill(255,255);
  background(128,128,128);
  x = random(20,width-20);
  y = random(20,height-20);
  rectMode(CENTER);
}

void draw(){
  background(128,128,128);
  x = x + dx;
  y = y + dy;
  
  if((x<10)||(x>(width-10))||isCollisionRect()&& isCollisionRectX()){
    dx = -dx;
  }
  if((y<10)||(y>(height-10))||isCollisionRect()&& isCollisionRectY()){
    dy = -dy;
  }

  ellipse(x,y,BallRadius*2,BallRadius*2);
  rect(Rx,Ry,paddleX,paddleY);
}

//check Racket position collision with the ball 
boolean isCollisionRect(){
  if((x+BallRadius>Rx-paddleX/2)&&(x-BallRadius<Rx+paddleX/2)&&(y+BallRadius>Ry-paddleY/2)&&(y-BallRadius<Ry+paddleY/2)){
    return true;
  }
  return false;
}
//check Racket's X-axis collision 
boolean isCollisionRectX(){
  if ((x+BallRadius>Rx-paddleX/2)&&(x<Rx-paddleX/2)||(x>Rx+paddleX/2)&&(x-BallRadius<Rx+paddleX/2)){
    return true;
  }
  return false;
}
//check Racket's Y-axis 
boolean isCollisionRectY(){
  if ((y+BallRadius>Ry-paddleY/2)&&(y<Ry-paddleY/2)||(y>Ry+paddleY/2)&&(y-BallRadius<Ry+paddleY/2)){
    return true;
  }
  return false;
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == RIGHT){
      Rx += 30;
    }else if(keyCode == LEFT){
      Rx -= 30;
    }
  }
}
