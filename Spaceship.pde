class Spaceship extends Floater  
{ 
  public Spaceship() {
    corners = 3;
  xCorners = new int [corners];
  yCorners = new int[corners];
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  //myColor = 102,255,255;
  //myCenterX = Math.random()* 600;
  //myCenterY = Math.random()* 600;
   myCenterX = height/2;
  myCenterY = width/2;
  myDirectionX = 0;
  myDirectionY = 0;
  myPointDirection = -90;
  
  }
  public void setX(int x) {
    myCenterX = x;
  }
  public int getX() {
    return (int)myCenterX;
  }
  public void setY(int y) {
    myCenterY = y;
  }
  public int getY() {
    return (int)myCenterY;
  }
  public void setDirectionX(double x) {
    myDirectionX = x;
  }
  public double getDirectionX() {
    return myDirectionX;
  }
  public void setDirectionY(double y) {
    myDirectionY = y;
  }
  public double getDirectionY() {
    return myDirectionY;
  }
  public void setPointDirection(int degrees) {
    myPointDirection = degrees;
  }
  public double getPointDirection() {
    return myPointDirection;
  }
 



}
