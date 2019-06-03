public class Door {
  private float A;
  private boolean Door;
  private double doorRate;
  
  Door() {
    A = 0;
    Door = false;
    doorRate = Math.random() * (PI/200) + PI/200;
  }
  
  void display() {
    frame();
    door();
  }
  
  void frame() {
    pushMatrix();
    if (Door) {
      ambientLight(0, 0, 50);
      specular(255, 0, 0);
      shininess(16.0);
      emissive(1);
      pushMatrix();
      fill(177/2, 129/2, 95/2);
      noStroke();
      pushMatrix();
      translate(800, 220, 0);
      pushMatrix();
      translate(-105, -5, 0);
      box(8, 370, 6);
      popMatrix();
      pushMatrix();
      translate(105, -5, 0);
      box(8, 370, 6);
      popMatrix();
      popMatrix();
      translate(800, 34, 0);
      box(210, 8, 6);
      popMatrix();
    }
    popMatrix();
  }
  
  void door() {
    if (Door) {
      sphereDetail(20);
      pushMatrix();
      fill(177/2, 129/2, 95/2);
      translate(800, 220, 0);
      translate(0, -180, -4);
      if (l.lightswitch == false && Door) {
        ySpin();
      }
      rotateX(A);
      translate(0, 180, 4);
      box(200, 360, 5);
      translate(90, 20, 8);
      shininess(4.0);
      specular(175, 0, 0);
      sphere(8);
      popMatrix();
    }
  }
  
  void ySpin() {
    if (hud.stage == 0) {
      if (A > -(3*PI)/5) {
        A-= doorRate;
      }
      else {
        doorRate = Math.random() * (PI/100);
      }
    }
  }
}
