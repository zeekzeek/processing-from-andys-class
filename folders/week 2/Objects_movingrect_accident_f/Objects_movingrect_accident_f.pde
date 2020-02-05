ArrayList <myObject> objects;

//INTIATE
void setup () {
  size (800, 600);
  objects = new ArrayList <myObject>();
  for ( int i = 0; i < 100; i ++) {
    objects.add (new myObject());
  }
}

void draw () {
  background (100);
  for (myObject o : objects) {
    o.draw();
  }
  }

  class myObject {

    float x, y;
    float speed;
    float direction;
    float size;

    //CONSTRUCTOR [void setup for class]

    myObject () {
      x = random (0, 800);
      y = random (0, 600);
      speed = random (1, 10);
      direction = 1;
      size = random (10, 100);
    }
    void draw () {
      x = x + speed*direction;

      fill (x, y, 255);
      rect (x, y, size, size);

      if (x > width - 100) {
        direction = -1;
      } else if (x<0) {
        direction = +1;
      }
    }
  }


// homework random color + pulse in size
