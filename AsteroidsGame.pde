Spaceship ship = new Spaceship();
Star[] stars = new Star[200];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bullets = new ArrayList<Bullet>();
public void setup() 
{
  size(500,500);
  for(int i = 0; i < stars.length; i++){
   stars[i] = new Star(); 
  }
  for(int i = 0; i < 15; i++){
   asteroids.add(i, new Asteroid()); 
  }
}
public void draw() 
{
  background(0);
  ship.show();
  ship.move();
  for(int i = 0; i < stars.length; i++){
   stars[i].show(); 
  }
  for(int i = 0; i < asteroids.size(); i++){
   asteroids.get(i).show();
   asteroids.get(i).move();
   float crashDistance = dist((float)ship.getX(), (float)ship.getY(), (float)asteroids.get(i).getX(), (float)asteroids.get(i).getY());
   if(crashDistance < 12){
    asteroids.remove(i); 
   }
  }
  for(int i = 0; i < bullets.size(); i++){
    bullets.get(i).show();
    bullets.get(i).move();
  }
}

public void keyPressed(){
 if(key == 'h'){
   ship.hyperspace();
 } else if(key == 'd') {
   ship.turn(5);
 } else if(key == 'a'){
   ship.turn(-5);
 } else if(key == 'w'){
   ship.accelerate(0.3);
 } else if(key == 'z'){
   bullets.add(new Bullet(ship))
 }
}
