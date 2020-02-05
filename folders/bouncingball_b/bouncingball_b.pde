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
  PVector location;
  PVector velocity;
  
  Ball() {
    location = new PVector(1,1);
    //x = 1; 
    //y = 1;
    velocity = new PVector(2,2);
    //xspeed = 2;
    //yspeed = 2;
  }
  
//addition doesn't work with PVectors
//location.add(velocity); || e.g. add(), sub(), mult()

  void move () {
  location.add(velocity); //same as x += xspeed
  }
  
  void bounce() {
    if (location.x < 0) {
      velocity.x = velocity.x * -1;
    }
    if (location.x > width) {
      velocity.x = velocity.x * -1;
    }
    if (location.y < 0) {
      velocity.y = velocity.y * -1;
    }
    if (location.y > height) {
      velocity.y = velocity.y * -1;
    }
  }
  // -1 acts as a constraint when limit is implemented

  void display () {
    fill(0);
    ellipse(location.x, location.y, 40, 40);
    println(location.x, location.y);
  }
}

