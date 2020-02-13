public class Objects {
  PShape s;
  
  Objects() {
    s = loadShape("statue/Alucy.obj"); 
    s.scale(0.5);
  }
  
  void display() {
    pushMatrix();
    //specular(102, 51, 0);
    shininess(2.0);
    //ambient(25, 14, 0);
    //emissive(160, 140, 140);
    translate(1400, 400, 200);
    rotateX(PI);
    rotateY(-PI/2);
    shape(s, 0, 0);
    popMatrix();
  }

}
