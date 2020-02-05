ArrayList <Circ> circ;

void setup () {
  size (800, 600, P3D);
  circ = new ArrayList();
  for (int i=0; i < 50; i++) {
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
    speed = 0.2;
    p = random (800);
  }

  void update () {
    speed();
    shape();
    barrier();
  }

  void speed () {
    y = y + speed;
    x = x + 0.1;
  }

  void pulse () {
    
  }
  
  void barrier () {
    if (y > 600) {
      speed = -2;
      x = random (800);
    }
    if ( y<0) {
      speed = 2;
      x = random(800);
    }
    if (x > 800) {
      x = random(800);
    }
    if (x < 0) {
    x = random (800);
  }
  }

  void shape() {
    pushMatrix();
    stroke(255);
    line(x, height/2, p, x);
    line(width/2, x, y, p);
    line(width/2, height/2, x, p);
    popMatrix();
    println(y);
  }
}

