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
  qCam = new QueasyCam(this);
  
  t0.declare();
  qCam.position.x = viewX;
  qCam.position.y = viewY;
  qCam.position.z = viewZ;
  qCam.pan-= PI / 2;
  qCam.sensitivity = 0.5;
  //qCam.speed = 0;  //enable for release build?
  perspective(PI/3, (float)width / height, 0.01f, 5000f); //last variable is view distance (increase if things get out of frame)
  //hint(DISABLE_OPENGL_ERRORS);  //enable for release build
  //hint(ENABLE_STROKE_PERSPECTIVE);
}

void draw() {
  background(0);
  noCursor();
  baseLighting();
  spotLight(191, 170, 133, viewX, viewY, viewZ, qCam.pan, qCam.tilt, -1, QUARTER_PI, 100);
  obj.display();
  h.display();
  l.display();
  d.display();
  hud.display();
  
  //println(millis() + "\t" + hud.fadeStart + "\t" + hud.fadeIntensity);
  //String txt_fps = String.format(getClass().getName()+ " [fps %6.2f]", frameRate);
  //surface.setTitle(txt_fps);
}
