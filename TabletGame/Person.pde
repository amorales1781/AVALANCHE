class Person extends Obstacles
{
  int size = width/12;
  Person(float _x, float _y)
  {
    super(_x, _y);
    obstacle = loadImage("Person.png");
  }

  void display()
  {
    image(obstacle, loc.x, loc.y, size, size);
  }

  void setFlickSpeed(float v) {
    if (loc.x < width && loc.x > 0 && loc.y < height+100 && loc.y > -100) {
      acc.y = v/1000;
    }
  }
}
