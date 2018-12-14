class Star //note that this class does NOT extend Floater
{
  int myX2, myY2;
  int r;
  public Star() {
    myX2 = (int) (Math.random() * 630);
    myY2 = (int) (Math.random() * 630);
    r = (int) (Math.random() * 200);
   
  }

public void show() {
  stroke(r);
  ellipse(myX2, myY2, 1, 1);
}
}
