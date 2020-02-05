ArrayList <Line> line;

void setup () {
  
  size (800, 600, P3D);
  line = new ArrayList();
  for (int i=0; i < 10; i++) {
    line.add(new Line());
  }
  smooth();
}

void draw () {
   background(0);
  for (Line l1 : line) {
    l1.update();
  }
}

class Line {
  float x, y;
  float _x, _y;
  float z;
  float speed;
  float a;

  Line() {
    x = _x;
    y = _y;
    z = random(600);
    speed = 1;
    a = random(600);
  }

  void update () {
    barrier();
    draw();
    move();
    println(z);
  } 

void barrier () {
 if (z > 600) {
speed = -2;
 }
 if (z < 0) {
  speed = 2; 
 }
}
  void move () {
    z = z += speed;
  }

  void draw() {
    
    pushMatrix();
    stroke(255);
    line (x, z, z, a);
    popMatrix();
  }
}

