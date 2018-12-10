
class Asteroids 
{
  private int r, g, b;
  private int r1, g1, b1;
  private int myCenterX, myCenterY;
  int size;
  private int myDirectionX, myDirectionY;
  public Asteroids() {
    r = (int) (Math.random() * 255);
    g = (int) (Math.random() * 51);
    b = (int) (Math.random() * 255);
    r1 = (int) (Math.random() * 255);
    g1 = (int) (Math.random() * 51);
    b1 = (int) (Math.random() * 153);
    myCenterX = (int)(Math.random() *630)+100;
    myCenterY = (int)(Math.random() *630)+100;
    size = 20;
    myDirectionX = (int)(Math.random() * 4) -2;
    myDirectionY = (int)(Math.random() * 4) -2;
  }
  public void show() {
    frameRate(20);

    if (myDirectionX != 0 && myDirectionY != 0) {
      if ( 204 < r && 204 < b && 0 < g) {
        noFill();
        stroke(r, g, b);
        ellipse(myCenterX, myCenterY, size, size);
      } else if ( 204 < r1 && 102<b1 && 0<g) {
        noFill();
        stroke(r1, g1, b1);
        ellipse(myCenterX, myCenterY, size, size);
      }
    }
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

  public void move () 
  {      

    myCenterX += myDirectionX;    
    myCenterY += myDirectionY;     

    if ( myDirectionX != 0 && myDirectionY !=0) {
      if (myCenterX >width)
      {     
        myCenterX = 0;
        myDirectionX = (int)(Math.random() * 4) -2;
        myDirectionY = (int)(Math.random() * 4) -2;
      } else if (myCenterX<0)
      {     
        myCenterX = width;
        myDirectionX = (int)(Math.random() * 4) -2;
        myDirectionY = (int)(Math.random() * 4) -2;
      }    
      if (myCenterY >height)
      {    
        myCenterY = 0;
        myDirectionX = (int)(Math.random() * 4) -2;
        myDirectionY = (int)(Math.random() * 4) -2;
      } else if (myCenterY < 0)
      {     
        myCenterY = height;
        myDirectionX = (int)(Math.random() * 4) -2;
        myDirectionY = (int)(Math.random() * 4) -2;
      }
    } else {
      myDirectionX = (int)(Math.random() * 4) -2;
      myDirectionY = (int)(Math.random() * 4) -2;
    }
  }
}
