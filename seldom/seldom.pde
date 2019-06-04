import peasy.*;

lobby l;
Door d;
PeasyCam cam;
HUD hud;
Hallway h;
defoText text1;
heightMapObject t0;
float viewX = 800;
float viewY = 200;
float viewZ = 800;

void setup() {
  fullScreen(P3D);
  frameRate(60);
  cam = new PeasyCam(this, viewX, viewY, viewZ, 100);
  cam.setActive(false);
  l = new lobby();
  d = new Door();
  hud = new HUD();
  h = new Hallway();
  t0 =  new heightMapObject();
  text1 = new defoText();
  t0.declare();
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
  println(mouseX + " " + mouseY);
}
