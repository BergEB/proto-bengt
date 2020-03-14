public class Objects {
  PShape s;
  //PImage texture;
  
  Objects() {
    s = loadShape("statue/untitled.obj");
    s.setEmissive(0xffff0000);
    s.setTextureMode(NORMAL);
    s.setFill(color(255, 255, 255, 10));
    //s.enableStyle();
    //s.setSpecular(505050);
    //texture = loadImage("statue/stone.jpg");
    //s.scale(0.5);
  }
  
  void display() {
    pushMatrix();
    //resetMatrix();
    //s.setSpecular(0xfffff7d5);
    //s.setTexture(texture);
    translate(1400, 400, 200);
    //s.rotateX(PI);
    rotateY(-QUARTER_PI);
    //s.rotateZ(PI);
    rotateZ(PI);
    shape(s);
    popMatrix();
  }

}
