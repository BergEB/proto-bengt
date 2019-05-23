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
    x25 = 600;
    y25 = 600;
    x26 = 600;
    y26 = 600;
    x27 = 0;
    y27 = 0;
    x28 = 0;
    y28 = 0;
    x29 = 600;
    y29 = 0;
    x30 = 600;
    y30 = 0;
    x31 = 0;
    y31 = 600;
    x32 = 0;
    y32 = 600;
  }
  
  void display() {
    stroke(255);
    fill(0);
    line(x25, y25, x26, y26);
    line(x27, y27, x28, y28);
    line(x29, y29, x30, y30);
    line(x31, y31, x32, y32);
    x25-= (600 / 250.0);
    y26-= (600 / 250.0);
    x27+= (600 / 250.0);
    y28+= (600 / 250.0);
    x29-= (600 / 250.0);
    y30+= (600 / 250.0);
    x31+= (600 / 250.0);
    y32-= (600 / 250.0);
    if (y26 == -600) {
      x25 = 600;
      y26 = 600;
    }
    if (y28 == 600 * 2) {
      x27 = 0;
      y28 = 0;
    }
    if (y30 == 600 * 2) {
      x29 = 600;
      y30 = 0;
    }
    if (y32 == -600) {
      x31 = 0;
      y32 = 600;
    }
  }
}
