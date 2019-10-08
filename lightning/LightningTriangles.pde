float startX;
float nstartX;
float startY;
float nstartY;
float endX;
float nendX;
float endY;
float nendY;
float targetX;
float targetY;
float triX;
float triY;
float triH;
float triFarLeg;
float triHorizontalLeg;
float triAngle;
target circle;

void setup() {
  size(800, 800);
  targetX = 400;
  targetY = 400;
  startX = mouseX;
  nstartX = mouseX;
  startY = mouseY;
  nstartY = mouseY;
  endX = targetX;
  nendX = targetX;
  endY = targetY;
  nendY = targetY;
  triX = mouseX - endX;
  triY = endY - mouseY;
  triH = (float)Math.sqrt((triX * triX) + (triY * triY));
  triFarLeg = Math.abs(400 - mouseY);
  triHorizontalLeg = Math.abs(400 - mouseX);
  triAngle = atan((mouseX - endX) / (mouseY - endY));
  circle = new target();
  strokeWeight(1);
}

void draw() {
  background(0);
  circle.display();
  triX = mouseX - endX;
  triY = endY - mouseY;
  triH = (float)Math.sqrt((triX * triX) + (triY * triY));
  triFarLeg = Math.abs(400 - mouseY);
  triHorizontalLeg = Math.abs(400 - mouseX);
  triAngle = radians(atan(triY / triX) * angleMult);
  if (triX < 0 && triY > 0) {
    triAngle = (triAngle * -1) + 90;
  }
  else if (triX < 0 && triY < 0) {
    triAngle = triAngle + 180;
  }
  else if (triX > 0 && triY < 0) {
    triAngle = (triAngle * -1) + 270;
  }
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  stroke(255);
  strokeWeight(1);
  fill(0);
  beginShape();
  vertex(400, 400);
  vertex(mouseX, 400);
  vertex(mouseX, mouseY);
  endShape(CLOSE);
  fill(255);
  text("X: " + triX, 50, 690);
  text("Y: " + triY, 50, 720);
  text("Angle: " + triAngle, 50, 750);
  
  if (mousePressed) {
    mousePressed();
    triX = mouseX - endX;
    triY = endY - mouseY;
  }
}

void mousePressed() {
  startX = mouseX;
  nstartX = mouseX;
  startY = mouseY;
  nstartY = mouseY;
  endX = targetX;
  nendX = targetX;
  endY = targetY;
  nendY = targetY;
}

class target {
  
  target() {
  }
  
  void display() {
    fill(255);
    ellipse(targetX, targetY, 30, 30);
  }
}
