import peasy.*;
import queasycam.*;

private int stage;
private boolean stageStart;
lobby l;
Door d;
PeasyCam cam;
QueasyCam qCam;
HUD hud;
Hallway h;
heightMapObject t0;
TriaFlow polyThree;
TriaFlow polyFour;
TriaFlow polyFive;
TriaFlow polySix;
TriaFlow polySeven;
boolean keyHeld;
PFont robotoThin;
float viewX = 800;
float viewY = 200;
float viewZ = 800;

void setup() {
  fullScreen(P3D);
  //size(1000, 1000, P3D);
  //frameRate(60);
  smooth(8);
  cam = new PeasyCam(this, viewX, viewY, viewZ, 100);
  cam.setActive(false);
  stageStart = true;
  l = new lobby();
  d = new Door();
  hud = new HUD();
  h = new Hallway();
  t0 =  new heightMapObject();
  polyThree = new TriaFlow(3);
  polyFour = new TriaFlow(4);
  polyFive = new TriaFlow(5);
  polySix = new TriaFlow(6);
  polySeven = new TriaFlow(7);
  robotoThin = createFont("Roboto-Thin.ttf", 32);
  t0.declare();
  
  qCam = new QueasyCam(this);
  qCam.position.x = viewX;
  qCam.position.y = viewY;
  qCam.position.z = viewZ;
  qCam.pan-= PI / 2;
  qCam.sensitivity = 0.5;
  qCam.speed = 0;
  perspective(PI/3, (float)width / height, 0.01f, 2000f);
  
  //hint(ENABLE_STROKE_PERSPECTIVE);
  //hint(DISABLE_OPENGL_ERRORS);
}

void draw() {
  shininess(1.0);
  lightSpecular(255, 255, 255);
  directionalLight(50, 50, 50, 0, 2, -1);
  ambientLight(25, 25, 25);
  specular(25, 25, 25);
  background(0);
  noCursor();
  
  h.display();
  l.display();
  d.display();
  hud.display();
  mouseX = 0;
  mouseY = 0;
}


void keyPressed() {
  if (keyCode == SHIFT) {
    keyHeld = true;
  }
}

void keyReleased() {
  if (keyCode == SHIFT) {
    keyHeld = false;
  }
}

  
boolean mouseWithin(double x1, double y1, double x2, double y2) {
  if (mouseX >= x1 && mouseX <= x2 && mouseY >= y1 && mouseY <= y2) {
    return true;
  }
  else {
    return false;
  }
}

void nextStage() {
  if (mouseWithin(935.0, 815.0, 985.0, 865.0)) {
    if (mousePressed && mouseButton == LEFT) {
      h.zooming = true;
    }
  }
}
