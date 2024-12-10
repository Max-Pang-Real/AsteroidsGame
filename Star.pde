class Star 
{
  private int x, y;
  public Star(){
    x = (int)(Math.random()*500);
    y = (int)(Math.random()*500);
  }
  public void show(){
   fill(255);
   ellipse(x,y,(int)(Math.random()*3)+3,(int)(Math.random()*3)+3);
  }
}
