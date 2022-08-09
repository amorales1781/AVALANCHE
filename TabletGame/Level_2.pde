class Level2 extends Levels
{
  Level2()
  {
    super(new float[] {width*2/3, width*2/3, width, width+width/4,width+width/4, width+width/3}, new float[] {height/4, height*3/4, height/2,height-width/20, height-(2*width/20), width/20},
    new float[] {2*width+width/4}, new float[] {height/5});
    bColor = color(255, 0 , 255);
    endGoal = 1500;
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
    text("Level 2" , 50, height*5/6);
  }

  void updateState() 
  {
    super.updateState(4, 5);
  }
}
