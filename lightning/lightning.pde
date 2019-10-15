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
tesla t;

void setup() {
  size(800, 800);
  bolt = new lightningBolt();
  t = new tesla();
  targetX = 400;
  targetY = 400;
  startX = t.teslaX - 400;
  nstartX = t.teslaX - 400;
  startY = t.teslaY - 400;
  nstartY = t.teslaY - 400;
  endX = targetX;
  nendX = targetX;
  endY = targetY;
  nendY = targetY;
  triX = t.teslaX - endX;
  triY = endY - t.teslaY;
  triH = (float)Math.sqrt((triX * triX) + (triY * triY));
  triAngle = degrees(atan(triY / triX));
  circle = new target();
  strokeWeight(1);
}

void draw() {
  background(0);
  t.bounds(800, 800);
  t.display();
  startX = t.teslaX - 400;
  nstartX = t.teslaX - 400;
  startY = t.teslaY - 400;
  nstartY = t.teslaY - 400;
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

class tesla {
  float teslaX;
  float teslaY;
  float accelX;
  float accelY;
  
  tesla() {
    teslaX = (float)Math.random() * 800;
    teslaY = (float)Math.random() * 800;
    accelX = (float)Math.random() * 3.5 + 2;
    accelY = (float)Math.random() * 3.5 + 2;
  }
  
  void display() {
    fill(255);
    ellipse(teslaX, teslaY, 30, 30);
  }
  
  void bounds(int x, int y) {
    if (teslaX - 10 > x || teslaX - 10 < 0) {
      accelX*= -1;
    }
    if (teslaY - 10 > y || teslaY - 10 < 0) {
      accelY*= -1;
    }
    teslaX+= accelX;
    teslaY+= accelY;
  }
}

class lightningBolt {
  
  lightningBolt() {
  }
  
  void calc() {
    triX = t.teslaX - nendX;
    triY = nendY - t.teslaY;
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
    vertex(t.teslaX, 400);
    vertex(t.teslaX, t.teslaY);
    endShape(CLOSE);
  }
  
  void display() {
    pushMatrix();
    translate(400, 400);
    rotate(radians(-triAngle));
    translate(0, 400 - t.teslaY);
    stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    startX = (float)Math.sqrt(sq(400.0 - t.teslaX) + sq(400.0 - t.teslaY));
    while (endX > 10) {
      endX = startX - ((float)(Math.random() * 10));
      endY = startY - ((float)(Math.abs(Math.random() * 21) - 10));
      line(startX, startY, endX, endY);
      startX = endX;
      startY = endY;
    }
    popMatrix();
  }
}
