int frogX=200;
int frogY=550;
int carX;
int carY;
boolean outside;
Cars two=new Cars(100, 50, 200, 100);
Cars one=new Cars(100, 50, 200, 460);
Cars three=new Cars(100, 50, 300, 300);
void draw() {
  background(65, 144, 183);
  fill(65, 183, 85);
  ellipse(frogX, frogY, 50, 50);
  one.display();
  two.display();
  three.display();
}
void setup() {
  size(800, 600);
}
void keyPressed()
{

  if (key == CODED) 
  {
  }
  if (keyCode == UP )
  {
    int tempy=frogY;
    tempy=tempy-30;
    if (outsideY(tempy)) { 
      frogY=frogY-30;
    }
  }    //Frog Y position goes up
  else if (keyCode == DOWN)
  {
    int tempy=frogY;
    tempy=tempy+30;
    if (outsideY(tempy)) {
      frogY=frogY+30;
    }
    //Frog Y position goes down
  } else if (keyCode == RIGHT)
  {
    int tempx=frogX;
    tempx=tempx+30;
    if (outsideX(tempx)) {
      frogX=frogX+30;
    }
    //Frog X position goes right
  } else if (keyCode == LEFT)
  {
    int tempx=frogX;
    tempx=tempx-30;
    if (outsideX(tempx)) {

      frogX=frogX-30;
    }
    //Frog X position goes left
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
boolean outsideX(int xx) {
  System.out.println(xx);
  if (xx>=0 && xx<=800) {
    return true;
  } else {
    return false;
  }
}
public class Cars {
  int carSize;
  int carSpeed;
  int carX;
  int carY;


  public Cars(int carSize, int carSpeed, int carX, int carY) {
    this.carSize=carSize;
    this.carSpeed=carSpeed;
    this.carX=carX;
    this.carY=carY;
  }
  void display() 
  {
    fill(0, 255, 0);
    rect(carX, carY, 100, 50);
  }
  
  
  
  
}
