public class HUD {
  private float cursorStroke;
  
  HUD() {
  }
  
  void display() {
    cursor();
  }
  
  void cursor() {
    cam.beginHUD();
    pushMatrix();
    translate(mouseX, mouseY);
    if (l.within(1152.0, 530.0, 1186.0, 569.0)) {
      hud.cursorStroke = 200;
      stroke(hud.cursorStroke);
      noFill();
    }
    else {
      fill(200);
    }
    ellipse(0, 0, 8, 8);
    fill(200);
    noStroke();
    popMatrix();
    cam.endHUD();
  }
  
  void controls() {
    
  }
}
