ArrayList <Circ> circ;

void setup () {
  size (800, 600, P3D);
  circ = new ArrayList();
  for (int i=0; i < 100; i++) {
    circ.add(new Circ());
  }
  smooth();
}

void draw () {
  background (0);
  for (Circ c1 : circ) {
    c1.update();
  }
}

class Circ {
  float x;
  float y;
  float speed;
  float p;

  Circ() {
    x = random(800);
    y = random(600);
    speed = 2;
    p = random (800);
  }

  void update () {
    speed();
    shape();
    barrier();
  }

  void speed () {
    y = y + speed;
    x = x + 1;
  }

  void pulse () {
  }

  void barrier () {
    if (y > 800) {
      speed = -2;
      x = random (800);
    }
    if ( y < 0) {
      speed = 2;
      x = random(800);
    }
    if (x > 800) {
      x = random(200);
    }
    if (x < 0) {
      x = random (800);
    }
  }

  void shape() {
    pushMatrix();
    stroke(255);
    translate(0,0);
    line(y,x,p,x);
    line(y,p,p,x);
    //line(x,p,p,y);
    popMatrix();
    println(x);
  }
}

