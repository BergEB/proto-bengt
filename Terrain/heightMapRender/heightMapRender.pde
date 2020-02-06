import peasy.*;
import processing.dxf.*;

heightMapObject terrain0;
PeasyCam cam;
boolean keyHeldUP, keyHeldDOWN, keyHeldLEFT, keyHeldRIGHT;
float[][] terrain;
boolean record;
hud h;

void setup() {
  frameRate(60);
  size(800, 800, P3D);
  smooth(8);
  terrain0 = new heightMapObject();
  cam = new PeasyCam(this, 400, 400, 127, 800);
  cam.setMaximumDistance(2000);
  cam.setMinimumDistance(100);
  h = new hud();
  perspective(PI/3, (float)width / height, 0.01f, 2000f);
  //terrain0.declare();
  //terrain0.logHeightValues();
}

void draw() {
  background(0);
  //keyPressed();
  if (record) {
    beginRaw(DXF, "output.dxf");
  }
  lights();
  println(frameRate + "\n");
  keyHeld();
  terrain0.display();
  if (record) {
    endRaw();
    record = false;
  }
  h.display();
  //terrain0.peak();
}

void keyPressed() {
  if (keyCode == UP) {
    keyHeldUP = true;
    //terrain0.yoffBase+=0.01;
  }
  if (keyCode == DOWN) {
    keyHeldDOWN = true;
    //terrain0.yoffBase-=0.01;
  }
  if (keyCode == LEFT) {
    keyHeldLEFT = true;
    //terrain0.xoffBase+=0.01;
  }
  if (keyCode == RIGHT) {
    keyHeldRIGHT = true;
    //terrain0.xoffBase-=0.01;
  }
}
  
void keyReleased() { //could change to a constant iteration size increase rather than a straight increase
  if (keyCode == UP) {
    keyHeldUP = false;
    //terrain0.yoffBase+=0.01;
  }
  if (keyCode == DOWN) {
    keyHeldDOWN = false;
    //terrain0.yoffBase-=0.01;
  }
  if (keyCode == LEFT) {
    keyHeldLEFT = false;
    //terrain0.xoffBase+=0.01;
  }
  if (keyCode == RIGHT) {
    keyHeldRIGHT = false;
    //terrain0.xoffBase-=0.01;
  }
}
  
void keyHeld() {
  if (keyHeldUP) {
    terrain0.yoffBase+=0.005;
  }
  if (keyHeldDOWN) {
    terrain0.yoffBase-=0.005;
  }
  if (keyHeldLEFT) {
    terrain0.xoffBase+=0.005;
  }
  if (keyHeldRIGHT) {
    terrain0.xoffBase-=0.005;
  }
}

//void keyPressed() {
  /*for (int y = 0; y < terrain.length; y++) {
    for (int x = 0; x < terrain[y].length; x++) {
      terrain[x][y] = 255 - terrain[x][y];
    }
  }
  terrain0.peak();*/
  //record = true;
//}
