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
  circle = new target();
  strokeWeight(1);
}

void draw() {
  background(0);
  circle.display();
  while ((Math.abs(endX - startX) > 10) && (Math.abs(startX - endX) > 10) && (Math.abs(endY - startY) > 10) && (Math.abs(startY - endY) > 10) {
    stroke((float)(Math.random() * 256), (float)(Math.random() * 256), (float)(Math.random() * 256));
    endX = startX + ((float)(Math.random() * 10));
    endY = startY + ((float)((Math.random() * 19) -10));
    line(startX, startY, endX, endY);
    startX = endX;
    startY = endY;
  }
  if (mousePressed) {
    mousePressed(); 
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
