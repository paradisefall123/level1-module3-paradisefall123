int x;
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
 // lowerY=upperY+upperPipeHeight+pipeGap;
  if ( intersectsPipes()) {
    textSize(32);
    text("Game Ended", 10, 30);
    // stop();
  } //}else if (x> ){
    
  //}
} 
void setup() {
  size(600, 900);
  x=101;
  y=179;
} 

void teleportPipes() {
  if (pipeX<0) {
    pipeX=300;
    upperPipeHeight= random(300, 500);
  }
}
boolean intersectsPipes() { 
  if ( y < upperPipeHeight && x > pipeX && x < (pipeX+w)) {
    System.out.println("hit upperpipe");
    return true;
  } else if (y >= lowerPipeTop && x > pipeX && x < (pipeX+w)) {
    System.out.println("hit lower pipe value y " + y + " upperPH " + upperPipeHeight);
    return true;
  } else { 
    return false;
  }
}
make two if statements to check if the bird touches the pipe
