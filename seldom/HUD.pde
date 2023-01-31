public class HUD {
  //private float cursorStroke;
  private int fadeIntensity;
  public boolean interactable;
  boolean fadeStartSet;
  int fadeStart;
  PImage nextArrow;
  
  HUD() {
    nextArrow = loadImage("nextArrow.png");
    stage = 6;
    fadeIntensity = 255;
    fadeStart = 0;
    fadeStartSet = false;
    stageStart = true;
  }
  
  void display() {
    pushMatrix();
    movements();
    //cursor();
    cursor3D();
    /*if (keyHeld) {   // FIX FIX FIX FIX FIX FIX FIX FIX FIX
      cursor();
    } else {
      cursor3D();
    }*/
    fadeIn();
    popMatrix();
    shapeMode(CORNER);
  }
  
  /*void cursor() {
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
  }*/
  
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
    fill(200);
    stroke(200);
    textFont(robotoThin, 12);
    text(frameRate, 30, 15);
    cam.endHUD();
  }
  
  
  
  void movements() {
    if (!l.lightswitch && d.A < -(3*PI)/5 && !h.zooming) {
      cam.beginHUD();
      pushMatrix();
      translate(width/2, (300.0*((float)height/1080))+height/2);
      fill(50, 10, 10);
      shapeMode(CENTER);
      stroke(110, 5, 5);
      rect(0, 0, 50, 62);
      rectMode(CENTER);
      image(nextArrow, -nextArrow.width/2, -nextArrow.height/2);
      popMatrix();
      cam.endHUD();
      if (keyPressed && (/*key == 'w' ||*/ keyCode == UP)) {
        h.zooming = true;
      }
    }
  }
  
  
  void fadeIn() {
    if (stageStart) {
      if (!fadeStartSet) {
        fadeStart = millis();
        fadeStartSet = true;
      }
      if (millis() - fadeStart < 3000) { //  <-- three second timer
        fadeIntensity = 255 - (int)(255.0 * ((millis() - fadeStart) / 3000.0));
        fill(0, fadeIntensity);
        rectMode(CENTER);
        cam.beginHUD();
        noStroke();
        rect(width / 2, height / 2, width, height);
        cam.endHUD();
      }
      else {
        fadeIntensity = 255;
        stageStart = false;
        fadeStartSet = false;
      }
    }
  }
}
