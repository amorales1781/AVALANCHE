class Instructions extends SplashScreens
{
  PImage person;
  int speed, pY;

  Instructions()
  {
    bColor = color(0, 0, 255);
    splashArt = loadImage("Instructions.png");
    person = loadImage("InstructionsPerson.png");
    pY = height/2;
    speed = 5;
  }

  void display()
  {
    super.display();
    image(person, width/2, pY);
    pY += speed;
    if (pY >= height-350)
    {
      speed = -5;
    }
    if (pY <= height/2)
    {
      speed = 5;
    }
  }

  void updateState()
  {
    super.updateState(2);
  }
}
