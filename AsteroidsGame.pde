Star [] ow;
Spaceship bob;
ArrayList<Bullet> harry = new ArrayList<Bullet>();
ArrayList <Asteroid> Pals = new ArrayList<Asteroid>();
public void setup() 
{
  background(0);
  size(600,600);
  bob = new Spaceship();
  ow =new Star[200];
  for(int i = 0; i<ow.length; i++){
    ow[i] = new Star();}
   for(int i = 0; i<20; i++){
     Pals.add(new Asteroid());
   }
  }
public void draw(){
  //your code here
  background(0);
    for (int i = 0; i< ow.length;i++){
    ow[i].show();
    }
  bob.move();
  bob.show();
  for (int i=0; i<harry.size(); i++){
    harry.get(i).show();
    harry.get(i).move();
  }  
   for (int i = 0; i<Pals.size(); i++){
    Pals.get(i).show();
    Pals.get(i).move();
  float distance = dist((float)Pals.get(i).getCenterX(),(float)Pals.get(i).getCenterY(), (float)bob.getCenterX(),(float)bob.getCenterY());
    if (distance < 30) 
      Pals.remove(i);
    }
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
  if(key==' '){
    harry.add(new Bullet(bob));
  } 
    
  for (int j = 0; j<harry.size(); j++){
      for (int i = 0; i<Pals.size(); i++){
  float distance = dist((float)harry.get(j).getCenterX(),(float)harry.get(j).getCenterY(), (float)Pals.get(i).getCenterX(),(float)Pals.get(i).getCenterY());
    if (distance < 20){
      Pals.remove(i);
      harry.remove(j);
      break;
    }
  }
}
}
}
