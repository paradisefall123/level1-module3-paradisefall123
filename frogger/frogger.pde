int x=200;
int y=550;
boolean outside;
void draw() {
  background(65, 144, 183);
  fill(65, 183, 85);
  ellipse(x, y, 50, 50);
}
void setup() {
  size(800, 600);
}
void keyPressed()
{

  if (key == CODED) 
  {
    if (keyCode == UP )
    {
      int tempy=y;
      tempy=tempy-20;
      if (outsideY(tempy)) { 
        y=y-20;
      }
    }    //Frog Y position goes up
    else if (keyCode == DOWN)
    {
      int tempy=y;
      tempy=tempy+20;
      if (outsideY(tempy)) {
        y=y+20;
      }
      //Frog Y position goes down
    } else if (keyCode == RIGHT)
    {
      int tempx=x;
      tempx=tempx+20;
      if(outsideX(tempx)){
      x=x+20;
      ]
      //Frog X position goes right
    } else if (keyCode == LEFT)
    {
      x=x-10;
      //Frog X position goes left
    }
  }
}

boolean outsideY(int yy) {
  System.out.println(yy);
  if (yy>=0 && yy<=600) {
    return true;
  } else {

    return false;
  }
}
boolean outsideX(int xx){
 System.out.println(xx);
 if(xx>=0 && xx<=800){
  return true;
 }else{
   return false;
  
  
 }  
