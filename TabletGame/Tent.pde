class Tent extends Obstacles
{
  int size = width/10;
  Tent(float _lx, float _ly)
  {
    super(_lx, _ly);
    obstacle = loadImage("Tent.png");
  }

  void display()
  { 
    image(obstacle, loc.x, loc.y);
  }

  void move()
  {
    super.move();
    if (loc.x < -100)
    {
      loc.x = width+100;
    }
  }
}
