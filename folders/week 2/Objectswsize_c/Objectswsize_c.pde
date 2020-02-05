myObject o;
myObject o1;
myObject o2;

//INTIATE
void setup () {
  size (800, 600);
  o = new myObject();
  o1 = new myObject();
  o2 = new myObject();
}

void draw () {
  background (100);
  o.draw();
  o1.draw();
  o2.draw();
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
    speed = random (1,10);
    direction = 1;
    size = random (10,100);
  }
  void draw () {
    x = x + speed*direction;
    fill (255, 255, 0);
    rect (x, y, size, size);
            if (x>width-100) {
      direction = -1;
    } else if (x<0) {
      direction = +1;
    }
  }
}

