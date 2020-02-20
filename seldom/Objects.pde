public class Objects {
  PShape s;
  PImage texture;
  
  Objects() {
    s = loadShape("statue/Alucy.obj");
    texture = loadImage("statue/stone.jpg");
    s.scale(0.5);
  }
  
  void display() {
    pushMatrix();
    s.setSpecular(0xfffff7d5);
    s.setTextureMode(NORMAL);
    //s.setTexture(texture);
    translate(1400, 400, 200);
    s.rotateX(PI);
    s.rotateY(-HALF_PI);
    shape(s);
    popMatrix();
  }

}
