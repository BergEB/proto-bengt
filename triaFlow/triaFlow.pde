float R;
float rAcc;

void setup() {
  size(1000, 1000, P3D);
  smooth(8);
  frameRate(1000);
  R = 0;
  rAcc = PI / 10000;
}

void draw() {
  //rotateY(PI/2);
  background(0);
  for (int i = 50; i > 0; i--) {
    pushMatrix();
    translate(width / 2, height / 2, -i * 20);
    rotateZ(R * ( -i));
    polygonFX((i * 20) - 10);
    popMatrix();
  }
  println(R);
  R+= rAcc;
  //if (R > 0.029 || R < -0.029) {
    //rAcc*= -1;
  //}
  String txt_fps = String.format(getClass().getName()+ " [fps %6.2f]", frameRate);
  surface.setTitle(txt_fps);
}

void keyReleased() {
  rAcc*= -1;
}

void mouseReleased() {
  rAcc = 0;
}


void polygonFX(int n) {
    fill(0);
    //noFill();
    stroke(200);
    strokeWeight(1);
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
