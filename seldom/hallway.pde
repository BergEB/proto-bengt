public class Hallway {
  private int z;
  private boolean zooming;
  
  Hallway() {
    z = 0;
    zooming = false;
  }
  
  void display() {
    if (zooming) {
      zoom();
    }
  }
  
  void zoom() {
    if (z < 1000) {
      translate(0, 0, z);
      z+= 2;
    }
    else {
      z = 0;
      zooming = false;
      if (stage != 1) {
        stage++;
        stageStart = true;
      }
      d.Door = false;
      d.A = 0;
      l.lightswitch = true;
    }
  }
}
