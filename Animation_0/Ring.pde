class Ring {
  float x1;
  float y1;
  float x0;
  float y0;
  Ring() {
    x1 = width;
    y1 = height;
    x0 = width / 2.0;
    y0 = height / 2.0;
  }
  
  void breathe() {
    x1-= (width / 250.0);
    y1-= (height / 250.0);
  }
  
  void breathLimit() {
    if (x1 == -width) {
      x1 = width;
      y1 = height;
    }
  }
  
  void ringDisplay() {
    stroke(255);
    fill(0);
    ellipse(x0, y0, x1, y1);
  }
}
