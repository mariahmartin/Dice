int sumDots; //creates a variable that holds the sum of all dots
int sumOfSums;
int runningAvg;
int numRolls;
int rows = 6;
int cols = 8;
void setup()
{
  background(181, 202, 238);
  size(600, 600);
  noLoop(); //prevents the draw function from running automatically
  sumDots = 0;
  runningAvg = 0;
  numRolls = 0;
  sumOfSums = 0;
}

void draw()
{
  background(181, 202, 238);

  int xDie = width / (cols+1);
  int yDie = height / (rows+1);
  for (int forX = 0; forX < cols; forX++) { // creates columns
    for (int forY = 0; forY < rows; forY++) { //creates rows
      int x = (forX + 1)* xDie;
      int y = forY * yDie;
      
      Die newDie = new Die(x - 25, y + 25);
      newDie.show();
      sumDots+=newDie.roll();
    }
  }

  /*  int xDie = width / (cols+1);
   int yDie = height / (rows+1);
   for (int forY = 0; forY < cols; forY++) { // creates columns
   int y = (forY)* yDie;
   for (int forX = 0; forX < rows; forX++) { //creates rows
   int x = (forX)* xDie;
   Die newDie = new Die(x , y);
   newDie.show();
   sumDots+=newDie.roll();
   }
   }*/
  /*  for (int forX = width/50; forX < width - width/50; forX+=50+width/50) { // creates columns
   for (int forY = 10; forY<height - 100; forY+=60) { //creates rows
   Die newDie = new Die(forX, forY);
   newDie.show();
   sumDots+=newDie.roll();
   }
   }*/
  textSize(15);
  text("The sum of the dots is " + sumDots, 30, height-30); //prints sum
  text("The running average of the sum of the dots is " + runningAvg, width/2 - 40, height-30); //prints sum
  //System.out.println("The sum of the dots is " + sumDots);
  System.out.println(runningAvg);
}

void mousePressed()
{
  // redraws the die each time the mouse is pressed & calculates new sum
  redraw();

  numRolls++;
  sumOfSums += sumDots;
  runningAvg = sumOfSums/numRolls;
  sumDots = 0;
}
