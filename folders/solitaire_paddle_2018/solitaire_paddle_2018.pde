ArrayList <Hair> hair;

void setup () {
  background(0);
  size (800, 600, P3D);
  hair = new ArrayList();
  for (int i=0; i < 200; i++) {
    hair.add(new Hair());
  }
  smooth();
}

void draw () {
  for (Hair h1 : hair) {
    h1.update();
  }
}

class Hair {
  float x; 
  float y; 
  float s1; 
  float speed;
  float p;
  float c = random (100,125);
  float v = random (100,125);
  float b = random (200, 255);

  Hair() {
    x= random(100);
    y = random(1200);
    s1 = 10;
    speed = random(0.01);
    p = random (2400);
  }

  void update() {
    hair();
    rotate();
  }

  void rotate() {
    rotateY (frameCount * speed/100);
  }

  void hair () {
    stroke(c,v,b);
    pushMatrix();
    translate (y, -1000);
    translate (width/1.2, p);
    line (0, 0, 100, 2);
    line (0, 0, 0, 100);
    line (100,100,100,0);
    line (0, 100, 100, 100);
    popMatrix();
    println(y);
  }
}

