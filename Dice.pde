void setup()
{
  size(500,500);
  noLoop();
}
void draw()
{
  Die A = new Die(30,20);
  Die B = new Die(200,20);
  Die C = new Die(370,20);
  Die D = new Die(30,170);
  Die E = new Die(200,170);
  Die F = new Die(370,170);
  A.show();
  B.show();
  C.show();
  D.show();
  E.show();
  F.show();
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY;
  
  Die(int x, int y) //constructor
  {
    roll();
    myX = x;
    myY = y;
  }
  void roll()
  {
    //your code here
  }
  void show()
  {
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
  }
}
