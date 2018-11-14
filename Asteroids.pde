class Asteroids {
  int r, g, b;
  int r1, g1, b1;
  int myCenterX, myCenterY;
  int size;
  public Asteroids() {
    r = (int) (Math.random() * 255);
    g = (int) (Math.random() * 51);
    b = (int) (Math.random() * 255);
    r1 = (int) (Math.random() * 255);
    g1 = (int) (Math.random() * 51);
    b1 = (int) (Math.random() * 153);
    myCenterX = (int)(Math.random() *630);
    myCenterY = (int)(Math.random() *630);
    size = 20;
  }
  public void show() {


    if ( 204 < r && 204 < b && 0 < g) {
      noFill();
      stroke(r, g, b);
      ellipse(myCenterX, myCenterY, size, size);
    } 
    
    else if ( 204 < r1 && 102<b1 && 0<g) {
      noFill();
      stroke(r1, g1, b1);
      ellipse(myCenterX, myCenterY, size, size);
    }
  }
}
