int x;
int y;
int birdYVelocity=5;
int gravity=6;
void draw(){
  background(101,179,188);
  fill(11, 183, 49);
  stroke(242, 187, 83);
    y++;
    y-=birdYVelocity;
    y+=gravity;
  ellipse( x,y,50,50);

  
  
  
  
} void setup(){
  size(600,900);
   x=101;
   y=179;
  
  
  
  
  
  
} void mousePressed(){
    y-=birdYVelocity;
  
  
  }
  
  
  
  
  
  
  
  
