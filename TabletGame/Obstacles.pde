class Obstacles
{
  PVector loc, speed, acc;
  PImage obstacle;

  Obstacles(float lX, float lY)
  {
    loc = new PVector(lX, lY);
    speed = new PVector(-6,0);
    acc = new PVector(0,0);
  }

  void update()
  {
    display();
    move();
  }

  void display()
  {
    
  }

  void move()
  {
    speed.add(acc);
    loc.add(speed);
  }
}
