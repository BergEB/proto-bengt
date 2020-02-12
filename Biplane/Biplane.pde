// https : // opengameart.org/content/low-poly-biplane
 
 
import peasy.*;
//import peasy.org.apache.commons.math.*;
//import peasy.org.apache.commons.math.geometry.*;
 
PeasyCam camera;
PShape s;
 
void setup() {
  size(1400, 900, P3D);
  // The file must be in the data folder
  // of the current sketch to load successfully
  textureMode(NORMAL);
  s = loadShape("01/bush_01.obj"); 
 
  // apply its texture 
  PImage img1=loadImage("01/diffuse.tga"); 
  PImage img2=loadImage("01/normal.tga"); 
  PImage img3=loadImage("01/specular.tga"); 
  PImage img4=loadImage("01/translucency.tga"); 
  s.setTexture(img1);
  //s.setTexture(img2);
  //s.setTexture(img3);
  //s.setTexture(img4);
 
  //s.scale(20);
  camera = new PeasyCam(this, 0, 0, 0, 50);
 
  camera.setMaximumDistance(5000);
}
 
void draw() {
  background(128);
  lights();
  shape(s, 0, 0);
}
//
