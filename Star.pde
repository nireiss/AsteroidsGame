class Star
{
  private int myX, myY, myColor;
  public Star(){
    myX = (int)(Math.random() * 400);
    myY = (int)(Math.random() * 400);
    myColor = color((int)(Math.random() * 400), (int)(Math.random() * 400), (int)(Math.random() * 400));
  
  }
  public void show(){
   fill (myColor);
   ellipse(myX,myY,3,3);
    
    
  }}
