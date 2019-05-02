import peasy.*;

float R = 25;
float r = 20;
float p = 0;
PeasyCam cam;

void setup() {
  smooth(8);
  size(400, 400, P3D);
  cam = new PeasyCam(this, 0, 0, 200, 800);
  cam.setMaximumDistance(800);
  cam.setMinimumDistance(100);
}

void draw() {
  rotateZ(p);
  background(0);
  stroke(0, 255, 255);
  fill(0);
  beginShape(POINTS);
  for(float t = 0; t < 1450; t+=0.5) {
    vertex(R * cos(t), R * sin(t), t);
  }
  endShape();
  p+= PI / 2000;
}
