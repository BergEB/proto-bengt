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
  endX = targetX - mouseX;
  nendX = targetX - mouseX;
  endY = targetY - mouseY;
  nendY = targetY - mouseY;
  circle = new target();
  strokeWeight(1);
}

void draw() {
  background(0);
  circle.display();
  stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
  if (endX < targetX) {
    while (endX < targetX) {
      endX = startX + ((float)(Math.random() * 10));
      if (endY < targetY) {
        endY = startY + ((float)(Math.abs(Math.random() * 21) - 9));
      }
      if (endY > targetY) {
        endY = startY - ((float)(Math.abs(Math.random() * 21) - 9));
      }
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
  }
  if (endX > targetX) {
    pushMatrix();
    translate(400, 400);
    rotate(PI / 6);
    translate(-400, -400);
    while (endX > targetX) {
      endX = startX - ((float)(Math.random() * 10));
      if (endY < targetY) {
        endY = startY + ((float)(Math.abs(Math.random() * 21) - 9));
      }
      if (endY > targetY) {
        endY = startY - ((float)(Math.abs(Math.random() * 21) - 9));
      }
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    popMatrix();
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
  endX = targetX - mouseX;
  nendX = targetX - mouseX;
  endY = targetY - mouseY;
  nendY = targetY - mouseY;
}

class target {
  
  target() {
    
  }
  
  void display() {
    fill(255);
    ellipse(targetX, targetY, 30, 30);
  }
}
