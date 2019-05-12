heightMapJPG map;
hmm defo;
float x1;
float xRate;
float y1;
float yRate;
float fat;
float tall;
PFont robotoThin;

void setup() {
  size(1000, 600);
  smooth(8);
  map = new heightMapJPG();
  defo = new hmm();
  x1 = width / 2;
  y1 = height / 2;
  fat = 1.0;
  tall = 1.0 / 3.0;
  xRate = 1;
  yRate = 1;
}

void draw() {
  background(0);
  frameRate(20);
  defo.display();
  map.create();
  if (keyPressed && keyCode == SHIFT) {
    fill(10);
    rect(x1, y1, fat, tall);
    x1-= xRate;
    y1-= (6.0 / 10.0) * yRate;
    fat+= xRate * 2.0;
    tall+= (6.0 / 10.0) * 2.0 * yRate;
    yRate = yRate * 1.02;
    xRate = xRate * 1.02;
  }
  println(frameRate);
}
