class Spaceship extends Floater  
{
  public Spaceship(){  //your code here
  corners = 4;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = -8;
  yCorners[0] = -8;
  xCorners[1] = 16;
  yCorners[1] = 0;
  xCorners[2] = -8;
  yCorners[2] = 8;
  xCorners[3] = -2;
  yCorners[3] = 0;
  myCenterX = myCenterY = 300;
  myColor = color(255,100,100);
  myPointDirection = 0;
  myXspeed=myYspeed = 0;
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
public void hyperspace(){
  myCenterX = (int)(Math.random()*600);
  myCenterY = (int)(Math.random()*600);
  myPointDirection = (double)(Math.random()*360);
  myXspeed=0;
  myYspeed = 0;
}
  
}
