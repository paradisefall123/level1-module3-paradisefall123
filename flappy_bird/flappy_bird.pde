int x;
int y;
int birdYVelocity=5;
int gravity=6;
int pipeX=300;
int w=100;
float upperPipeHeight=300;
boolean ge=true;
int lowerPipeTop=300;
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
  rect(pipeX, 0, w, upperPipeHeight);
  pipeX--;
  teleportPipes();
  fill(92, 180, 66);
  rect(pipeX, 600, w, lowerPipeTop);
  pipeX--;
  teleportPipes();
  fill(46, 240, 60);
  rect(0, 860, 900, 50);
  if ( intersectsPipes()) {
    textSize(32);
    text("Game Ended", 10, 30);
    //stop();
  }
  System.out.println(intersectsPipes());
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
  if (y < upperPipeHeight && x > pipeX && x < (pipeX+w)) {
      System.out.println("milk");
    return true;
  } else if (y>lowerPipeTop && x > pipeX && x < (pipeX+w)) {
   System.out.println("cookies");
    return true;
  } else { 
    return false;
  }
}
