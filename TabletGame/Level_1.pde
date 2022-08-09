class Level1 extends Levels
{
  Level1()
  {
    super(new float[] {width*2/3, width*3/4, width, width+width/4, width+width/2 }, new float[] {height/2, 25, height-25, height/3, height*2/3+50}, 
      new float[] {width/2}, new float[] {2*height});
    bColor = color(255, 255, 50);
    endGoal = 1100;
    goalX=endGoal*6+width/3;
  }

  void play()
  {
    super.play();
    distanceTraveled ++;
    if (distanceTraveled >= endGoal)
    {
      won = true;
      distanceTraveled = 0;
    }
    //println(distanceTraveled, won, failed);
    fill(0);
    textSize(height/12);
    text("Level 1" , 50, height*5/6);
  }

  void updateState() 
  {
    super.updateState(3, 5);
  }
}
