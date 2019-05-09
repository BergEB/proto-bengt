class heightMapJPG {
  float scl = 1;
  float cols;
  float rows;
  float scale = 0.01;
  float[][] kolor;

  heightMapJPG() {
    cols = 300;
    rows = 300;
    kolor = new float[(int)rows][(int)cols];
  }
  
  void create() {
    float yoff = 0;
    for (int y = 0; y < cols; y++) {
      float xoff = 0;
      for (int x = 0; x < rows; x++) {
        kolor[x][y] = map(noise(xoff, yoff), 0, 1, 0, 255);
        xoff += scale;
      }
      yoff += scale;
    }
    for (int y = 0; y < cols; y++) {
      for (int x = 0; x < rows; x++) {
        noStroke();
        fill(kolor[x][y], 1, 255 - kolor[x][y]);
        rect(((float)x * scl) * (width / cols), ((float)y * scl) * (height / rows), (scl + (width / cols)), (scl + (height / rows)));
      }
    }
    scale = (float)(Math.random());
  }
}
