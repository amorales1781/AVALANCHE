class Level3 extends Levels
{
  Level3()
  {
    super(new float[] {width*3/4, width*3/4, width, width+width/4, width+width/4, width+width/2}, new float[] {height/3,height*2/3, width/10, height*3/4, height-width/20, height/2},
    new float[] {width, 2*width+width/3}, new float[] {height*3/4, height*2/3 });
    bColor = color(0, 255, 255);
    endGoal = 1750;
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
    text("Level 3" , 50, height*5/6);
  }

  void updateState() 
  {
    super.updateState(6, 5);
  }
}
