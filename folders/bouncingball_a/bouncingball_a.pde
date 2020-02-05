Ball b;

void setup() {
  size (800, 600);
  b = new Ball ();
}

void draw() {
  background(255);
  b.bounce();
  b.move();
  b.display();
}


class Ball {
  float x;
  float y;
  float xspeed;
  float yspeed;

  Ball() {
    x = 1; 
    y = 1;
    xspeed = 2;
    yspeed = 2;
  }

  void move () {
    x = x+xspeed;
    y = y+yspeed;
  }
  
  void bounce() {
    if (x < 0) {
      xspeed = xspeed * -1;
    }
    if (x > width) {
      xspeed = xspeed * -1;
    }
    if (y < 0) {
      yspeed = yspeed * -1;
    }
    if (y > height) {
      yspeed = yspeed * -1;
    }
  }
  // -1 acts as a constraint when limit is implemented

  void display () {
    fill(0);
    ellipse(x, y, 40, 40);
    println(x, y);
  }
}

