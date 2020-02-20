float angle;
float concentration;
float viewOff;

PVector half = new PVector();
PVector mouse = new PVector();

PShape pieta;

void setup() {
  size(512, 512, P3D);

  pieta = loadShape("pieta.obj");
  pieta.setFill(0xffffffff);
  pieta.setSpecular(0xfffff7d5);

  angle = QUARTER_PI;
  viewOff = height * .86602;

  half.set(width * .5, height * .5);
}

void draw() {
  background(0xff000000);
  camera(0, 0, viewOff,
    0, 0, 0,
    0, 1, 0);

  lightSpecular(64, 64, 64);

  // Horizonal light.
  spotLight(0, 127, 255,
    -half.x, sin(frameCount * .02) * half.y, 0,
    1, 0, 0,
    PI, 25);

  // Vertical light.
  spotLight(0, 255, 127,
    cos(frameCount * .02) * half.x, -half.y, 0,
    0, 1, 0,
    PI, 25);

  // Flash light.
  spotLight(191, 170, 133,
    0, 0, viewOff,
    mouse.x, mouse.y, -1,
    angle, concentration);

  shape(pieta);
  pieta.rotateY(.01);

  concentration = map(cos(frameCount * .01), -1, 1, 12, 100);
  mouse.set(mouseX - half.x, mouseY - half.y, viewOff);
  mouse.normalize();
}
