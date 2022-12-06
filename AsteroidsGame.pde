Star [] ow;
Spaceship bob;
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
  for (int i = 0; i<Pals.size(); i++){
    Pals.get(i).show();
    Pals.get(i).move();
  float distance = dist((float)Pals.get(i).getCenterX(),(float)Pals.get(i).getCenterY(), (float)bob.getCenterX(),(float)bob.getCenterY());
    if (distance < 20){
      Pals.remove(i);
    }
}
}Star [] ow;
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

