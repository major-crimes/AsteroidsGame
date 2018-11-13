class Star //note that this class does NOT extend Floater
{
  int myX2, myY2;
  public Star() {
    myX2 = (int) (Math.random() * 630);
    myY2 = (int) (Math.random() * 630);
  }

public void show() {
  fill(255);
  ellipse(myX2, myY2, 3, 3);
}
}
