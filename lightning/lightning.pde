float startX;
float nstartX;
float startY;
float nstartY;
float endX;
float nendX;
float endY;
float nendY;
float triX;
float triY;
float triH;
float triFarLeg;
float triHorizontalLeg;
float triAngle;
lightningBolt bolt;
tesla t;
tesla t0;

void setup() {
  size(800, 800);
  bolt = new lightningBolt();
  t = new tesla();
  t.bounds(800, 800);
  t0 = new tesla();
  t0.bounds(800, 800);
  startX = t.teslaX - 400;
  nstartX = t.teslaX - 400;
  startY = t.teslaY - 400;
  nstartY = t.teslaY - 400;
  endX = t0.teslaX;
  nendX = t0.teslaX;
  endY = t0.teslaY;
  nendY = t0.teslaY;
  triX = t.teslaX - endX;
  triY = endY - t.teslaY;
  triH = (float)Math.sqrt((triX * triX) + (triY * triY));
  triAngle = degrees(atan(triY / triX));
  strokeWeight(1);
}

void draw() {
  background(0);
  t.display();
  t.bounds(800, 800);
  t0.display();
  t0.bounds(800, 800);
  startX = t.teslaX - 400;
  nstartX = t.teslaX - 400;
  startY = t.teslaY - 400;
  nstartY = t.teslaY - 400;
  endX = t0.teslaX;
  nendX = t0.teslaX;
  endY = t0.teslaY;
  nendY = t0.teslaY;
  bolt.calc();
  bolt.display();
  fill(255);
  text("X1: " + triX, 30, 700);
  text("Y1: " + triY, 30, 725);
  text("Angle: " + triAngle, 30, 750);
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
    noFill();
    beginShape();
    vertex(t0.teslaX, t0.teslaY);
    vertex(t.teslaX, t0.teslaY);
    vertex(t.teslaX, t.teslaY);
    endShape(CLOSE);
  }
  
  void display() {
    pushMatrix();
    translate(t0.teslaX, t0.teslaY);
    rotate(radians(-triAngle));
    stroke((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));
    startX = (float)Math.sqrt(sq(t0.teslaX - t.teslaX) + sq(t0.teslaY - t.teslaY));
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
