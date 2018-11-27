Spaceship bigboi;//your variable declarations here
Star[] nightSky = new Star [1800];
Asteroids [] badboys = new Asteroids[300];
public void setup()
{
  size(630, 630);
  bigboi = new Spaceship();
  for (int i = 0; i < nightSky.length; i++)
  { 
    nightSky [i] = new Star();
  } 
  for (int i = 0; i < badboys.length; i++)
  { 
    badboys [i] = new Asteroids();
  } 
}
public void draw() 
{
   background(0);
   for (int i =0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
   for (int i =0; i < badboys.length; i++)
  {
    badboys[i].show();
    badboys[i].move();
  }
  bigboi.show();
  bigboi.move();
  
}
public void keyPressed() {
  if (key == 'h') {
    bigboi.setX((int)(Math.random()*670));
    bigboi.setY((int)(Math.random()*670));
    bigboi.accelerate(0);
    }
  if (key == 's') {bigboi.accelerate(-.3);}
  if (key == 'w') {bigboi.accelerate(.3);}
  if (key == 'd') { bigboi.turn(20);}
  if (key == 'a') { bigboi.turn(-20);}
  if (key == ' ') {
    bigboi.setX(height/2);
    bigboi.setY(width/2);
    bigboi.setDirectionX(0);
    bigboi.setDirectionY(0);
    bigboi.setPointDirection(-90);
    
  }
}
