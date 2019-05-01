snowFlake [] s = new snowFlake[1000];

void setup() {
  size(800, 800, P2D);
  for (int i = 0; i < s.length; i++) {
    s[i] = new snowFlake();
  }
}

void draw() {
  background(0);
  for (int i = 0; i < s.length; i++) {
    s[i].display();
    s[i].move();
    s[i].buildUp();
  }
}
