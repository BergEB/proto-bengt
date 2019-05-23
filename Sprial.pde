float R = 1200;
float s = 0;
float p = 0;

void setup() {
  lights();
  smooth(8);
  fullScreen(P3D);
}

void draw() {
  background(0);
  lights();
  pushMatrix();
  if (s > 2000) {
    s = 0;
  }
  translate(width / 2, height / 2, -s + 850);
  s+=1;
  rotateZ(p);
  beginShape(TRIANGLE_STRIP);
  for(float t = 0; t < 1000; t+=1.54) {
    stroke(150, 0, 0);
    fill(map(t, 0, 1001, 0, 255));
    vertex(R * cos(t), R * sin(t), t);
  }
  endShape();
  popMatrix();
  p+= PI / 250;
}
