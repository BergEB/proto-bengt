class heightMapObject {
  boolean keyHeldUP, keyHeldDOWN, keyHeldLEFT, keyHeldRIGHT;
  float[][] terrain;
  int scl = 10;
  int cols;
  int rows;
  int peakX;
  int peakY;
  float scale = 0.01;
  float peakZ;
  float yoff = 0;
  float yoffBase = 0;
  float xoff = 0;
  float xoffBase = 0;
  
  heightMapObject() {
    cols = 800 / scl;
    rows = 800 / scl;
    terrain = new float[rows][cols];
  }
  
  void display() {
    keyHeldUP = true;
    keyHeldRIGHT = true;
    keyHeld();
    display0();
  }
  
  void display0() {
    noLights();
    pushMatrix();
    translate(400, 100, -1000);
    rotateX(PI / 3);
    strokeWeight(0.5);
    yoff = yoffBase;
    for (int y = 0; y < cols - 1; y++) {
      xoff = xoffBase;
      beginShape(TRIANGLE_STRIP);
      for (int x = 0; x < rows; x++) {
        terrain[x][y] = map(noise(xoff, yoff), 0, 1, 0, 255);
        stroke(terrain[x][y], 0, 255 - terrain[x][y]);
        //fill(terrain[x][y], 0, 255 - terrain[x][y]);
        //noFill();
        //noStroke();
        fill(0);
        vertex(x * scl, y * scl, terrain[x][y]);        
        vertex(x * scl, (y + 1) * scl, terrain[x][y + 1]);
        xoff += 0.025;
      }
      endShape();
      yoff += 0.025;
    }
    popMatrix();
  }
  
  void keyHeld() {
    if (keyHeldUP) {
      yoffBase+=0.005;
    }
    if (keyHeldDOWN) {
      yoffBase-=0.005;
    }
    if (keyHeldLEFT) {
      xoffBase+=0.005;
    }
    if (keyHeldRIGHT) {
      xoffBase-=0.005;
    }
  }
}
