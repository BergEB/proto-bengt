float R;
float rAcc;

void setup() {
  size(1000, 1000, P3D);
  smooth(8);
  frameRate(60);
  R = 0;
  rAcc = PI / 25000;
}

void draw() {
  //rotateY(PI/2);
  background(0);
  for (int i = 20; i > 0; i--) {
    pushMatrix();
    translate(width / 2, height / 2, i * 30);
    rotateZ(R * ( -i));
    polygonFX((i * 25) - 15);
    popMatrix();
  }
  println(R);
  R+= rAcc;
  if (R > 0.029 || R < -0.029) {
    rAcc*= -1;
  }
}


void polygonFX(int n) {
    //fill(0);
    noFill();
    stroke(200);
    strokeWeight(2);
    polygon(0, 0, n, 3);
  }

void polygon(float x, float y, float radius, int npoints) {
  float angle = TWO_PI / npoints;
  beginShape();
  for (float a = 0; a < TWO_PI; a += angle) {
    float sx = x + cos(a) * radius;
    float sy = y + sin(a) * radius;
    vertex(sx, sy);
  }
  endShape(CLOSE);
}
