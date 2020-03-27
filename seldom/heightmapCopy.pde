//class heightMapObject {
//  private float[][] terrain;
//  int scl = 8;
//  int cols;
//  int rows;
//  int peakX;
//  int peakY;
//  float r;
//  PImage heightmap;
//  int index(int x, int y) {
//  return x + y * heightmap.width;
//  }
  
//  heightMapObject() {
//    cols = 800 / scl;
//    rows = 800 / scl;
//    r = 0;
//    terrain = new float[rows][cols];
//    heightmap = loadImage("heightmap.jpg");
//    heightmap.resize(800, 800);
//  }
    
//  void display() {
//    pushMatrix();
//    noLights();  //have yet to test performance impact
//    translate(400, -100, -1000);
//    noStroke();
//    rotateX(PI / 4);
//    translate(400, 400, 0);
//    rotateZ(r);
//    translate(-400, -400, 0);
//    r+= PI / 800;
//    fill(0);
//    strokeWeight(0.5);
//    for (int y = 0; y < cols - 1; y++) {
//      beginShape(TRIANGLE_STRIP);
//      for (int x = 0; x < rows; x++) {
//        //fill(terrain[x][y], 0, 255 - terrain[x][y]);
//        stroke(terrain[x][y], 0, 255 - terrain[x][y]);
//        vertex(x * scl, y * scl, terrain[x][y]);        
//        vertex(x * scl, (y + 1) * scl, terrain[x][y + 1]);
//      }
//      endShape();
//    }
//    popMatrix();
//  }
  
//  void declare() {
//    for (int y = 0; y < cols; y++) {
//      for (int x = 0; x < rows; x++) {
//        color pix = heightmap.pixels[index(x * scl, y * scl)];
//        terrain[x][y] = red(pix);
//      }
//    }
//  }
//}
