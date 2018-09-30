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
  int summ = 0;
  int summm = 0;
  int total = 0;
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
  sum = (A.one+A.two+A.three+A.four+A.five+A.six)+(B.one+B.two+B.three+B.four+B.five+B.six)+(C.one+C.two+C.three+C.four+C.five+C.six)+(D.one+D.two+D.three+D.four+D.five+D.six);
  summ = (E.one+E.two+E.three+E.four+E.five+E.six)+(F.one+F.two+F.three+F.four+F.five+F.six)+(G.one+G.two+G.three+G.four+G.five+G.six)+(H.one+H.two+H.three+H.four+H.five+H.six);
  summm = (I.one+I.two+I.three+I.four+I.five+I.six)+(J.one+J.two+J.three+J.four+J.five+J.six)+(K.one+K.two+K.three+K.four+K.five+K.six)+(L.one+L.two+L.three+L.four+L.five+L.six);
  total = sum+summ+summm;
  text("Total: " + total ,180,430);
}
void mousePressed()
{
  redraw();
}
class Die //models one single dice cube
{
  int myX, myY, num, one, two, three, four, five, six;
  Die(int x, int y) 
  {
    myX = x;
    myY = y;
    num = 0;
    one=0;
    two=0;
    three=0;
    four=0;
    five=0;
    six=0;
  }
  void roll()
  {
    fill(0);
    if((int)(Math.random()*7) < 1)
    {
      ellipse(myX+40,myY+40,15,15);
      one = one + 1;
    }
    else if((int)(Math.random()*7) < 2)
    {
      ellipse(myX+25,myY+25,15,15);
      ellipse(myX+55,myY+55,15,15); 
      two = two + 2;
    }
    else if((int)(Math.random()*7) < 3)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+40,myY+40,15,15);
      ellipse(myX+60,myY+60,15,15); 
      three = three + 3;
    }
    else if((int)(Math.random()*7) < 4)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+60,15,15); 
      four = four + 4;
    }
    else if((int)(Math.random()*7) < 5)
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+40,myY+40,15,15);
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+60,15,15);
      five = five + 5;
    }
    else
    {
      ellipse(myX+20,myY+20,15,15);
      ellipse(myX+20,myY+40,15,15);
      ellipse(myX+20,myY+60,15,15); 
      ellipse(myX+60,myY+20,15,15);
      ellipse(myX+60,myY+40,15,15);
      ellipse(myX+60,myY+60,15,15);
      six = six + 6;
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
