public class lobby {
  private boolean lightswitch;
  
  lobby() {
    lightswitch = true;
  }
  
  void display() {
    walls();
    lightSwitch();
  }
  
  void walls() {
    if (lightswitch == false) {
      specular(0, 0, 0);
    }
    fill(0);
    noStroke();
    translate(800, 400, 800);
    box(1600, 0, 1600);    //floor
    translate(-800, -400, -800);
    translate(800, 200, 0);
    pushMatrix();
    translate(0, -181, 0);
    box(1600, 38, 0);    //far wall
    popMatrix();
    if (d.Door) {
      pushMatrix();
      translate(-699.0 / 2.0 - 101, 19, 0);
      box(699, 362, 0);
      translate(-2.0 * (-699.0 / 2.0 - 101), 0, 0);
      box(699, 362, 0);
      popMatrix();
    }
    else {
      pushMatrix();
      translate(0, 19, 0);
      box(1600, 362, 0);
      popMatrix();
    }
    translate(0, 0, 1600);
    box(1600, 400, 0);    //close wall
    translate(-800, -200, -1600);
    translate(0, 200, 800);
    box(0, 400, 1600);    //right wall
    translate(1600, 0, 0);
    box(0, 400, 1600);    //left wall
    translate(-1600, -200, -800);
  }
  
  void lightSwitch() {
    if (within(1152.0, 530.0, 1186.0, 569.0)) {
      l.interactLight();
    }
    pushMatrix();
    translate(1000, 210, -2);
    box(32, 40, 6);
    if (lightswitch) {
      ambient(0, 100, 0);
      specular(0, 200, 0);
      rotateX(-PI/5);
    }
    else {
      specular(100, 0, 0);
      rotateX(PI/5);
    }
    shininess(16.0);
    box(8, 20, 8);
    ambient(0, 0, 0);
    popMatrix();
  }
  
  
  
  void interactLight() {
    if (l.lightswitch && mousePressed && mouseButton == RIGHT) {
      l.lightswitch = false;
    }
    if (!l.lightswitch && mousePressed && mouseButton == LEFT) {
      d.Door = true;
      l.lightswitch = true;
    }
  }
}
