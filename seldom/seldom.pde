import peasy.*;

lobby l;
Door d;
PeasyCam cam;
HUD hud;


void setup() {
  fullScreen(P3D);
  frameRate(60);
  cam = new PeasyCam(this, 800, 200, 800, 100);
  cam.setActive(false);
  l = new lobby();
  d = new Door();
  hud = new HUD();
}

void draw() {
  shininess(1.0);
  lightSpecular(255, 255, 255);
  directionalLight(50, 50, 50, 0, 2, -1);
  ambientLight(25, 25, 25);
  specular(25, 25, 25);
  background(0);
  noCursor();
  
  l.display();
  d.display();
  hud.display();
}
