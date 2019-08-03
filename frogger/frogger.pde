int x=200;
int y=550;
void draw(){
  background(65,144,183);
  fill(65,183,85);
  ellipse(x,y,50,50);
  
  
}
void setup(){
  size(800,600);
  
  
  
  
  
}
void keyPressed()
{
      if(key == CODED){
            if(keyCode == UP)
            {
              y=y-5;
                  //Frog Y position goes up
            }
            else if(keyCode == DOWN)
            {
              y=y+5;
                  //Frog Y position goes down 
            }
            else if(keyCode == RIGHT)
            {
              x=x+5;
                  //Frog X position goes right
            }
            else if(keyCode == LEFT)
            {
              x=x-5;
                  //Frog X position goes left
            }
      }
}
void outsideC(){
  if(y>0 && y>600 || x<0 && x){
   y=550;
   x=200;
    
    
  }
  
  
  
  
  
  
}
