public class Objects {
  PShape s;
  //PImage texture;
  
  Objects() {
    s = loadShape("statue/untitled.obj");
    //s.setEmissive(0xffff0000);
    s.setTextureMode(NORMAL);
    s.setFill(color(0, 0, 0));
    //s.enableStyle();
    s.setSpecular(color(100, 100, 100));
    //texture = loadImage("statue/stone.jpg");
    //s.scale(0.5);
  }
  
  void display() {
    if (l.lightswitch == false) {
      s.setSpecular(color(0, 0, 0));
    } else {
      s.setSpecular(color(100, 100, 100));
    }
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
