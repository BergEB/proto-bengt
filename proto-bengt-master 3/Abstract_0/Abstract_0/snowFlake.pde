class snowFlake {
  int x;
  int y;
  int xspeed;
  int yspeed;
  int size;
  int y1 = 800;
  int j;
  
  snowFlake() {
    y = (int)((Math.random() * 800) - 800);
    x = (int)(Math.random() * 801);
    xspeed = (int)((Math.random() * 10) - 5);
    yspeed = (int)((Math.random() * 5) + 7);
    size = (int)((Math.random() * 10));
  }
   
  void display() {
    noStroke();
    if (!mousePressed) {
      fill(255);
    }
    if (mousePressed) {
      fill(0);
    }
    ellipse(x, y, size, size);
    rect(0, y1, 800, 800);
  }
  
  void move() {
    if (mousePressed) {
      if (y < 10 && mousePressed) {
        y = (int)((Math.random() * 800) + 800);
        x = (int)(Math.random() * 801);
        xspeed = (int)((Math.random() * 8) - 4);
        yspeed = (int)((Math.random() * 5) + 7);
        size = (int)((Math.random() * 10));
      }
      x+= xspeed;
      y-= yspeed;
    }
    if (!mousePressed) {
      if (y > 810 && !mousePressed) {
        y = (int)((Math.random() * 800) - 800);
        x = (int)(Math.random() * 801);
        xspeed = (int)((Math.random() * 8) - 4);
        yspeed = (int)((Math.random() * 5) + 7);
        size = (int)((Math.random() * 10));
      }
      x+= xspeed;
      y+= yspeed;
  } 
}
  
  void buildUp() {
    if (!mousePressed) {
      if (y > 810) {
        j+= 2;
        if (j >= 1) {
          y1-= j;
          j = 0;
       }
     }
    }
  }
}
