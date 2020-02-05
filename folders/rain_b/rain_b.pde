ArrayList <Rain> rain;
float r;

void setup () {
  size (800, 600, P3D);
  rain = new ArrayList();
  for (int i=0; i < 100; i++) {
    rain.add(new Rain());
  }
  smooth();
}

void draw () {
  background(0);
  for (Rain r1 : rain) {
    r1.update();
  }
}

class Rain {

  float x;
  float y;
  float speed;
  float y1;

  Rain() {
    x = random(800);
    speed = random(15,20);
    y = 0;
  }

  void update() {
    speed();
    shape();
    barrier();
  }

  void speed () {
    y = y+ sin(speed) * 50;
  }

  void barrier() {
    if (y > 600) {
      y = 0;
      x = random(800);
      //send to code;
    }
  }

  void shape() {
    pushMatrix();
    stroke(255);
    line (x, y, x, y+20);
    popMatrix();
  }
}

