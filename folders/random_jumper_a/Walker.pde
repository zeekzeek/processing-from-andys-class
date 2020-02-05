class Walker {
  float x, y;
  int speed;

  Walker () { 
    x = width/2;
    y = height;
    speed = 10;
  }

  void update() {
    render();
    step();
  }
  void render () {
    stroke(0);
    point(x, y);
  }

  void step() {

    int choice = int(random(4));

    if (choice == 0) {
      x = random(800);
    } else if (choice == 1) {
      x = random(800);
    } else if (choice == 2) {
      y = y + speed*PI;
    } else {
      y = y - speed*PI;
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
    //took me some time to figure out
    //that i put x in y
    println(choice);
  }
}

