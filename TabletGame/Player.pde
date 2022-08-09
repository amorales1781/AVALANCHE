class Player
{

  PVector acc, vel, loc;
  float size=100;
  float sizeGrowth= 0.05;
  PImage player, shadow;
  float z;

  Player(float aX, float aY, float vX, float vY, float locX, float locY)
  {
    acc = new PVector(aX, aY);
    vel = new PVector(vX, vY);
    loc = new PVector(locX, locY);
    player = loadImage("Snowball.png");
    shadow = loadImage("SnowballShadow.png");
  }

  void update()
  {
    display();
    move();
  }

  void display() {
    z += 0.03;
    image(shadow, loc.x, loc.y+10, size, size);
    pushMatrix();
    translate(loc.x, loc.y);
    rotate(z);
    image(player, 0, 0, size, size);
    popMatrix();
    size += sizeGrowth;
  }

  void move()
  {
    vel.add(acc);
    loc.add(vel);
    acc.y = constrain(accY, -6, 6);
    vel.x = constrain(vel.x, -8, 8);
    vel.y = constrain(vel.y, -8, 8);
    loc.x = constrain(loc.x, 0, width);
    loc.y = constrain(loc.y, 0, height);
  }

  boolean hitWith(float x, float y, float _size)
  {
    if (dist(loc.x, loc.y, x, y)<size/2+_size/2)
    {
      return true;
    } else return false;
  }
}
