class SpiralLOW {
  float R = 1200;
  float s = 0;
  float p = 0;
  
  SpiralLOW() {
    
  }
  
  void display() {
    pushMatrix();
    if (s > 180) {
      s = 0;
    }
    translate(-150, -350, -1800);
    translate(width / 2, height / 2, /*-s + */775);
    s+=1;
    rotateZ(p);
    beginShape(TRIANGLE);
    for(float t = 0; t < 200; t+=1.55) {
      stroke(150, 0, 0);
      //fill(map(t, 0, 500, 0, 255));
      fill(0);
      vertex(R * cos(t), R * sin(t), t * 5);
    }
    endShape();
    popMatrix();
    p+= PI / 250;
  }
}
