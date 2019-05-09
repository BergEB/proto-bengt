class hmm {
  PFont robotoThin;
  
  hmm() {
    robotoThin = createFont("Roboto-Thin.ttf", 32);
  }
  
  void display() {
    textFont(robotoThin, 64);
    fill(255, 100);
    pushMatrix();
    translate(450, 280);
    rotate((PI / 4.5));
    for (float x = -4; x < 4; x++) {
      for (float y = -4; y < 5; y++) {
        if ((x % 2 == 0 && y % 2 == 0) || (x % 2 != 0 && y % 2 != 0)) {
          fill(255, 100);
          text("defo", x * 200, y * 120);
        }
        else {
          fill(255, 160);
          text("defo", x * 200, y * 120);
        }
      }
    }
    popMatrix();
  }

}
