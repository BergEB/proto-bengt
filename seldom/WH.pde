class WH {
  float R;
  float rAcc;
  private int s;
  
  WH(int sides) {
    R = 0;
    rAcc = PI / 50000;
    this.s = sides;
  }
  
  void display() {
    noLights();
    pushMatrix();
    translate(-150, -300, -1000);
    for (int i = 100; i > 0; i--) {
      pushMatrix();
      translate(width / 2, height / 2, -i * 10);
      rotate(R * (50 - i));
      polygonFX(pow(1.125, (Math.abs(50 - i))) + 5);
      popMatrix();
    }
    R+= rAcc;
    popMatrix();
    if (keyPressed && key == ' ') {
      rAcc*= -1;
    }
  }
  
  void polygonFX(float n) {
    fill(0);
    stroke(200);
    strokeWeight(2.0);
    polygon(0, 0, n, s);
  }
}
