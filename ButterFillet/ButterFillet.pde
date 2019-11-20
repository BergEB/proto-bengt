import peasy.*;

float x1, y1, r;
ArrayList<Mesh> meshes = new ArrayList<Mesh>();
Mesh WestSemisphere, EastSemisphere;
CylinderMesh Body;
PeasyCam cam;

void setup() {
  size(800, 800, P3D);
  smooth(8);
  cam = new PeasyCam(this, 400, 400, 0, 800);
  cam.setMinimumDistance(50);
  cam.setMaximumDistance(2000);
  meshes.add(new Mesh("WestSemisphere", 400, 400, 0, 0, 0, PI/2));
  meshes.add(new Mesh("EastSemisphere", 400, 400, 0, 0, 0, PI/2));
  makeCylinder(meshes.get(0).meshArray, "positive");
  makeCylinder(meshes.get(1).meshArray, "negative");
  Body = new CylinderMesh(400, 400, 0, 0, 0);
  hint(ENABLE_STROKE_PERSPECTIVE);
}

void draw() {
  background(16);
  for (Mesh m : meshes) {
    m.display();
  }
  //Body.display();
}

class Mesh {
  int scl = 2;
  private String name;
  private int cols, rows, meshWidth, meshHeight;
  private float xPos, yPos, zPos, offset;
  private double[][] meshArray;
  
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
    this.meshArray = new double[cols][rows];
  }
    
  void display() {
    //stroke(0, 255, 255);
    noStroke();
    noFill();
    fill(200);
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
        vertex(x * scl, y * scl, (float)meshArray[x][y]);        
        vertex(x * scl, (y + 1) * scl, (float)meshArray[x][y + 1]);
      }
      endShape();
    }
    popMatrix();
  }
  
}

void makeCylinder(double[][] zVal, String curve) {
  for (int y = 0; y < 100; y++) {
    for (int x = 0; x < 200; x++) {
      if (curve.equals("positive")) {
        zVal[x][100 - y] = ((double)y * asin((y / 100.0))) - 200;
      }
      if (curve.equals("negative")) {
        zVal[x][100 - y] = -((double)y * asin((y / 100.0))) + 200;
      }
    }
  }
  for (int y = 200; y > 100; y--) {
    for (int x = 0; x < 200; x++) {
      if (curve.equals("positive")) {
        zVal[x][y] = (((double)y - 100) * asin(((y - 100) / 100.0))) - 200;
      }
      if (curve.equals("negative")) {
        zVal[x][y] = -(((double)y - 100) * asin(((y - 100) / 100.0))) + 200;
      }
    }
  }
}



class CylinderMesh {
  int scl = 2;
  private int cols, rows, meshWidth, meshHeight;
  private float xPos, yPos, zPos;
  private float[][] meshArray;
  
  //private int index(int x, int y) //previously used in declare() method in object of Mesh class
  //return x + y * width;
  //}
  
  CylinderMesh(int cols, int rows, float xPos, float yPos, float zPos) {
    this.rows = cols / this.scl;
    this.cols = rows / this.scl;
    this.meshWidth = cols;
    this.meshHeight = rows;
    this.xPos = xPos;
    this.yPos = yPos;
    this.zPos = zPos;
    this.meshArray = new float[cols][rows];
  }
    
  void display() {
    stroke(0, 255, 255);
    //noStroke();
    noFill();
    pushMatrix();
    
    for (int y = 0; y < rows - 1; y++) {
      beginShape(TRIANGLE_STRIP);
      for (int x = 0; x < cols; x++) {
        //stroke(200);
        strokeWeight(0.1);
        vertex(40.0 * sin((float)(((double)x) / cols) * PI * 2), y * scl, 40.0 * cos((float)(((double)x) / cols)) * PI * 2);        
        vertex(40.0 * sin((float)(((double)x) / cols) * PI * 2), (y + 1) * scl, 40.0 * cos((float)(((double)x) / cols)) * PI * 2);
      }
      endShape();
    }
    popMatrix();
  }
  
}
