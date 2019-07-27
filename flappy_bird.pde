int x=0;
int y;
int birdYVelocity=5;
int gravity=6;
int pipeX=300;
int w=100;
float upperPipeHeight=300;
boolean ge=true;
int lowerPipeTop=300;
int upperY=0;
int lowerY=600;
int score;
void draw() {
  background(101, 179, 188);
  fill(245, 234, 111);
  stroke(242, 187, 83);
  y++;
  y-=birdYVelocity;
  y+=gravity;
  ellipse( x, y, 50, 50);
  if (mousePressed) {
    y-=birdYVelocity;
  }
  textSize(30);
text("Your Score Is "+score,20,60);
System.out.println("value of x is " +x +" and value of pipe x is " +pipeX);



  fill(92, 180, 66);
  rect(pipeX, upperY, w, upperPipeHeight);
  pipeX--;
  teleportPipes();
  fill(92, 180, 66);
  rect(pipeX, 600, w, lowerPipeTop);
  pipeX--;
  teleportPipes();
  fill(46, 240, 60);
  rect(0, 860, 900, 50);
  if(y<50 && x>0 && x< (0+900)){
    textSize(50);
    text("Game Ended",60,30);
    stop();   
  }

  if ( intersectsPipes()) {
    textSize(32);
    text("Game Ended", 10, 30);
    stop();
  }
  
  if(x>=pipeX) {
    score++;
    
    
    
    
  }
  
} 
void setup() {
  size(600, 900);
  x=101;
  y=179;
} 

void teleportPipes() {
  if (pipeX<0) {
    pipeX=600;
    upperPipeHeight= random(300, 500);
     
}
}
boolean intersectsPipes() { 
  if ( y < upperPipeHeight && x > pipeX && x < (pipeX+w)) {

    return true;
  } else if (y >= 600 && x > pipeX && x < (pipeX+w)) {

    return true;
  } else { 
    return false;
  }
}
