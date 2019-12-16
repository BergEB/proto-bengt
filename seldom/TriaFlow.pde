class TriaFlow {
  float R;
  float rAcc;
  private int s;
  
  TriaFlow(int sides) {
    R = 0;
    rAcc = PI / 5000;
    this.s = sides;
  }
  
  void display() {
    noLights();
    pushMatrix();
    translate(-150, -300, -1000);
    for (int i = 100; i > 0; i--) {
      pushMatrix();
      translate(width / 2, height / 2, -i * 10);
      rotate(R * (100 - i));
      polygonFX((i * 5) + 5);
      popMatrix();
    }
    R+= rAcc;
    popMatrix();
  }
  
  void polygonFX(int n) {
    fill(0);
    stroke(200);
    strokeWeight(2.0);
    polygon(0, 0, n, s);
  }
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
