class Die
{
  int myX;
  int myY;
  int numDots;
  Die(int x_, int y_)
  {
    myX = x_;
    myY = y_;
    numDots = (int)(Math.random()*6)+1; //returns a random number of dots 1-6
  }
  Integer roll() // function that returns an integer: the number of dots on one die
  {
    return numDots;
  }
  void show() // creates an individual die with the appropriate number of dots
  {
    fill(255, 246, 226);
    rect(myX, myY, 50, 50);
    fill(0);
    if (numDots == 1)
    {
      ellipse(myX+25, myY+25, 5, 5);
    }
    if (numDots == 2)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
    }
    if (numDots == 3)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
    }
    if (numDots == 4)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
    }
    if (numDots == 5)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+25, myY+25, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
    }
    if (numDots == 6)
    {
      ellipse(myX+10, myY+10, 5, 5);
      ellipse(myX+10, myY+40, 5, 5);
      ellipse(myX+10, myY+25, 5, 5);
      ellipse(myX+40, myY+40, 5, 5);
      ellipse(myX+40, myY+10, 5, 5);
      ellipse(myX+40, myY+25, 5, 5);
    }
  }
}
