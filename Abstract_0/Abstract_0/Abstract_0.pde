snowFlake [] s = new snowFlake[1000];

void setup() {
  size(800, 800, P2D);
  for (int i = 0; i < s.length; i++) {
    s[i] = new snowFlake();
  }
}

void draw() {
  if (!mousePressed) {
    background(0);
  }
  if (!mousePressed) {
    background(255);
  }
  for (int i = 0; i < s.length; i++) {
    s[i].display();
    s[i].move();
    s[i].buildUp();
  }
}
