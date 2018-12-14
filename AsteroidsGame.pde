Spaceship bigboi = new Spaceship();
ArrayList <bullet> theboi = new ArrayList <bullet>();
Star[] nightSky = new Star [1800];
ArrayList <Asteroids> badboys = new ArrayList <Asteroids>();
public void setup()
{
  size(630, 630);
  for (int i = 0; i < nightSky.length; i++)
  { 
    nightSky [i] = new Star();
  } 
  for (int i = 0; i < 200; i++)
  { 
    badboys.add (new Asteroids());
  } 

  
}
public void draw() 
{
   background(0);
   for (int i =0; i < nightSky.length; i++)
  {
    nightSky[i].show();
  }
   for (int i =0; i < badboys.size(); i++)
  {
    badboys.get(i).show();
    badboys.get(i).move();

    float d = dist(bigboi.getX(),bigboi.getY(),badboys.get(i).getX(),badboys.get(i).getY());
    if (d < 20)
      badboys.remove(i);
    
  
  }
  bigboi.show();
  bigboi.move();
  for (int i=0;i < theboi.size(); i++){
   theboi.get(i).show();
   theboi.get(i).move();
   if(theboi.get(i).getX() == 630 ){
     theboi.remove(i);
   }
   if (theboi.get(i).getY() >= 630){
     theboi.remove(i);
     //set equal to 0
   }
  }
  
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
  if (key == 'b'){
    
   theboi.add (new bullet(bigboi));
   
  }
  
}
