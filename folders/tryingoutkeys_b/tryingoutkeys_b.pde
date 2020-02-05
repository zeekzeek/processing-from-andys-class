float x;
float y;
float a;
float s;
float speed = 2;
float s1;

void setup () {
  size (800, 600, P3D);
}

void draw () {
  background (0);
  float s1 = 200;
  
  pushMatrix();
  translate (400, 400);
  rotateY (x * 0.1);
  rotateX (y * 0.1);
  translate (-s1/2, -s1/2);
  rect (0, 0, s1, s1);
  popMatrix ();
  
  translate (100, 100);
  pushMatrix();
  translate (width/5, height/5);
  rotateY (a + 1);
  rotateX (s * 0.1);
  translate (-s1/2, -s1/2);
  rect (0, 0, s1, s1);
  popMatrix();
  
  println(x);
}

void keyPressed() {
  if (keyCode == UP) {
    x = x + speed;
  }
  if (keyCode == DOWN) {
    y = y + speed;
  }
  if (key == 'a' | key == 'A') {
    a = a+2 ;
  }
  if (key == 's' | key == 'S') {
    s = s + speed;
  }
  if (keyCode == LEFT) {
    s1 = s1 + speed;
  }
}
