public class lobby {
  private boolean lightswitch;
  
  lobby() {
    lightswitch = true;
  }
  
  void display() {
    walls();
    callButton();
  }
  
  void walls() {
    specular(0, 0, 100);
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
    pushMatrix();
    translate(-699.0 / 2.0 - 101, 19, 0);
    box(699, 362, 0);
    translate(-2.0 * (-699.0 / 2.0 - 101), 0, 0);
    box(699, 362, 0);
    popMatrix();
    translate(0, 0, 1600);
    box(1600, 400, 0);    //close wall
    translate(-800, -200, -1600);
    translate(0, 200, 800);
    box(0, 400, 1600);    //right wall
    translate(1600, 0, 0);
    box(0, 400, 1600);    //left wall
    translate(-1600, -200, -800);
  }
  
  void callButton() {
    pushMatrix();
    translate(1000, 210, -2);
    box(32, 40, 6);
    specular(255, 0, 0);
    shininess(16.0);
    emissive(0, 0, 0);
    sphere(5);
    popMatrix();
  }
  
  void interact() {
    
  }
}
