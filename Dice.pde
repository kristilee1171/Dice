void setup()
{
  size(500,500);
  background(255,196,241);
  textSize(32);
  noLoop();
}
void draw()
{
  Die A = new Die(30,20);
  Die B = new Die(30,140);
  Die C = new Die(30,260);
  Die D = new Die(150,20);
  Die E = new Die(150,140);
  Die F = new Die(150,260);
  Die G = new Die(270,20);
  Die H = new Die(270,140);
  Die I = new Die(270,260);
  Die J = new Die(390,20);
  Die K = new Die(390,140);
  Die L = new Die(390,260);
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
  G.show();
  G.roll();
  H.show();
  H.roll();
  I.show();
  I.roll();
  J.show();
  J.roll();
  K.show();
  K.roll();
  L.show();
  L.roll();
  text("Total: ",150,430);
}
void mousePressed()
{
  background(255,196,241);
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
      ellipse(myX+40,myY+40,15,15);
    }
    else if((int)(Math.random()*7) < 2)
    {
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+55,myY+55,15,15); 
    }
    else if((int)(Math.random()*7) < 3)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+40,myY+40,15,15);
      ellipse(myX+60,myY+60,15,15); 
    }
    else if((int)(Math.random()*7) < 4)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+60,15,15); 
    }
    else if((int)(Math.random()*7) < 5)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+40,myY+40,15,15);
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+60,15,15);
    }
    else
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+40,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+40,15,15);
      ellipse(myX+60,myY+60,15,15);
    }
    noFill();
  }
  void show()
  {
    fill(255);
    rect(myX,myY,80,80,15);
    rect(myX,myY,80,80,15);
    rect(myX,myY,80,80,15);
    rect(myX,myY,80,80,15);
    rect(myX,myY,80,80,15);
    rect(myX,myY,80,80,15);
    noFill();
  }
}
