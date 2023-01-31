float R = 2000;
float s = 0;
float p = 0;
float a = 1;

void setup() {
  size(1000, 1000, P3D);
  smooth(8);
  hint(ENABLE_STROKE_PERSPECTIVE);
  frameRate(60);
}

void draw() {
  background(0);
  lights();
  pushMatrix();
  if (s > 1000 || s < 0) {
    a*=-1;
  }
  translate(width / 2, height / 2, -s + 775);
  s+=a;
  rotateZ(p);
  beginShape(TRIANGLE_STRIP);
  for(float t = 0; t < 1040; t+=1.55) {
    strokeWeight(0.125);
    stroke(0, 255%sqrt(t), 0);
    fill(map(t, 0, 1040, 20, 100),map(t, 0, 1040, 0, 0),map(t, 0, 1040, 0, 0));
    vertex(R * cos(t), R * sin(t), t);
  }
  endShape();
  popMatrix();
  p+= PI / 235;
  String txt_fps = String.format(getClass().getName()+ " [fps %6.2f]", frameRate);
  surface.setTitle(txt_fps);
}
