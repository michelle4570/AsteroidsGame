public class Star //note that this class does NOT extend Floater
{
  //your code here
  int myX, myY, myColor, s;
  Star(){
    myX = (int)(Math.random()*600);
    myY = (int)(Math.random()*600);
    myColor = color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
    s = (int)(Math.random()*10);
}

public void show(){
  fill(myColor);
  stroke(myColor);
  ellipse(myX, myY, s,s);
}
}
