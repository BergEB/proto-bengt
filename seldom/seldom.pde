import peasy.*;
import queasycam.*;
import java.awt.AWTException;
import java.awt.*;
import java.awt.event.*;
import java.lang.Object;
import java.awt.GraphicsDevice;
private int stage;
private boolean stageStart;
defoText defo;
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
SpiralLOW spiral;
WH wormHole;
Objects obj;
boolean keyHeld;
PFont robotoThin;
float viewX = 800;
float viewY = 200;
float viewZ = 800;
boolean created;
//Robot robot;

void setup() {
  fullScreen(P3D);
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
  spiral = new SpiralLOW();
  wormHole = new WH(40);
  obj = new Objects();
  robotoThin = createFont("Roboto-Thin.ttf", 32);
  defo = new defoText();
  t0.declare();
  
  qCam = new QueasyCam(this);
  qCam.position.x = viewX;
  qCam.position.y = viewY;
  qCam.position.z = viewZ;
  qCam.pan-= PI / 2;
  qCam.sensitivity = 0.5;
  //qCam.speed = 0;  //enable for release build?
  perspective(PI/3, (float)width / height, 0.01f, 5000f); //last variable is view distance (increase if things get out of frame)
  hint(ENABLE_STROKE_PERSPECTIVE);
  //hint(DISABLE_OPENGL_ERRORS);  //enable for release build
}

void draw() {
  background(0);
  noCursor();
  baseLighting();
  //spotLight(191, 170, 133, viewX, viewY, viewZ, qCam.pan, qCam.tilt, -1, QUARTER_PI, 100);
  obj.display();
  h.display();
  l.display();
  d.display();
  hud.display();
  
  println(millis() + "\t" + hud.fadeStart + "\t" + hud.fadeIntensity);
}

void baseLighting() {
  //shininess(1.0);
  lightSpecular(64, 64, 64);
  //directionalLight(5, 5, 5, 0, 2, -1);
  specular(0xfffff7d5);
  spotLight(0, 255, 127, 800, 800, 800, 0, 1, 0, PI, 1000);
  //specular(25, 25, 25);
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
