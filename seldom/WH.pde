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
    pushMatrix();
    //translate(0, 0, -300);
    translate(800, 200, -250);
    rotateY(PI / 2);
    translate(-800, -200, 250);
    for (int i = 400; i > 0; i--) {
      pushMatrix();
      translate(800, 200, -i * 1.25);
      rotate(R * (200 - i));
      //polygonFX(pow(1.125, (Math.abs(50 - (i / 4.0)))) + 1);
      stroke(200);
      fill(0);
      strokeWeight(1);
      ellipse(0, 0, pow(1.125, (Math.abs(50 - (i / 4.0)))) + 1, pow(1.125, (Math.abs(50 - (i / 4.0)))) + 1);
      popMatrix();
    }
    R+= rAcc;
    popMatrix();
    if (keyPressed && key == ' ') {
      rAcc*= -1;
    }
  }
  
  void polygonFX(float n) {
    //fill(0);
    stroke(200);
    noFill();
    strokeWeight(1);
    polygon(0, 0, n, s);
  }
}
