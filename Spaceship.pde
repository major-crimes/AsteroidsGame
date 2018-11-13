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
  myColor = 255;
  //myCenterX = Math.random()* 600;
  //myCenterY = Math.random()* 600;
   myCenterX = 200;
  myCenterY = 200;
  myDirectionX = 2;
  myDirectionY = 3;
  myPointDirection = -50;
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
  public void move ()
{ 
  myCenterX += myDirectionX;
  myCenterY += myDirectionY;
  if(myCenterX >width){
    myCenterX = 0;
  }
  else if (myCenterX<0){
    myCenterX = width;
  }
  if(myCenterY >height){
    myCenterY = 0;
  }
  else if (myCenterY < 0){
    myCenterY = height;
  }
}
public void accelerate (double dAmount)
{  
     double dRadians =myPointDirection*(Math.PI/180);
     
    
     myDirectionX += ((dAmount) * Math.cos(dRadians));
     myDirectionY+= ((dAmount) * Math.sin(dRadians));    
}
void turn(int nDegreesOfRotation)
{
   myPointDirection+=nDegreesOfRotation;
}



}
