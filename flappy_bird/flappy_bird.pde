int x;
int y;
int birdYVelocity=5;
int gravity=6;
int pipeX=300;
int pipe2X=300;
float upperPipeHeight;
int lowerY=600;
int upperY=0;
int pipeGap=100;
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
  rect(pipeX,upperY, 100, upperPipeHeight);
  pipeX--;
  teleportPipes();
  fill(92, 180, 66);
  rect(pipe2X, lowerY, 100, 300);
  pipe2X--;
  teleportPipes();
  lowerY = upperY + upperPipeHeight + pipeGap;
} 
void setup() {
  size(600, 900);
  x=101;
  y=179;
} 
void mousePressed() {
}

void teleportPipes() {
  if (pipeX<0) {
    pipeX=300;
    upperPipeHeight= random(200, 500);
  }else if(pipe2X<0){
   pipe2X=300; 
  }
}
