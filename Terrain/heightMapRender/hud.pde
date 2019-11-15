import peasy.*;
class hud {
 hud() {
  }
  
  void display() {
    textSize(24);
    fill(200, 0, 200);
    text("FPS: " + (float)frameRate, 25, 150, 150);
    text("Verticies: " + (terrain0.cols * terrain0.rows), 25, 650, 150);
    text("Disance: " + (float)cam.getDistance(), 25, 675, 150);
  }
}
