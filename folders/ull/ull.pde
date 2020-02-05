ArrayList <Circ> circ;

void setup () {
  background (0);
  size (800, 600, P3D);
  for (int i=0; i < 10; i++) {
    circ.add(new Circ());
  }
  smooth();
}

void draw () {
  for (Circ c1 : circ) {
    c1.update();
  }
}

class Circ {
  float x;
  float y;
  float speed;

  Circ() {
    x = random(100);
    y = random(100);
    speed = 2;
  }

  void update () {
    speed();
    shape();
  }
  void speed () {
    y = y + speed;
  }

  void shape() {
    pushMatrix();
    ellipse(x, x, x, x);
    popMatrix();
  }
}

