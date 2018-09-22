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
  A.roll();
  B.show();
  B.roll();
  C.show();
  C.roll();
  D.show();
  D.roll();
  E.show();
  E.roll();
  F.show();
  F.roll();
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
    myX = x;
    myY = y;
  }
  void roll()
  {
    fill(0);
    if((int)(Math.random()*7) < 1)
    {
      ellipse(myX+50,myY+50,20,20);
    }
    else if((int)(Math.random()*7) < 2)
    {
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20); 
    }
    else if((int)(Math.random()*7) < 3)
    {
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+50,myY+50,20,20);
      ellipse(myX+75,myY+75,20,20); 
    }
    else if((int)(Math.random()*7) < 4)
    {
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+75,20,20); 
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20); 
    }
    else if((int)(Math.random()*7) < 5)
    {
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+75,20,20); 
      ellipse(myX+50,myY+50,20,20);
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+75,20,20);
    }
    else
    {
      ellipse(myX+25,myY+25,20,20);
      ellipse(myX+25,myY+50,20,20);
      ellipse(myX+25,myY+75,20,20); 
      ellipse(myX+75,myY+25,20,20);
      ellipse(myX+75,myY+50,20,20);
      ellipse(myX+75,myY+75,20,20);
    }
    noFill();
  }
  void show()
  {
    fill(255);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    rect(myX,myY,100,100,15);
    noFill();
  }
}
