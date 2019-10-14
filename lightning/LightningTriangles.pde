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
lightningBolt bolt;

void setup() {
  size(800, 800);
  bolt = new lightningBolt();
  targetX = 400;
  targetY = 400;
  startX = mouseX - 400;
  nstartX = mouseX - 400;
  startY = mouseY - 400;
  nstartY = mouseY - 400;
  endX = targetX;
  nendX = targetX;
  endY = targetY;
  nendY = targetY;
  triX = mouseX - endX;
  triY = endY - mouseY;
  triH = (float)Math.sqrt((triX * triX) + (triY * triY));
  triAngle = degrees(atan(triY / triX));
  circle = new target();
  strokeWeight(1);
}

void draw() {
  background(0);
  startX = mouseX - 400;
  nstartX = mouseX - 400;
  startY = mouseY - 400;
  nstartY = mouseY - 400;
  endX = targetX;
  nendX = targetX;
  endY = targetY;
  nendY = targetY;
  circle.display();
  bolt.calc();
  bolt.display();
  fill(255);
  text("X: " + triX, 30, 700);
  text("Y: " + triY, 30, 725);
  text("Angle: " + triAngle, 30, 750);
}

class target {
  
  target() {
  }
  
  void display() {
    fill(255);
    ellipse(targetX, targetY, 30, 30);
  }
}

class lightningBolt {
  
  lightningBolt() {
  }
  
  void calc() {
    triX = mouseX - nendX;
    triY = nendY - mouseY;
    triH = (float)Math.sqrt((triX * triX) + (triY * triY));
    triAngle = degrees(atan(triY / triX));
    if (triX < 0.0 && triY > 0.0) {
      triAngle = triAngle + 180.0;
    }
    else if (triX < 0.0 && triY < 0.0) {
      triAngle = triAngle + 180.0;
    }
    else if (triX > 0.0 && triY < 0.0) {
      triAngle = triAngle + 360.0;
    }
    else if (triX == 0 && triY > 0) {
      triAngle = 90.0; 
    }
    else if (triX < 0 && triY == 0) {
      triAngle = 180.0; 
    }
    else if (triX == 0 && triY < 0) {
      triAngle = 270.0; 
    }
    stroke(255);
    strokeWeight(1);
    fill(0);
    beginShape();
    vertex(400, 400);
    vertex(mouseX, 400);
    vertex(mouseX, mouseY);
    endShape(CLOSE);
  }
  
  void display() {
    pushMatrix();
    translate(400, 400);
    rotate(radians(-triAngle));
    translate(0, 400 - mouseY);
    stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    startX = (float)Math.sqrt(sq(400.0 - mouseX) + sq(400.0 - mouseY));
    while (endX > 10) {
      endX = startX - ((float)(Math.random() * 10));
      endY = startY - ((float)(Math.abs(Math.random() * 21) - 9));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    popMatrix();
  }
}
