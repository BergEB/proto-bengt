import peasy.*;
import processing.video.*;

Capture video;
heightMapObject terrain0;
PeasyCam cam;
float[][] terrain;
hud h;
boolean rendered;
boolean constructed;

void setup() {
  //size(800, 800, P3D);
  fullScreen(P3D);
  background(0);
  frameRate(60);
  smooth(8);
  //video = new Capture(this, "name=FaceTime HD Camera (Built-in),size=400x400,fps=30");
  video = new Capture(this, "name=HD Pro Webcam C920,size=640x480,fps=30");
  rendered = false;
  constructed = false;
  video.start();
  //terrain0 = new heightMapObject();
  cam = new PeasyCam(this, 320, 400, 127, 800);
  cam.setMaximumDistance(2000);
  cam.setMinimumDistance(100);
  h = new hud();
  //terrain0.logHeightValues();
}

void captureEvent(Capture video) {  
  video.read();
  rendered = true;
}

void draw() {
  if (rendered) {
    if (!constructed) {
      terrain0 = new heightMapObject();
      constructed = true;
    }
    image(video, 0, 0);
    loadPixels();
    video.loadPixels();
    background(0);
    terrain0.declare();
    invert();
  }
  //terrain0.declare();
  //terrain0.display();
  h.display();
  //terrain0.peak();
  println(frameRate);
}

void invert() {
  if (keyPressed) {
    for (int x = 0; x < terrain.length; x++) {
      for (int y = 0; y < terrain[x].length; y++) {
        terrain[x][y] = 255 - terrain[x][y];
      }
    }
    terrain0.display();
  } else {
    terrain0.display();
  }
}

void keyPressed() {
  
  //terrain0.peak();
}
