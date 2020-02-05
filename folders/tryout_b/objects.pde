class objects {
  float x = 0;
  float y = 0;
  float speedX;
  float speedY;
  float s1 = 100;
  float l1;

  objects (float _x, float _y) {
    x = _x;
    y = _y;
  }

  void run() {
    display(); 
    move();
    bounce();
    gravity();
    keyPressed();
  }
  void interact() {
  }

  void keyPressed () {
    if (key == 'a' | key == 'A') {
      l1 = l1 + 0.1;
    } else {
      l1 = l1 - 0.1;
    }
  }
  void gravity() {
    speedY += 0.01;
  }

  void bounce() {
    if (x > width) {
      speedX = speedX * -1;
    }
    if (x < 0) {
      speedX = speedX * -1;
    }
    if (y > height) {
      speedY = speedY * -1;
    }
    if (y < 0) {
      speedY = speedY * -1;
    }
  }

  void move () {
    x += speedX;
    y += speedY;
  }

  void display () {
    pushMatrix ();
    translate (width/x, width/y);
    rotateY (l1 * 0.2);
    rect (x, y, s1, s1);
    popMatrix ();
    println(l1);
  }
}

