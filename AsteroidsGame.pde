Star [] ow;
Spaceship bob;
public void setup() 
{
  background(0);
  size(600,600);
  bob = new Spaceship();
  ow =new Star[200];
  for(int i = 0; i<ow.length; i++){
    ow[i] = new Star();}
  }
public void draw(){
  //your code here
  background(0);
    for (int i = 0; i< ow.length;i++){
    ow[i].show();
    }
  bob.move();
  bob.show();

if(keyPressed){
  if (key == 'a' || key == 'A'){
    bob.turn(-10);
  }
  if(key=='d' || key=='D'){
    bob.turn(10);
  }
  if(key=='w' || key == 'W'){
  bob.accelerate(0.2);
  }
  if(key=='h'||key=='H'){
    bob.hyperspace();
  }
}
}

