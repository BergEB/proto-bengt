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
    x18 = width;
    y18 = 0;
    x19 = 0;
    y19 = height;
    x20 = width;
    y20 = height;
    x21 = width;
    y21 = 0;
    x22 = width;
    y22 = height;
    x23 = 0;
    y23 = 0;
    x24 = 0;
    y24 = height;
  }
  
  void fastHorizontalExpand() {
    y17+= (height / 250.0);
    y18+= (height / 250.0);
  }
  
  void fastHorizontalInverseExpand() {
    y19-= (height / 250.0);
    y20-= (height / 250.0);
  }
  
  void fastHorizontalRightInverseExpand() {
    x21-= (width / 250.0);
    x22-= (width / 250.0);
  }
  
  void fastHorizontalLeftInverseExpand() {
    x23+= (width / 250.0);
    x24+= (width / 250.0);
  }
  
  void fastHorizontalLimit() {
    if (y18 == height) {
      y17 = 0;
      y18 = 0;
    }
  }
  
  void fastHorizontalInverseLimit() {
    if (y20 == 0) {
      y19 = height;
      y20 = height;
    }
  }
  
   void fastHorizontalRightInverseLimit() {
    if (x22 == 0) {
      x21 = width;
      x22 = width;
    }
  }
  
   void fastHorizontalLeftInverseLimit() {
    if (x24 == width) {
      x23 = 0;
      x24 = 0;
    }
  }
  
  void fastHorizontalDisplay() {
    stroke(255);
    fill(0);
    line(x17, y17, x18, y18);
  }
  
  void fastHorizontalInverseDisplay() {
    stroke(255);
    fill(0);
    line(x19, y19, x20, y20);
  }
  
  void fastHorizontalRightInverseDisplay() {
    stroke(255);
    fill(0);
    line(x21, y21, x22, y22);
  }
  
  void fastHorizontalLeftInverseDisplay() {
    stroke(255);
    fill(0);
    line(x23, y23, x24, y24);
  }
}
