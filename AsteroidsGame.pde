Star [] sue;
Spaceship a; 
public void setup(){
  size (400, 400);
  background(0);
  a = new Spaceship();
  sue = new Star [100];
    for (int i = 0; i < sue.length; i++){
      sue[i] = new Star(); 
      }
    }

public void draw(){
  background (0);
  for (int i = 0; i < sue.length; i++)
  sue[i].show();
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
     a.accelerate(0.6);
    }}
   if (keyPressed){ // hyperspace
    if(key == 'f' || key == 'F'){
     a.hyperspace();
    }}
  a.move();
  a.show();
}
