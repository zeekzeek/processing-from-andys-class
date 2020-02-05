class Walker {
  int x, y;
  int speed;

  Walker () { 
    x = width/2;
    y = height;
    speed = 2;
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
float t = frameCount*0.5;
float r = 8;

    float choice = noise(t);
    choice = map(choice,0,1,0,r);

    if (choice < 3) {
      x = x + speed;
    } else if (choice < 4) {
      x = x - speed;
    } else if (choice < 8) {
      y = y - speed;
    } else {
      y = y + speed;
    }

    x = constrain(x, 0, width-1);
    y = constrain(y, 0, height-1);
    //took me some time to figure out
    //that i put x in y
    println(choice);
  }
}

