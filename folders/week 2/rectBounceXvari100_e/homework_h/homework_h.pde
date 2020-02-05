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
  float R;
  float G;
  float B;
  float time;

  //CONSTRUCTOR [void setup for class]

  myObject () {
    x = random (0, 800);
    y = random (0, 600);
    speed = random (1, 10);
    direction = 1;
    size = random (10, 100);
    R = random (0, 255);
    G = random (0, 255);
    B = random (0, 255);
    time = time + 0.10;
  }
  void draw () {
    x = x + speed*direction;
  time += 0.01;
  fill (R, G, B);
  rect (x, y, (size+sin(time)*100), (size+sin(time)*100));

  if (x > width - 100) {
    direction = -1;
  } else if (x<0) {
    direction = +1;
  }
}
}
// homework random color + pulse in size

