public class HUD {
  private float cursorStroke;
  private int fade;
  
  HUD() {
    stage = 0;
    fade = 255;
    stageStart = true;
  }
  
  void display() {
    movements();
    //cursor();
    cursor3D();
    
  }
  
  void cursor() {
    cam.beginHUD();
    pushMatrix();
    noLights();
    fill(200);
    translate(mouseX, mouseY);
    if (!l.lightswitch && d.A <= -(3*PI)/5) {
      interactable(935.0, 815.0, 985.0, 865.0);
      nextStage();
    }
    interactable(1152.0, 530.0 , 1186.0, 569.0);
    ellipse(0, 0, 8, 8);
    noStroke();
    popMatrix();
    fadeIn();
    cam.endHUD();
  }
  
  void cursor3D() {
    cam.beginHUD();
    pushMatrix();
    translate(width / 2, height / 2);
    fill(200);
    noStroke();
    if (
    ellipse(0, 0, 8, 8);
    popMatrix();
    cam.endHUD();
  }
  
  void interactable(double x1, double y1, double x2, double y2) {
    if (mouseWithin(x1, y1, x2, y2) && !h.zooming) {
      hud.cursorStroke = 200;
      strokeWeight(1.5);
      stroke(hud.cursorStroke);
      noFill();
    }
  }
  
  void movements() {
    if (!l.lightswitch && d.A < -(3*PI)/5 && !h.zooming) {
      cam.beginHUD();
      pushMatrix();
      translate(width/2, 300+height/2 );
      fill(50, 10, 10);
      shapeMode(CENTER);
      stroke(110, 5, 5);
      rect(0, 0, 50, 50);
      rectMode(CENTER);
      textSize(48);
      textAlign(CENTER, CENTER);
      fill(255);
      text("^", 0, 0, 100, 100);
      popMatrix();
      cam.endHUD();
    }
  }
  
  
  void fadeIn() {
    if (stageStart) {
      if (fade > 0) {
        fill(0, fade);
        rectMode(CENTER);
        cam.beginHUD();
        rect(width / 2, height / 2, width, height);
        cam.endHUD();
        fade--;
      }
      else {
        fade = 255;
        stageStart = false;
      }
    }
  }
}
