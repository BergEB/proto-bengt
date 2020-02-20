class defoText {
  float slideX;
  
  defoText() {
  }
  
  void display() {
    textFont(robotoThin, 16);
    fill(255, 100);
    pushMatrix();
    translate(450, 280, 100);
    //rotate((PI / 4.5));
    for (float x = 0; x < 20; x++) {
      for (float y = 0; y < 18; y++) {
        pushMatrix();
        if (x % 2 == 0) {
          translate(0, slideX);
        }
        else {
          translate(0, -slideX);
        }
        if ((x % 2 == 0 && y % 2 == 0) || (x % 2 != 0 && y % 2 != 0)) {
          fill(255, 100);
          text("defo", x * 50 - 400, y * 30 - 240, 1);
        }
        else {
          fill(255, 160);
          text("defo", x * 50 - 400, y * 30 - 240, 1);
        }
        popMatrix();
      }
    }
    popMatrix();
    if (slideX > 118) {
      slideX = 0;
    }
    else {
      slideX++;
    }
  }
}
