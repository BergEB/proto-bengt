class fastHorizontalLineSegment {
  float x17;
  float y17;
  float x18;
  float y18;
  float x19;
  float y19;
  float x20;
  float y20;
  float x21;
  float y21;
  float x22;
  float y22;
  float x23;
  float y23;
  float x24;
  float y24;
  fastHorizontalLineSegment() {
    x17 = 0;
    y17 = 0;
    x18 = 600;
    y18 = 0;
    x19 = 0;
    y19 = 600;
    x20 = 600;
    y20 = 600;
    x21 = 600;
    y21 = 0;
    x22 = 600;
    y22 = 600;
    x23 = 0;
    y23 = 0;
    x24 = 0;
    y24 = 600;
  }
  
  void display() {
    stroke(255);
    fill(0);
    line(x17, y17, x18, y18);
    line(x19, y19, x20, y20);
    line(x21, y21, x22, y22);
    line(x23, y23, x24, y24);
    y17+= (600 / 250.0);
    y18+= (600 / 250.0);
    y19-= (600 / 250.0);
    y20-= (600 / 250.0);
    x21-= (600 / 250.0);
    x22-= (600 / 250.0);
    x23+= (600 / 250.0);
    x24+= (600 / 250.0);
    if (y18 == 600) {
      y17 = 0;
      y18 = 0;
    }
    if (y20 == 0) {
      y19 = 600;
      y20 = 600;
    }
    if (x22 == 0) {
      x21 = 600;
      x22 = 600;
    }
    if (x24 == 600) {
      x23 = 0;
      x24 = 0;
    }
  }
}
