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
    x1 = width;
    y1 = height;
    x2 = width;
    y2 = height;
    x3 = 0;
    y3 = 0;
    x4 = 0;
    y4 = 0;
    x5 = width;
    y5 = 0;
    x6 = width;
    y6 = 0;
    x7 = 0;
    y7 = height;
    x8 = 0;
    y8 = height;
  }
  
  void expand() {
    x1-= (width / 500.0);
    y2-= (height / 500.0);
  }
  
  void inverseExpand() {
    x3+= (width / 500.0);
    y4+= (height / 500.0);
  }
  
  void rightInverseExpand() {
    x5-= (width / 500.0);
    y6+= (height / 500.0);
  }
  
  void leftInverseExpand() {
    x7+= (width / 500.0);
    y8-= (height / 500.0);
  }
  
  void limit() {
    if (y2 == -height) {
      x1 = width;
      y2 = height;
    }
  }
  
  void inverseLimit() {
    if (y4 == height * 2) {
      x3 = 0;
      y4 = 0;
    }
  }
  
   void rightInverseLimit() {
    if (y6 == height * 2) {
      x5 = width;
      y6 = 0;
    }
  }
  
   void leftInverseLimit() {
    if (y8 == -height) {
      x7 = 0;
      y8 = height;
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
