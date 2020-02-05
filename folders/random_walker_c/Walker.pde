class Walker {
  int x, y;
  int speed;

  Walker () { 
    x = width/2;
    y = height/2;
    speed = 1;
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
      x = x + speed;
    } else if (choice == 1) {
      x = x - speed;
    } else if (choice == 2) {
      y = y + speed;
    } else {
      y = y - speed;
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
    //took me some time to figure out
    //that i put x in y
    println(choice);
  }
}

