public class Objects {
  PShape s;
  //PImage texture;
  
  Objects() {
    s = loadShape("statue/Angel.obj");
    lightSpecular(64, 64, 64);
    directionalLight(50, 50, 50, 0, 2, -1);
    s.setSpecular(50505050);
    //texture = loadImage("statue/stone.jpg");
    //s.scale(0.5);
  }
  
  void display() {
    pushMatrix();
    //s.setSpecular(0xfffff7d5);
    //s.setTextureMode(NORMAL);
    //s.setTexture(texture);
    translate(1400, 400, 200);
    //s.rotateX(PI);
    rotateY(-HALF_PI);
    //s.rotateZ(PI);
    rotateZ(PI);
    shape(s);
    popMatrix();
  }

}
