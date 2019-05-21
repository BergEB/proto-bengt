class hmm {
  PFont robotoThin;
  float slideX;
  
  hmm() {
    robotoThin = createFont("Roboto-Thin.ttf", 32);
  }
  
  void display() {
    textFont(robotoThin, 32);
    fill(255, 100);
    pushMatrix();
    translate(450, 280);
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
          text("defo", x * 100 - 800, y * 60 - 480);
        }
        else {
          fill(255, 160);
          text("defo", x * 100 - 800, y * 60 - 480);
        }
        popMatrix();
      }
    }
    popMatrix();
    if (((double)slideX * Math.random()) % 30 < 2) {
      fill(255, 255);
    }
    else {
      fill(200, 0);
    }
    if (slideX > 118) {
      slideX = 0;
    }
    else {
      slideX++;
    }
    textFont(robotoThin, 128);
    text("<RB>", 354, 225.5, 294, 151);
  }
}
