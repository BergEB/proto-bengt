Terrain world;
Player p1;

void setup() {
  fullscreen(P3D);
  world = new Terrain(3200, 3200, 0, 0, 0, 0);
  p1 = new Player();
}
 
void draw() {
  background(0);
}

class Terrain {
  private float width;
  private float length;
  private float height;
  private float X;
  private float Y;
  private float Z;
  private float hitboxX1;
  private float hitboxX2;
  private float hitboxY1;
  private float hitboxY2;
  private float hitboxZ1;
  private float hitboxZ2;
  
  Terrain(float x, float y, float z, float xPos, float yPos, float zPos) {
    width = x;
    length = z;
    height = y;
    X = xPos;
    Y = yPos;
    Z = zPos;
  }
  
  void display() {
    fill(255);
    translate(X, Y, Z);
    box(width, height, length);
  }
   
  void hitbox(float x, float y, float z) {
    hitboxX1 = width - (x / 2);
    hitboxX2 = width + (x / 2);
    hitboxY1 = height - (y / 2);
    hitboxY2 = height + (y / 2);
    hitboxZ1 = length - (z / 2);
    hitboxZ2 = length + (z / 2);
  }

  //void rise() {
  //}
  
  //void spiral() {
  //}
  
}

class Player {
  private float X;
  private float Y;
  private float Z;
  private float hitboxX1;
  private float hitboxX2;
  private float hitboxY1;
  private float hitboxY2;
  private float hitboxZ1;
  private float hitboxZ2;
  
  Player() {
  }
  
  void reposition(float x, float y, float z) {
    X = x;
    Y = y;
    Z = z;
  }
  
  void hitbox(float x, float y, float z) {
    hitboxX1 = X - (x / 2);
    hitboxX2 = X + (x / 2);
    hitboxY1 = Y - (y / 2);
    hitboxY2 = Y + (y / 2);
    hitboxZ1 = Z - (z / 2);
    hitboxZ2 = Z + (z / 2);
  }
  
  void display() {
  }
  
}

class Physics {
  private float gravity;
  private float gAcc;
 
  Physics() {
    gravity = 0;
    gAcc = 1;
  }
  
  void gravity() {
    p1.Y
  }
  
  void collision() {
    if (p1.hitboxY2 < world.hitboxY1) {
      p1.Y+= world.hitboxY1 - p1.hitboxY1;
    }
    if (p1.hitboxY1 > world.hitboxY2) {
      p1.Y-= p1.hitboxY2 - world.hitboxY2;
    }
  //distance formula with Math.abs for the differences between player X and column X & player Y and column Y
    if (Math.sqrt(sq(Math.abs(p1.X - world.X)) + sq(Math.abs(p1.Z - world.Z))) < 250) {
      if (p1.hitboxX1 < world.hitboxX1 && ((p1.hitboxZ1 > world.hitboxZ1 && p1.hitboxZ1 < world.hitboxZ2) || p1.hitboxZ2 < world.hitboxZ2))) {
        p1.X+= world.hitboxX1 - p1.hitboxX1;
      }
      if (p1.hitboxX2 > world.hitboxX2 && ((p1.hitboxZ2 > world.hitboxZ2 && p1.hotboxZ2 < world.hitboxZ1) || p1.hitboxZ1 < world.hitboxZ1))) {
        p1.X-= p1.hitboxX2 - world.hitboxX2;
      }
      if (p1.hitboxZ1 < world.hitboxZ1 && ((p1.hitboxX1 > world.hitboxX1 && p1.hotboxX1 < world.hitboxX2) || p1.hitboxX2 < world.hitboxX2))) {
        p1.Z+= world.hitboxZ1 - p1.hitboxZ1;
      }
      if (p1.hitboxZ2 > world.hitboxZ2 && ((p1.hitboxX2 > world.hitboxX2 && p1.hotboxX2 < world.hitboxX1) || p1.hitboxX1 < world.hitboxX1))) {
        p1.Z-= p1.hitboxZ2 - world.hitboxZ2;
      }
    }
  }
  
}  
