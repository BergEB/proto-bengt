float R = 3600;
float s = 849;
float p = 0;
float kolor;
float r = -PI / 200;
float cameraZ = ((height/2.0)/tan(PI*60.0/360.0));
boolean sT = false;

void setup() {
  size(800, 800, P3D);
  smooth(8);
}

void draw() {
  background(0);
  perspective(PI/3.0, width / height, cameraZ/10, cameraZ * 10);
  if (sT) {
    if (r % (PI * 2) == 0) {
      sT = false;
    } else {
      r-= PI / 200;
      s--;
      translate(width / 2, height / 2, 600);
      rotateY(r);
      
    }
  }

  if (sT == false) {
    if (s > 849) {
      sT = true;
      p-=PI / 100;
      //kolor = (float)(Math.random() * 256);
    }
    else {
      s++;
      p-= PI / 250;
    }
  }
  pushMatrix();
  //translate(width / 2, height / 2, s - 230);
  //rotateZ(p);
  //imageMode(CENTER);
  //clip((float)(Math.random() * (double)width), (float)(Math.random() * (double)height), (float)(Math.random() * (double)width) + (float)(Math.random() * 100.0), (float)(Math.random() * (double)height) + (float)(Math.random() * 100.0));
  //clip(mouseX, mouseY, (float)(Math.random() * 100) + 150, (float)(Math.random() * 100) + 150);
  beginShape(TRIANGLE_STRIP);
  for(float t = 0; t < 400; t+=1.54) {
    fill((kolor / 200.0) * t, (200 - kolor) / 4, (kolor * kolor) % 255 / 2);
    stroke((map(t, 0, 400, 0, 255)) % 255 + (400 - t), map(t, 0, 400, 0, 255), map(t, 0, 400, 0, 255));
    vertex(R * cos(t), R * sin(t), t - 200);
  }
  endShape();
  popMatrix();
}
