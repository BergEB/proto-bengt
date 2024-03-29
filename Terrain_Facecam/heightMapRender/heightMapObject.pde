import processing.video.*;

class heightMapObject {
  int scl = 1;
  int cols;
  int rows;
  int peakX;
  int peakY;
  float peakZ;
  PrintWriter output;
  PImage heightmap;
  int videoWidth = video.width;
  int videoHeight = video.height;
  int index(int x, int y) {
   return x + y * /*heightmap*/video.width;
  }
  
  heightMapObject() {
    cols = video.height / scl;
    rows = video.width / scl;
    terrain = new float[rows][cols];
    //heightmap = loadImage("heightmap.jpg");
    //heightmap.resize(800, 800);
    //output = createWriter("heightValues.txt");
    //peakZ = terrain[0][0];
  }
    
  void display() {
    //stroke(0, 255, 255);
    noStroke();
    //fill(0);
    pushMatrix();
    translate(0, 155, 0);
    for (int y = 0; y < cols - 1; y++) {
      beginShape(TRIANGLE_STRIP);
      for (int x = 0; x < rows; x++) {
        //fill(terrain[x][y], 0, 255 - terrain[x][y]);
        fill(video.pixels[index(x / scl, y / scl)]);
        //stroke(0);
        //strokeWeight(0.1);
        //stroke(terrain[x][y], 0, 255 - terrain[x][y]);
        //stroke(video.pixels[index(x * scl, y * scl)]);
        vertex(x / scl, y / scl, terrain[x][y]);        
        vertex(x / scl, (y + 1) / scl, terrain[x][y + 1]);
      }
      endShape();
    }
    popMatrix();
  }
  
  void declare() {
    for (int y = 0; y < cols; y++) {
      for (int x = 0; x < rows; x++) {
        color pix = /*heightmap*/video.pixels[index(x / scl, y / scl)];
        terrain[x][y] = (red(pix) + green(pix) + blue(pix)) / 3;
      }
    }
  }
  
  /*void logHeightValues() {
    for (int y = 0; y < terrain.length; y++) {
      //output.print("\n" + "\b" + y + "\n");
      for (int x = 0; x < terrain[y].length; x++) 
        output.print(terrain[x][y] + " ");
    }
  }
  
  void peak() {
    for (int y = 0; y < terrain.length / scl; y++) {
      for (int x = 0; x < terrain[y].length / scl; x++) {
        if (terrain[x][y] > peakZ) {
          peakZ = terrain[x][y];
          peakX = x;
          peakY = y;
        }
      }
    }
    stroke(230);
    line(peakX, peakY, (int)peakZ, peakX, peakY, (int)peakZ + 100);
  }*/
  
}
