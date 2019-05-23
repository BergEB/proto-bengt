class Ring {
  float x1;
  float y1;
  float x0;
  float y0;
  Ring() {
    x1 = 600;
    y1 = 600;
    x0 = 600 / 2.0;
    y0 = 600 / 2.0;
  }
  
  void display() {
    stroke(255);
    fill(0);
    ellipse(x0, y0, x1, y1);
    x1-= (600 / 250.0);
    y1-= (600 / 250.0);
    if (x1 == -600) {
      x1 = 600;
      y1 = 600;
    }
  }
}
