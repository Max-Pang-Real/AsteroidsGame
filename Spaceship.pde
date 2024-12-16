class Spaceship extends Floater  
{   
  public Spaceship(){
   corners = 3;  //the number of corners, a triangular floater has 3   
   xCorners = new int[]{-8, 16, -8};   
   yCorners = new int[]{-8, 0, 8};   
   myColor = 255;   
   myCenterX = myCenterY = 250;  //holds center coordinates   
   myXspeed = myYspeed = 0; //holds the speed of travel in the x and y directions   
   myPointDirection = 0; //holds current direction the ship is pointing in degrees    
  }
  public void hyperspace(){
   myXspeed = 0;
   myYspeed = 0;
   myCenterX = Math.random()*500;
   myCenterY = Math.random()*500; 
   myPointDirection = Math.random()*360;
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
