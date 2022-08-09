class Title extends SplashScreens
{
  PImage front, ball;
  float rotate, z;
  Title()
  {
    bColor = color(255, 0, 0);
    splashArt = loadImage("AvalancheTitleBack.png");
    front = loadImage("AvalancheTitleFront.png");
    ball = loadImage("AvalancheTitleSnowball.png");
    z = 0.025;
  }

  void display()
  {
    super.display();
    rotate += z;
    
    if (rotate >= 0.7) {
      z = -0.025;
    } 
    if (rotate <= -0.5)
    {
      z = 0.025;
    }
    pushMatrix();
    translate(width/2, height-100);
    rotate(rotate);
    image(ball, -300, -250);
    popMatrix();
    image(front, width/2, height/2, width, height);
    //println(rotate, z);
  }

  void updateState() {
    super.updateState(1);
  }
}
