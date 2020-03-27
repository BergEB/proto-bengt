class TriaFlow {
  float R;
  float rAcc;
  int spacing;
  int iterationSize;
  int polygons;
  private int s;
  private float staticStroke;
  
  TriaFlow(int sides) {
    R = 0;
    rAcc = PI / 50000;
    spacing = 8;
    iterationSize = 5;
    polygons = 100;
    this.s = sides;
    this.staticStroke = 1.5 * ((float)height/1080.0);
  }
  
  void display() {
    pushMatrix();
    noLights();
    translate(300, -50, -300);
    pushMatrix();
    translate(475, 0, -400);
    rotateY(R * 100);
    translate(-475, 0, 400);
    for (int i = polygons; i > 0; i--) {
      pushMatrix();
      translate(width/2, height/2, -i*spacing);
      rotate(R*(polygons-i));
      polygonFX((i*iterationSize)+1);
      popMatrix();
    }
    popMatrix();
    R+= rAcc;
    popMatrix();
    if (keyPressed && key == ' ') {
      rAcc*= -1;
    }
  }
  
  void polygonFX(int n) {
    fill(0);
    stroke(200);
    strokeWeight(staticStroke); //for stroke_perspective --> 0.5 at the very most
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
