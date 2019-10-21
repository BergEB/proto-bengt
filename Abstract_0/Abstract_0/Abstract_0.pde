terrain world;
player p1;

void setup() {
  world = new terrain();
  p1 = new player();
}

void draw() {

}

class terrain {
  
  terrain() {
  }
  
  void display() {
  }
  
  void hitboxes() {
  }

  void rise() {
  }
  
  void spiral() {
  }
  
}

class player {
  float X;
  float Y;
  float Z;
  
  player() {
    X = 0;
    Y = 0;
    Z = 50;
  }
  
  void display() {
  }
  
}
