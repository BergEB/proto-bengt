public class HUD {
  private float cursorStroke;
  private int stage;
  
  HUD() {
    stage = 0;
  }
  
  void display() {
    movements();
    cursor();
  }
  
  void cursor() {
    cam.beginHUD();
    pushMatrix();
    translate(mouseX, mouseY);
    interactable(1152.0, 530.0, 1186.0, 569.0);
    ellipse(0, 0, 8, 8);
    fill(200);
    noStroke();
    popMatrix();
    cam.endHUD();
  }
  
  void interactable(double x1, double y1, double x2, double y2) {
    if (l.within(x1, y1, x2, y2)) {
      hud.cursorStroke = 200;
      stroke(hud.cursorStroke);
      noFill();
    }
    else {
      fill(200);
    }
  }
  
  void movements() {
    if (!l.lightswitch && d.A < -(3*PI)/5) {
      cam.beginHUD();
      pushMatrix();
      translate(width/2, 300+height/2 );
      fill(50, 10, 10);
      rect(-25, -25, 25, 25);
      textSize(36);                    //   FIX
      fill(200);
      text("^", 0, 0, 50, 50);
      popMatrix();
      cam.endHUD();
    }
  }
}
