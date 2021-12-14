class Bullet extends Floater {
  public Bullet(Spaceship a){
    myCenterX = a.getX();
    myCenterY = a.getY();
    myPointDirection = a.getPointDirection();
    accelerate(10);
  }
  public void show(){
  ellipse((float)myCenterX, (float)myCenterY, 5, 10);
  }
  public double getX(){return myCenterX;}
    public double getY(){return myCenterY;}


}
