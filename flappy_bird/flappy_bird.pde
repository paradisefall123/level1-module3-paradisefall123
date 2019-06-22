int x;
int y;
int birdYVelocity=5;
int gravity=6;
int pipeX=300;
int upperPipeHeight;
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
  System.out.println(pipeX);
 
  fill(92, 180, 66);
  rect(pipeX, 0, 100, upperPipeHeight);
  pipeX--;
  float upperPipeHeight= random(100,400);
  teleportPipes();
  
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
  }
}
