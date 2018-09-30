Die bob;
void setup()
{
  size(500,500);
  textSize(32);
  noLoop();
}
void draw()
{
  background(255,196,241);
  int sum = 0;
  for(int y = 20; y <= 260; y += 120)
  {
    for(int x = 30; x <= 390; x += 120)
    {
       bob = new Die(x,y);
       bob.show();
       bob.roll();
       if (bob.num == 1)
       sum = sum + 1;
       if (bob.num == 2)
       sum = sum + 2;
       if (bob.num == 3)
       sum = sum + 3;
       if (bob.num == 4)
       sum = sum + 4;
       if (bob.num == 5)
       sum = sum + 5;
       if (bob.num == 6)
       sum = sum + 6;
    }
  }
  text("Total: " + sum,180,430);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, num;
  Die(int x, int y) 
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
      num = 1;
    }
    else if((int)(Math.random()*7) < 2)
    {
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+55,myY+55,15,15); 
      num = 2;
    }
    else if((int)(Math.random()*7) < 3)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+40,myY+40,15,15);
      ellipse(myX+60,myY+60,15,15); 
      num = 3;
    }
    else if((int)(Math.random()*7) < 4)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+60,15,15); 
      num = 4;
    }
    else if((int)(Math.random()*7) < 5)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+40,myY+40,15,15);
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+60,15,15);
      num = 5;
    }
    else
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+40,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+40,15,15);
      ellipse(myX+60,myY+60,15,15);
      num = 6;
    }
    noFill();
  }
  void show()
  {
    fill(255);
    rect(myX,myY,80,80,15);
    noFill();
  }
}
