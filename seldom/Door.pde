public class Door {
  private float A;
  
  Door() {
    A = 0;
  }
  
  void display() {
    frame();
    door();
  }
  
  void frame() {
    pushMatrix();
    if (l.lightswitch == false) {
      shininess(16.0);
      emissive(1);
      specular(0, 0, 100);
      ambientLight(0, 0, 50);
    }
    else {
      specular(255, 0, 0);
    }
    pushMatrix();
    fill(177/2, 129/2, 95/2);
    noStroke();
    pushMatrix();
    translate(800, 220, 0);
    pushMatrix();
    translate(-105, -5, 0);
    box(8, 370, 4);
    popMatrix();
    pushMatrix();
    translate(105, -5, 0);
    box(8, 370, 4);
    popMatrix();
    popMatrix();
    translate(800, 34, 0);
    box(210, 8, 4);
    popMatrix();
  }
  
  void door() {
    sphereDetail(20);
    pushMatrix();
    fill(177/2, 129/2, 95/2);
    translate(800, 220, 0);
    if (l.lightswitch == false) {
      ySpin();
    }
    box(200, 360, 3);
    translate(90, 20, 8);
    sphere(8);
    popMatrix();
    popMatrix();
  }
  
  void ySpin() {
    rotateY(A);
    A-=Math.random() * (PI/50);
    
  }
}
