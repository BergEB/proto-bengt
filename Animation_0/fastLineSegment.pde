class fastLineSegment {
  float x25;
  float y25;
  float x26;
  float y26;
  float x27;
  float y27;
  float x28;
  float y28;
  float x29;
  float y29;
  float x30;
  float y30;
  float x31;
  float y31;
  float x32;
  float y32;
  fastLineSegment() {
    x25 = width;
    y25 = height;
    x26 = width;
    y26 = height;
    x27 = 0;
    y27 = 0;
    x28 = 0;
    y28 = 0;
    x29 = width;
    y29 = 0;
    x30 = width;
    y30 = 0;
    x31 = 0;
    y31 = height;
    x32 = 0;
    y32 = height;
  }
  
  void display() {
    x25-= (width / 250.0);
    y26-= (height / 250.0);
    x27+= (width / 250.0);
    y28+= (height / 250.0);
    x29-= (width / 250.0);
    y30+= (height / 250.0);
    x31+= (width / 250.0);
    y32-= (height / 250.0);
    if (y26 == -height) {
      x25 = width;
      y26 = height;
    }
    if (y28 == height * 2) {
      x27 = 0;
      y28 = 0;
    }
    if (y30 == height * 2) {
      x29 = width;
      y30 = 0;
    }
    if (y32 == -height) {
      x31 = 0;
      y32 = height;
    }
    stroke(255);
    fill(0);
    line(x25, y25, x26, y26);
    line(x27, y27, x28, y28);
    line(x29, y29, x30, y30);
    line(x31, y31, x32, y32);
  }
}
