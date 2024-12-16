class Asteroid extends Floater
{
  private double rotSpeed; //randomly + or -
  public Asteroid(){ 
    corners = 5;
    rotSpeed = (Math.random()*11)-5;
    xCorners = new int[]{12,6,-6,-12,0};
    yCorners = new int[]{0,12,12,0,-12};
    myColor = 255;
    myCenterX = (int)(Math.random()*500);
    myCenterY = (int)(Math.random()*500); 
    myXspeed = (Math.random()*3)-1;
    myYspeed = (Math.random()*3)-1;
    myPointDirection = 0;
  }
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  public double getX(){
    return myCenterX;
  }
  public double getY(){
    return myCenterY;
  }
  public double getPointDirection(){
    return myPointDirection;
  }
}
