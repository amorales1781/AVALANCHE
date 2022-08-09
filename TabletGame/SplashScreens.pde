class SplashScreens
{
  PImage splashArt;
  color bColor;

  void display()
  {
    background(bColor);
    if (splashArt != null) {
      image(splashArt, width/2, height/2, width, height);
    }
  }

  void updateState(int nextLevel)
  {
    gameState = nextLevel;
  }
}
