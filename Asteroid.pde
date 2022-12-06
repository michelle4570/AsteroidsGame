class Asteroid extends Floater // don't stop array at list.size() because there's no set size,stop at ~20
{
  protected double rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*10)-5;
    corners = 8;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = (int)(Math.random()*6)-13;
    yCorners[0] = (int)(Math.random()*4)-9;
    xCorners[1] = (int)(Math.random()*3)+7;
    yCorners[1] = (int)(Math.random()*5)-8  ; 
    xCorners[2] = (int)(Math.random()*4)+11;
    yCorners[2] = (int)(Math.random()*3)+6;
    xCorners[3] = (int)(Math.random()*4)+7;
    yCorners[3] = (int)(Math.random()*2)+9;
    xCorners[4] = (int)(Math.random()*2)-15;
    yCorners[4] = (int)(Math.random()*2)+8; 
    xCorners[5] = (int)(Math.random()*2)-6;
    yCorners[5] = (int)(Math.random()*9)-7; 
    xCorners[6] = (int)(Math.random()*5)-3;
    yCorners[6] = (int)(Math.random()*7)-8; 
    xCorners[7] = (int)(Math.random()*2)-5;
    yCorners[7] = (int)(Math.random()*2)+2;
    myCenterX = (int)(Math.random()*600);
    myCenterY = (int)(Math.random()*600);
    myColor = color((int)(Math.random()*12)+154,(int)(Math.random()*25)+159,(int)(Math.random()*20)+159);
    myPointDirection = (int)(Math.random()*360);
    myXspeed=myYspeed = (int)(Math.random()*2)-1;
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
  public void move(){
    turn(rotSpeed);
    super.move();
  }
}
