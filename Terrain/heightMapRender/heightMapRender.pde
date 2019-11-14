import peasy.*;
import processing.video.*;

Capture video;
heightMapObject terrain0;
PeasyCam cam;
float[][] terrain;
hud h;

void setup() {
  frameRate(60);
  video = new Capture(this, "name=FaceTime HD Camera (Built-in),size=400x400,fps=60");
  video.start();
  size(800, 800, P3D);
  smooth(8);
  terrain0 = new heightMapObject();
  cam = new PeasyCam(this, 400, 400, 127, 800);
  cam.setMaximumDistance(2000);
  cam.setMinimumDistance(100);
  h = new hud();
  terrain0.declare();
  //terrain0.logHeightValues();
}

void draw() {
  if (video.available() == true) {
    video.read();
    video.resize(800, 800);
  }
  terrain0.declare();
  lights();
  println(frameRate);
  terrain0.display();
  h.display();
  terrain0.peak();
}

void keyPressed() {
  for (int y = 0; y < terrain.length; y++) {
    for (int x = 0; x < terrain[y].length; x++) {
      terrain[x][y] = 255 - terrain[x][y];
    }
  }
  terrain0.peak();
}
