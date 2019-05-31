LineSegment l0;
Ring r0;
horizontalLineSegment hl0;
fastHorizontalLineSegment fhl0;
fastLineSegment fl0;

void setup() {
  size(250, 250, P2D);
  smooth(8);
  frameRate(60);
  r0 = new Ring();
  l0 = new LineSegment();
  hl0 = new horizontalLineSegment();
  fhl0 = new fastHorizontalLineSegment();
  fl0 = new fastLineSegment();
}

void draw() {
  background(0);
  r0.display();
  l0.display();
  hl0.display();
  fhl0.display();
  fl0.display();
}
