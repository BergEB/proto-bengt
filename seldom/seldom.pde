import peasy.*;

lobby l;
Door d;
PeasyCam cam;


void setup() {
  fullScreen(P3D);
  frameRate(60);
  cam = new PeasyCam(this, 800, 200, 800, 100);
  cam.setActive(false);
  l = new lobby();
  d = new Door();
}

void draw() {
  //lights();
  shininess(1.0);
  lightSpecular(255, 255, 255);
  //pointLight(50, 50, 50, 800, 200, 800);
  directionalLight(50, 50, 50, 0, 1, -1);
  ambientLight(25, 25, 25);
  background(0);
  /*stroke(200, 0, 0);
  line(0, 3000, 0, 0, -3000, 0);
  stroke(255);
  line(3000, 0, 0, -3000, 0, 0);
  line(0, 0, 3000, 0, 0, -3000);*/
  
  
  l.display();
  d.display();
  
}
