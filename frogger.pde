int frogX=200;
int frogY=550;
int carY;
boolean outside;
int carX1=70;
int carX2=400;
int carX3=250;
int carS1=25;
int carS2=5;
int carS3=10;
Cars two=new Cars(200, carS1, 200, carX1);
Cars one=new Cars(200, carS2, 200, carX2);
Cars three=new Cars(200, carS3, 300, carX3);

void draw() {
  background(65, 144, 183);
  fill(65, 183, 85);
  ellipse(frogX, frogY, 50, 50);
  one.display();
  one.moveCarL();
  intersects(one);
  two.display();
  two.moveCarR();
  intersects(two);
  three.display();
  three.moveCarL();
  intersects(three);

  if (intersects(one)==true) {
    frogX=200;
    frogY=550;
  }

 if (intersects(two)==true){
    frogX=200;
    frogY=550;
}
 if (intersects(three)==true){
    frogX=200;
    frogY=550;
    
 }
}
  void setup() {
    size(800, 600);
  }
  void keyPressed() {

    if (key == CODED)    {
    }
    if (keyCode == UP ){
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

    void moveCarL() {
      carX-=carSpeed;
      if (carX<0) {

        carX=600;
      }
    }
    void moveCarR() {
      carX+=carSpeed;
      if (carX>600) {  
        carX=0;
      }
    }


    void display() {

      fill(0, 255, 0);
      rect(carX, carY, 100, 50);
    }
    public int getX() {
      return carX;
    }
    public int getY() {
      return carY;
    }
    public int getSize() {
      return carSize;
    }
    
    
  }
boolean intersects(Cars car) {
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize())){
        return true;
      } else{
        return false;
      }
    }
