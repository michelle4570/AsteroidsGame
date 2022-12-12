class Bullet extends Floater{
  
 public Bullet(Spaceship theShip){
   myPointDirection = theShip.getPointDirection();
   myXspeed = theShip.getXspeed();
   myYspeed = theShip.getYspeed();
   myCenterX = theShip.getCenterX();
   myCenterY = theShip.getCenterY();
   accelerate(6.0);
 }
 
 public void setCenterX(int x){
   myCenterX = x;
 }
 public void setCenterY(int y){
   myCenterY = y;
 }
  public void setPointDirection(double degrees){
   myPointDirection = degrees;
 }
   public void setXspeed(double x){
    myXspeed = x;
  }
  public void setYspeed(double y){
    myYspeed = y;
  }
 
 public double getCenterX(){
   return myCenterX;
 }
 public double getCenterY(){
   return myCenterY;
 }
  public double getPointDirection(){
    return myPointDirection;
}
   public double getXspeed(){
     return myXspeed;
   }
   public double getYspeed(){
     return myYspeed;
   }

  public void show(){
    fill(255,60,60);
    ellipse((float)myCenterX, (float)myCenterY, (float)2, (float)2);
  }
  public void move(){
  myCenterX = myCenterX + myXspeed;
  myCenterY = myCenterY + myYspeed;
  }
}
