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
    /*shininess(0.5);
    lightSpecular(5, 5, 5);
    ambient(2, 2, 2);
    emissive(5, 5, 5);
    specular(4, 4, 4);*/
    textureMode(IMAGE);
    textureWrap(CLAMP);
    s.setTexture(texture);
    baseLighting();
    translate(1400, 400, 200);
    rotateX(PI);
    rotateY(-HALF_PI);
    shape(s, 0, 0);
    popMatrix();
  }

}
