class LineSegment {
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float x4;
  float y4;
  float x5;
  float y5;
  float x6;
  float y6;
  float x7;
  float y7;
  float x8;
  float y8;
  LineSegment() {
    x1 = 600;
    y1 = 600;
    x2 = 600;
    y2 = 600;
    x3 = 0;
    y3 = 0;
    x4 = 0;
    y4 = 0;
    x5 = 600;
    y5 = 0;
    x6 = 600;
    y6 = 0;
    x7 = 0;
    y7 = 600;
    x8 = 0;
    y8 = 600;
  }
  
  void expand() {
    x1-= (600 / 500.0);
    y2-= (600 / 500.0);
  }
  
  void inverseExpand() {
    x3+= (600 / 500.0);
    y4+= (600 / 500.0);
  }
  
  void rightInverseExpand() {
    x5-= (600 / 500.0);
    y6+= (600 / 500.0);
  }
  
  void leftInverseExpand() {
    x7+= (600 / 500.0);
    y8-= (600 / 500.0);
  }
  
  void limit() {
    if (y2 == -600) {
      x1 = 600;
      y2 = 600;
    }
  }
  
  void inverseLimit() {
    if (y4 == 600 * 2) {
      x3 = 0;
      y4 = 0;
    }
  }
  
   void rightInverseLimit() {
    if (y6 == 600 * 2) {
      x5 = 600;
      y6 = 0;
    }
  }
  
   void leftInverseLimit() {
    if (y8 == -600) {
      x7 = 0;
      y8 = 600;
    }
  }
  
  void display() {
    stroke(255);
    fill(0);
    line(x1, y1, x2, y2);
  }
  
  void inverseDisplay() {
    stroke(255);
    fill(0);
    line(x3, y3, x4, y4);
  }
  
  void rightInverseDisplay() {
    stroke(255);
    fill(0);
    line(x5, y5, x6, y6);
  }
  
  void leftInverseDisplay() {
    stroke(255);
    fill(0);
    line(x7, y7, x8, y8);
  }
}
