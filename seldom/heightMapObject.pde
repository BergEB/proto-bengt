class heightMapObject {
  private float[][] terrain;
  int scl = 8;
  int cols;
  int rows;
  int peakX;
  int peakY;
  PImage heightmap;
  int index(int x, int y) {
  return x + y * heightmap.width;
  }
  
  heightMapObject() {
    cols = 800 / scl;
    rows = 800 / scl;
    terrain = new float[rows][cols];
    heightmap = loadImage("heightmap.jpg");
    heightmap.resize(800, 800);
  }
    
  void display() {
    pushMatrix();
    translate(800, 200, 1000);
    noStroke();
    for (int y = 0; y < cols - 1; y++) {
      beginShape(TRIANGLE_STRIP);
      for (int x = 0; x < rows; x++) {
        fill(terrain[x][y], 0, 255 - terrain[x][y]);
        //stroke(terrain[x][y], 0, 255 - terrain[x][y]);
        vertex(x * scl, y * scl, terrain[x][y]);        
        vertex(x * scl, (y + 1) * scl, terrain[x][y + 1]);
      }
      endShape();
    }
    popMatrix();
  }
  
  void declare() {
    for (int y = 0; y < cols; y++) {
      for (int x = 0; x < rows; x++) {
        color pix = heightmap.pixels[index(x * scl, y * scl)];
        terrain[x][y] = red(pix);
      }
    }
  }
}
