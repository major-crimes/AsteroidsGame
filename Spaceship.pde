class Spaceship extends Floater  
{    
  int corners;  //the number of corners, a triangular floater has 3   
  int[] xCorners;   
  int[] yCorners;   
  int myColor;   
  double myCenterX, myCenterY; //holds center coordinates   
  double myDirectionX, myDirectionY; //holds x and y coordinates of the vector for direction of travel   
  double myPointDirection; //holds current direction the ship is pointing in degrees    
  public Spaceship() {
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
