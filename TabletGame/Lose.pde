class Lose extends SplashScreens
{

  Lose()
  {
    splashArt = loadImage("AvalancheLose.png");
  }
  
  void updateState()
  {
    super.updateState(2);
  }
}
