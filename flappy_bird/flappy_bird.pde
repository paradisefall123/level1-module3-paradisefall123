int x=0;
int y;
int birdYVelocity=5;
int gravity=6;
int pipeX=300;
int w=100;
float upperPipeHeight=300;
boolean earnedpoint=false;
int lowerPipeTop=300;
int upperY=0;
int lowerY=600;
int score;
int h=50;
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
  text("Your Score Is "+score, 20, 60);

  fill(92, 180, 66);
  rect(pipeX, upperY, w, upperPipeHeight);
  pipeX--;
  teleportPipes();
  fill(92, 180, 66);
  rect(pipeX, 600, w, lowerPipeTop);
  pipeX--;
  teleportPipes();
  fill(46, 240, 60);
  rect(0, 860, 900, h);


  if ( intersectsPipes() || checkBottom()) {
    textSize(32);
    text("Game Ended", 10, 30);
    stop();
  }
  if (x>pipeX && earnedpoint==false) {
    score++;
    earnedpoint=true;
  }
} 
void setup() {
  size(600, 900);
  x=101;
  y=179;
} 

void teleportPipes() {
  if (pipeX<0) {
    earnedpoint=false;
    pipeX=600;
    upperPipeHeight= random(300, 500);
  }
}
boolean intersectsPipes() { 
  if ( (y < upperPipeHeight && x > pipeX && x < (pipeX+w) )) {

    return true;
  } else if (y >= 600 && x > pipeX && x < (pipeX+w)) {

    return true;
  } else { 
    return false;
  }
}
boolean checkBottom() {
  System.out.println("Y equals "+y+" the h is "+h );
  if (y>=h && y>(900-h)) {
    return true;
  } else {

    return false;
  }
}
