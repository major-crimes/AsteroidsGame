public Spaceship bigboi;//your variable declarations here
Star[] nightSky = new Star [200];
public void setup()
{
  size(630, 630);
  for (int i = 0; i < nightSky.length; i++)
  { 
    nightSky [i] = new Star();
    
  }
 
}
public void draw() 
{
   background(0);
  Spaceship bigboi = new Spaceship();
  bigboi.show();
  bigboi.move();
  for (int i =0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
}
public void keyPressed() {
  if (key == 'h') {
    bigboi.setDirectionX(0);
    bigboi.setDirectionY(0);
  }
  if (key == 'w') {
    bigboi.setX(250);
  }
}
