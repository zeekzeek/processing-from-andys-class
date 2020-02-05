ArrayList <Shape> shape;

void setup () {
  size (800, 600);
  shape = new ArrayList();
  for (int i=0; i<20; i++) {
    shape.add(new Shape());
  }
  smooth();
  strokeWeight(5);
}

void draw () {
  background(0);
  for (Shape s : shape) {
    s.update();
  }
}

class Shape {
  float x;
  float y;
  float speed;
  float a;
  float b;

  Shape () {
    x = random(800);
    y = random(600);
    speed = 1;
    a = random(100);
    b = random(100);
  }
  void update () {
    grid();
    grow();
  }

  void grow() {
    y += (0 - a)  * 0.005;
      if (abs(y) < 1) {
          y = random(600);
      }
      x = x + speed;
      if (x > 800) {
       x = random(800); 
      }
      
    println(x);
  }


  void grid() {
    //translate (width/2, 0);
    stroke(255);
    line (x, y, x, a);
    line (x, y, x, y);
    line (y, x, x, y);
  }
}

