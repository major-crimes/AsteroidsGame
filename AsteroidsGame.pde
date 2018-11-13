Spaceship bigboi;//your variable declarations here
Star[] nightSky = new Star [200];
public void setup()
{
  size(630, 630);
  bigboi = new Spaceship();
  for (int i = 0; i < nightSky.length; i++)
  { 
    nightSky [i] = new Star();
  } 
}
public void draw() 
{
   background(0);
  //Spaceship bigboi = new Spaceship();
  bigboi.show();
  bigboi.move();
  for (int i =0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
public void keyPressed() {
  if (key == 'h') {
    bigboi.setX((int)(Math.random())*630);
    bigboi.setY((int)(Math.random())*630);
  }
  if (key == 's') {
    bigboi.accelerate(.3);
  }
  if (key == 'w') {
    bigboi.accelerate(-.3);
  }
  //if (key == 'd') { bigboi.turn(25);}
}
