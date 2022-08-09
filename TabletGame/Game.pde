class Game
{
  Title title;
  Instructions instr;
  Level1 lvl1;
  Level2 lvl2;
  Level3 lvl3;
  Lose lose;
  Win win;
  Game()
  {
    title = new Title();
    instr = new Instructions();
    lvl1 = new Level1();
    lvl2 = new Level2();
    lvl3 = new Level3();
    lose = new Lose();
    win = new Win();
  }

  void run() {
    switch(gameState)
    {
    case 0:
      title.display();
      break;
    case 1:
      instr.display();
      break;
    case 2:
      lvl1.play();
      lvl1.updateState();
      break;
    case 3:
      lvl2.play();
      lvl2.updateState();
      break;
    case 4:
      lvl3.play();
      lvl3.updateState();
      break;
    case 5:
      lose.display();
      break;
    case 6:
      win.display();
      break;
    }
  }

  void mousePressed()
  {
    if (gameState == 0) {
      title.updateState();
    } else if (gameState == 1)
    {
      instr.updateState();
    } else if (gameState == 5)
    {
      lose.updateState();
    } else if (gameState == 6) 
    {
      win.updateState();
    }
  }

  void setFlickSpeed(float v)
  {
    if (gameState == 2)
    {
      lvl1.setFlickSpeed(v);
    } else if (gameState == 3)
    {
      lvl2.setFlickSpeed(v);
    } else if (gameState == 4)
    {
      lvl3.setFlickSpeed(v);
    }
  }
}
