import peasy.*;

float x1, y1, r;
ArrayList<Mesh> meshes = new ArrayList<Mesh>();
Mesh WestSemisphere, EastSemisphere;
PeasyCam cam;

void setup() {
  frameRate(60);
  size(800, 800, P3D);
  smooth(8);
  cam = new PeasyCam(this, 400, 400, 0, 800);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(2000);
  meshes.add(new Mesh("WestSemisphere", 400, 400, 400, 0, 0, PI/2));
  meshes.add(new Mesh("EastSemisphere", 400, 400, -400, 0, 0, PI/2));
  hint(ENABLE_STROKE_PERSPECTIVE);
}

void draw() {
  background(16);
  lights();
  for (Mesh m : meshes) {
    m.display();
  }
}

class Mesh {
  int scl = 2;
  private String name;
  private int cols, rows, meshWidth, meshHeight;
  private float xPos, yPos, zPos, offset;
  private float[][] meshArray;
  
  //private int index(int x, int y) //previously used in declare() method in object of Mesh class
  //return x + y * width;
  //}
  
  Mesh(String name, int cols, int rows, float xPos, float yPos, float zPos, float offset) {
    this.name = name;
    this.rows = cols / this.scl;
    this.cols = rows / this.scl;
    this.meshWidth = cols;
    this.meshHeight = rows;
    this.xPos = xPos;
    this.yPos = yPos;
    this.zPos = zPos;
    this.offset = offset;
    this.meshArray = new float[cols][rows];
  }
    
  void display() {
    stroke(0, 255, 255);
    //noStroke();
    noFill();
    pushMatrix();
    //translate((width / 4), (height / 4), 0);
    translate((xPos + (width / 2)) / 2, yPos + (height / 4), zPos + (meshWidth / 2));
    
    translate(meshWidth / scl, 0, 0);
    rotateY(offset);
    //translate(-meshWidth / 2, 0, 0);
    
    for (int y = 0; y < rows - 1; y++) {
      beginShape(TRIANGLE_STRIP);
      for (int x = 0; x < cols; x++) {
        //stroke(200);
        strokeWeight(0.1);
        vertex(x * scl, y * scl, meshArray[x][y]);        
        vertex(x * scl, (y + 1) * scl, meshArray[x][y + 1]);
      }
      endShape();
    }
    popMatrix();
  }
  
}
