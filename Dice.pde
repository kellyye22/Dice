Die one;
int sum = 0;

void setup()
{
	noLoop();
  size(500,600);
}
void draw()
{
	background(10,255,163);
  for(int row = 50; row < 500; row+= 150){
    for(int col = 100; col < 500; col+=150){
        one = new Die(row,col);
        one.roll();
        one.show();
    }
  }
  
  PFont header = createFont("HelveticaNeue", 32, true);
  textFont(header);
  textSize(32);
  textAlign(CENTER);
  text("Random Dice Generator", 250, 50);
  text("Sum : " + sum, 250, 550);
  PFont ital = createFont("HelveticaNeue-LightItalic", 48, true);
  textFont(ital);
  textSize(20);
  text("Click to generate random dice rolls", 250, 85);
}
void mousePressed()
{
	redraw();
  sum = 0;
}
class Die //models one single dice cube
{
	int myX, myY, rolls;
	int dieRadius = 20;

	Die(int x, int y) //constructor
	{
		myX = x;
    myY = y;
	}
	void roll()
	{
		rolls = (int)((Math.random()*6)+1);
    sum = sum + rolls;
	}
	void show()
	{
    fill(255);
		rect(myX, myY,100,100, 10);

    fill(0);
    
    if (rolls == 1){
      circle(myX + 50, myY + 50, dieRadius);
    }else if(rolls ==2){
      circle(myX + 25, myY + 25, dieRadius);
      circle(myX + 75, myY + 75, dieRadius);
    }else if(rolls == 3){
      circle(myX + 25, myY + 25, dieRadius);
      circle(myX + 50, myY + 50, dieRadius);
      circle(myX + 75, myY + 75, dieRadius);
    }else if (rolls == 4){
       circle(myX + 25, myY + 25, dieRadius);
       circle(myX + 25, myY + 75, dieRadius);
       circle(myX + 75, myY + 25, dieRadius);
       circle(myX + 75, myY + 75, dieRadius);
    }else if (rolls == 5){
       circle(myX + 25, myY + 25, dieRadius);
       circle(myX + 25, myY + 75, dieRadius);
       circle(myX + 50, myY + 50, dieRadius);
       circle(myX + 75, myY + 25, dieRadius);
       circle(myX + 75, myY + 75, dieRadius);
    }else if(rolls == 6){
      circle(myX + 25, myY + 25, dieRadius);
      circle(myX + 25, myY + 50, dieRadius);
      circle(myX + 25, myY + 75, dieRadius);
      circle(myX + 75, myY + 25, dieRadius);
      circle(myX + 75, myY + 50, dieRadius);
      circle(myX + 75, myY + 75, dieRadius);
    }
	}
}
