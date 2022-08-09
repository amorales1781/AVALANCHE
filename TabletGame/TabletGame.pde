import ketai.sensors.*;
import ketai.ui.*;

KetaiSensor sensor;
KetaiGesture gesture;
Game game;
float accX, accY, accZ;
int gameState;


void setup() {
  game = new Game();
  sensor = new KetaiSensor(this);
  sensor.start();
  gesture = new KetaiGesture(this);
  orientation(LANDSCAPE);
  //textAlign(CENTER, CENTER);
  //textSize(72); 
  fullScreen();
  noStroke();
  rectMode(CENTER);
  imageMode(CENTER);
}

void draw() {
  background(78, 93, 75);
  game.run();
}

void mousePressed()
{
  game.mousePressed();
}

void onFlick(float x, float y, float px, float py, float v)
{
  print("FLICKED: ", x, y, px, py, v);
  if (py > y) {
    game.setFlickSpeed(-v);
  } else if (py < y)
  {
    game.setFlickSpeed(v);
  }
}

void onAccelerometerEvent(float x, float y, float z) {
  accX = x;
  accZ = z;
}
