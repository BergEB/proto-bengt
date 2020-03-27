class heightMapObject {
  int scl = 8;
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
  //PrintWriter output;  //for logHeightValues
  //PImage heightmap;  //for reading from a pre-made image
  /*int index(int x, int y) {  //for reading from a pre-made image
  return x + y * heightmap.width;
  }*/
  
  heightMapObject() {
    cols = 800 / scl;
    rows = 800 / scl;
    terrain = new float[rows][cols];
    //declare();
    //heightmap = loadImage("heightmap.jpg");  //for reading from a pre-made image
    //heightmap.resize(800, 800);  //for reading from a pre-made image
    //output = createWriter("heightValues.txt");  //for logHeightValues
    //peakZ = terrain[0][0];  //for peak()
  }
    
  void display() {
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
    
    /*for (int y = 0; y < cols - 1; y++) {
      beginShape(TRIANGLE_STRIP);
      for (int x = 0; x < rows; x++) {
        //fill(terrain[x][y], 0, 255 - terrain[x][y]);
        stroke(terrain[x][y], 0, 255 - terrain[x][y]);
        vertex(x * scl, y * scl, terrain[x][y]);        
        vertex(x * scl, (y + 1) * scl, terrain[x][y + 1]);
      }
      endShape();
    }*/
  }
  
  //void declare() { //for procedural drawing
  //  for (int y = 0; y < cols; y++) {
  //    for (int x = 0; x < rows; x++) {
  //      terrain[x][y] = map(noise(xoff, yoff), 0, 1, 0, 255);
  //    }
  //  }
  //}
  
  /*void declare() { //for reading from a pre-made image
    for (int y = 0; y < cols; y++) {
      for (int x = 0; x < rows; x++) {
        color pix = heightmap.pixels[index(x * scl, y * scl)];
        terrain[x][y] = red(pix);
      }
    }
  }*/
  
  /*void logHeightValues() {
    for (int y = 0; y < terrain.length; y++) {
      output.print("\n" + "\b" + y + "\n");
      for (int x = 0; x < terrain[y].length; x++) 
        output.print(terrain[x][y] + " ");
    }
  }*/
  
  /*void peak() {
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
