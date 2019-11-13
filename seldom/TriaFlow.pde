class TriaFlow {
  float R;
  float rAcc;
  private int s;
  
  TriaFlow(int sides) {
    R = 0;
    rAcc = PI / 2500;
    this.s = sides;
  }
  
  void display() {
    noLights();
    pushMatrix();
    translate(-150, -300, -1000);
    for (int i = 20; i > 0; i--) {
      pushMatrix();
      translate(width / 2, height / 2, -i * 3);
      rotate(R * (11.5 - i));
      polygonFX((i * 30) + 1);
      popMatrix();
    }
    R+= rAcc;
    popMatrix();
  }
  
  void polygonFX(int n) {
    fill(0);
    stroke(200);
    strokeWeight(2);
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
