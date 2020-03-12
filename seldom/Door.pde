public class Door {
  private float A;
  private boolean Door;
  private double doorRate;
  
  Door() {
    A = 0;
    Door = false;
    doorRate = PI/200;
  }
  
  void display() {
    
    if (Door) {
      doorFrame();
      door();
    }
  }
  
  void doorFrame() {
    if (stage == 1) {
      polyThree.display();
    }
    if (stage == 2) {
      polyFour.display();
    }
    if (stage == 3) {
      polyFive.display();
    }
    if (stage == 4) {
      polySix.display();
    }
    if (stage == 5) {
      polySeven.display();
    }
    if (stage == 6) {
      t0.display();
    }
    if (stage == 7) {
      spiral.display();
    }
    if (stage == 8) {
      wormHole.display();
      hint(ENABLE_OPTIMIZED_STROKE);
    }
    shininess(1.0);
    lightSpecular(255, 255, 255);
    directionalLight(50, 50, 50, 0, 2, -1);
    ambientLight(25, 25, 25);
    specular(25, 25, 25);
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
  
  void door() {
    sphereDetail(30);
    pushMatrix();
    fill(177/2, 129/2, 95/2);
    translate(800, 220, 0);
    translate(0, -180, -4);
    pushMatrix();
    textAlign(CENTER);
    translate(0, -20, 10);
    textSize(32);
    textFont(robotoThin);
    textMode(SHAPE);
    fill(255,0,0);
    text("00" + stage, 0, 0);
    popMatrix();
    open();
    translate(0, 180, 4);
    box(200, 360, 5);
    translate(90, 20, 8);
    shininess(4.0);
    specular(175, 0, 0);
    sphere(8);
    popMatrix();
  }
  
  void open() {
    if (l.lightswitch == false) {
      if (A > -(3*PI)/5) {
        A-= doorRate;
      }
    }
    rotateX(A);
  }
}
