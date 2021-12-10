Spaceship a;
ArrayList <Star> starList;
ArrayList <Asteroid> asteroidList; 
public void setup(){
  size (400, 400);
  background(0);

  a = new Spaceship();
  asteroidList = new ArrayList <Asteroid>(); 
  starList = new ArrayList <Star>();
    for (int i = 0; i < 200; i++){
      starList.add(new Star()); 
      }
    
    for (int i = 0; i < 20; i++){
      asteroidList.add(new Asteroid() );    
      
      } 
  } 

public void draw(){
  background (0);
  for (int i = 0; i < starList.size(); i++)
    starList.get(i).show();
  for (int i = 0; i < asteroidList.size(); i++){
    asteroidList.get(i).move();
    asteroidList.get(i).show();
    float d = dist((float)a.getX(), (float)a.getY(), 
    (float)asteroidList.get(i).getX(), (float)asteroidList.get(i).getY());
    if (d < 10)
      asteroidList.remove(i);
      fill(100, 0, 0);
      
      
}  
  if (keyPressed){ // turn left
    if(key == 'a' || key == 'A'){
    a.turn(-10);
  }}
  if (keyPressed){ // turn right
    if(key == 'd' || key == 'D'){
     a.turn(10);
  }}
  if (keyPressed){ // forward
    if(key == 'w' || key == 'W'){
     a.accelerate(0.2);
  }}
   if (keyPressed){ // hyperspace
    if(key == 'f' || key == 'F'){
     a.hyperspace();
    }}
   a.move();
   a.show();
}
