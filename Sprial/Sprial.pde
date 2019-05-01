import peasy.*;

float R = 25;
float r = 20;
PeasyCam cam;

void setup() {
  smooth(8);
  size(400, 400, P3D);
  cam = new PeasyCam(this, 0, 0, 200, 200);
  cam.setMaximumDistance(400);
  cam.setMinimumDistance(100);
}

void draw() {
  //rotateZ(0.1);
  background(0);
  stroke(0, 255, 255);
  noFill();
  beginShape(POINTS);
  for(float t = 0; t < 400; t+=0.1) {
    vertex(R * cos(t), R * sin(t), t);
  }
  endShape();
}
