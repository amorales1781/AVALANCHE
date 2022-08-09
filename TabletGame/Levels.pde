class Levels
{
  color bColor;
  Player p1;
  PImage background;
  int bX1, bX2;
  ArrayList <Tent> tents = new ArrayList<Tent>();
  ArrayList <Person> people = new ArrayList<Person>();
  float[] tentXloc;
  float[] tentYloc;
  float [] personX;
  float [] personY;
  boolean won, failed;
  int distanceTraveled, endGoal;
  int goalX;

  Levels(float[] _tX, float[] _tY, float[] _pX, float[] _pY)
  {
    background = loadImage("AvalancheBackground.png");
    bX1 = width/2;
    bX2 = width/2+width;
    p1 = new Player(accX, 0.5, 0, 0, width/3, height/2);
    tentXloc = _tX;
    tentYloc = _tY;
    for (int i = 0; i < _tX.length; i ++) {
      tents.add(new Tent(tentXloc[i], tentYloc[i]));
    }
    personX = _pX;
    personY = _pY;
    for (int i = 0; i < _pX.length; i ++)
    {
      people.add(new Person(personX[i], personY[i]));
    }
  }

  void play()
  {
    background(bColor);
    scrollBackground();
    p1.acc.y = accX/10-accX/10%0.01; 

    for (Tent t : tents) {
      t.update();
    }

    for (Person p : people)
    {
      p.update();
    }
    if (distanceTraveled <= goalX) {
      checkCollision();
    }

    fill(255);
    image(background, goalX+(width/3), height/2, width, height);
    goalX-=6;

    p1.update();
    println(distanceTraveled, goalX);
  }

  void checkCollision() 
  {
    for (Tent t : tents) {
      if (p1.hitWith(t.loc.x, t.loc.y, t.size))
      {
        failed = true;
        distanceTraveled = 0;
      }
    }

    for (Person p : people)
    {
      if (p1.hitWith(p.loc.x, p.loc.y, p.size))
      {
        failed = true;
        distanceTraveled = 0;
      }
    }
  }

  void scrollBackground()
  {
    image(background, bX1, height/2, width, height);
    image(background, bX2, height/2, width, height);
    bX1 -= 6;
    bX2 -= 6;

    if (bX1 < -width/2)
    {
      bX1 = bX2+width;
    }

    if (bX2 < -width/2)
    {
      bX2 = bX1+width;
    }
    //println(width, background.width);
  }

  void updateState(int winLevel, int loseLevel)
  {
    if (won)
    {
      gameState = winLevel;
      reset();
    }
    if (failed)
    {
      gameState = loseLevel;
      reset();
    }
  }

  void setFlickSpeed(float v) {
    for (Person p : people)
    {
      p.setFlickSpeed(v);
    }
  }

  void reset()
  {
    p1.loc.set(width/3, height/2);
    p1.vel.set(0, 0);
    p1.size=100;
    tents.clear();
    people.clear();
    goalX=endGoal*6+width/3;
    for (int i = 0; i < tentXloc.length; i ++) {
      tents.add(new Tent(tentXloc[i], tentYloc[i]));
    }
    for (int i = 0; i < personX.length; i++)
    {
      people.add(new Person(personX[i], personY[i]));
    }
    won = false;
    failed = false;
  }
}
