float startX;
float startY;
float endX;
float endY;
float targetX;
float targetY;
target circle;

void setup() {
  size(800, 800);
  targetX = 400;
  targetY = 400;
  startX = mouseX;
  startY = mouseY;
  endX = targetX;
  endY = targetY;
  circle = new target();
  strokeWeight(1);
}

void draw() {
  background(0);
  circle.display();
  stroke((float)(Math.random() * 256), (float)(Math.random() * 256), (float)(Math.random() * 256));
  endX = startX + ((float)(Math.random() * 10));
  endY = startY + ((float)((Math.random() * 19) -10));
  line(startX, startY, endX, endY);
  startX = endX;
  startY = endY;
  if (mousePressed) {
    mousePressed(); 
  }
}

void mousePressed() {
  startX = mouseX;
  startY = mouseY;
  endX = targetX;
  endY = targetY;
}

class target {
  
  target() {
    
  }
  
  void display() {
    fill(255);
    ellipse(targetX, targetY, 30, 30);
  }
}
