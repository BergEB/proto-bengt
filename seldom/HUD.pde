public class HUD {
  private float cursorStroke;
  private int fade;
  boolean interactable;
  
  HUD() {
    stage = 1;
    fade = 255;
    stageStart = true;
  }
  
  void display() {
    movements();
    //cursor();
    cursor3D();
    /*if (keyHeld) {
      cursor();
    } else {
      cursor3D();
    }*/
    fadeIn();
    
  }
  
  void cursor() {
    cam.beginHUD();
    pushMatrix();
    noLights();
    translate(mouseX, mouseY);
    if (!l.lightswitch && d.A <= -(3*PI)/5) {
      interactable(935.0, 815.0, 985.0, 865.0);
      nextStage();
    }
    interactable(1152.0, 530.0 , 1186.0, 569.0);
    ellipse(0, 0, 8, 8);
    noStroke();
    popMatrix();
    cam.endHUD();
  }
  
  void cursor3D() {
    cam.beginHUD();
    pushMatrix();
    noLights();
    translate(width / 2, height / 2);
    if (interactable) {
      l.interactLight();
      noFill();
      strokeWeight(1.5);
      stroke(200);
    } else {
      noStroke();
      fill(200);
    }
    ellipse(0, 0, 8, 8);
    popMatrix();
    cam.endHUD();
  }
  
  void interactable(double x1, double y1, double x2, double y2) {
    if (mouseWithin(x1, y1, x2, y2) && !h.zooming) {
      hud.cursorStroke = 200;
      strokeWeight(1.5);
      noFill();
    } else {
      hud.cursorStroke = 0;
    }
  }
  
  void interactable(float targetX, float targetY, float targetZ, float boundsX, float boundsY) {
    if (screenX(targetX, targetY, targetZ) > (width / 2) - boundsX && screenX(targetX, targetY, targetZ) < (width / 2) + boundsX && screenY(targetX, targetY, targetZ) > (height / 2) - boundsY && screenY(targetX, targetY, targetZ) < (height / 2) + boundsY) {
      interactable =  true;
    } else {
      interactable = false;
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
      if (keyPressed && (/*key == 'w' ||*/ keyCode == UP)) {
        h.zooming = true;
      }
    }
  }
  
  
  void fadeIn() {
    if (stageStart) {
      if (fade > 0) {
        fill(0, fade);
        rectMode(CENTER);
        cam.beginHUD();
        noStroke();
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
