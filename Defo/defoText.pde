class hmm {
  PFont robotoThin;
  float slideX;
  
  hmm() {
    robotoThin = createFont("Roboto-Thin.ttf", 32);
  }
  
  void display() {
    textFont(robotoThin, 64);
    fill(255, 100);
    pushMatrix();
    translate(450, 280);
    rotate((PI / 4.5));
    for (float x = 0; x < 10; x++) {
      for (float y = 0; y < 9; y++) {
        pushMatrix();
        if (y % 2 == 0) {
          translate(slideX, 0);
        }
        else {
          translate(-slideX, 0);
        }
        if ((x % 2 == 0 && y % 2 == 0) || (x % 2 != 0 && y % 2 != 0)) {
          fill(255, 100);
          text("defo", x * 200 - 800, y * 120 - 480);
        }
        else {
          fill(255, 160);
          text("defo", x * 200 - 800, y * 120 - 480);
        }
        popMatrix();
      }
    }
    popMatrix();
    if (slideX % 2 == 0) {
      fill(255, 255);
    }
    else {
      fill(255, 0);
    }
    if (slideX > 398) {
      slideX = 0;
    }
    else {
      slideX++;
    }
    textFont(robotoThin, 128);
    text("<RB>", 354, 225.5, 294, 151);
  }
}
