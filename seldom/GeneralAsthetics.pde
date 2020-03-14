void baseLighting() {
  //shininess(1.0);
  lightSpecular(70, 70, 70);
  directionalLight(127, 127, 150, 0, 2, -1);
  specular(50, 50, 50);
  emissive(20, 20, 20);
  //ambient(10, 10, 10);
  //spotLight(0, 255, 127, 800, 800, 800, 0, 1, 0, PI, 1000);
}

void keyPressed() {
  if (keyCode == SHIFT) {
    keyHeld = true;
  }
}

void keyReleased() {
  if (keyCode == SHIFT) {
    keyHeld = false;
  }
}

  
boolean mouseWithin(double x1, double y1, double x2, double y2) {
  if (mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2) {
    return true;
  }
  else {
    return false;
  }
}

void interactable(double x1, double y1, double x2, double y2) {
  if (mouseWithin(x1, y1, x2, y2) && !h.zooming) {
    //hud.cursorStroke = 200;
    //strokeWeight(1.5);
    //noFill();
  } else {
    //hud.cursorStroke = 0;
  }
}
  
void interactable(float targetX, float targetY, float targetZ, float boundsX, float boundsY) {
  if (screenX(targetX, targetY, targetZ) > (width / 2) - boundsX && screenX(targetX, targetY, targetZ) < (width / 2) + boundsX && screenY(targetX, targetY, targetZ) > (height / 2) - boundsY && screenY(targetX, targetY, targetZ) < (height / 2) + boundsY) {
    hud.interactable =  true;
  } else {
    hud.interactable = false;
  }
}
