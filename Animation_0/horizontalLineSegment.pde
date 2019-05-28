class horizontalLineSegment {
  float x9;
  float y9;
  float x10;
  float y10;
  float x11;
  float y11;
  float x12;
  float y12;
  float x13;
  float y13;
  float x14;
  float y14;
  float x15;
  float y15;
  float x16;
  float y16;
  horizontalLineSegment() {
    x9 = 0;
    y9 = 0;
    x10 = width;
    y10 = 0;
    x11 = 0;
    y11 = height;
    x12 = width;
    y12 = height;
    x13 = width;
    y13 = 0;
    x14 = width;
    y14 = height;
    x15 = 0;
    y15 = 0;
    x16 = 0;
    y16 = height;
  }
  
  void horizontalExpand() {
    y9+= (height / 500.0);
    y10+= (height / 500.0);
  }
  
  void horizontalInverseExpand() {
    y11-= (height / 500.0);
    y12-= (height / 500.0);
  }
  
  void horizontalRightInverseExpand() {
    x13-= (width / 500.0);
    x14-= (width / 500.0);
  }
  
  void horizontalLeftInverseExpand() {
    x15+= (width / 500.0);
    x16+= (width / 500.0);
  }
  
  void horizontalLimit() {
    if (y10 == height) {
      y9 = 0;
      y10 = 0;
    }
  }
  
  void horizontalInverseLimit() {
    if (y12 == 0) {
      y11 = height;
      y12 = height;
    }
  }
  
   void horizontalRightInverseLimit() {
    if (x14 == 0) {
      x13 = width;
      x14 = width;
    }
  }
  
   void horizontalLeftInverseLimit() {
    if (x16 == width) {
      x15 = 0;
      x16 = 0;
    }
  }
  
  void horizontalDisplay() {
    stroke(255);
    fill(0);
    line(x9, y9, x10, y10);
  }
  
  void horizontalInverseDisplay() {
    stroke(255);
    fill(0);
    line(x11, y11, x12, y12);
  }
  
  void horizontalRightInverseDisplay() {
    stroke(255);
    fill(0);
    line(x13, y13, x14, y14);
  }
  
  void horizontalLeftInverseDisplay() {
    stroke(255);
    fill(0);
    line(x15, y15, x16, y16);
  }
}