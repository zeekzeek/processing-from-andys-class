float x;
float y;
float a;
float b;

void setup () {
  size (800, 600, P3D);
}

void draw () {
  background (0);
  float s1 = 200;
  pushMatrix();
  translate (width/3, height/3);
  rotateY (x * 0.1);
  rotateX (y * 0.1);
  translate (-s1/2, -s1/2);
  rect (0, 0, s1, s1);
  popMatrix ();
  translate (100, 100);
  pushMatrix();
  translate (width/5, height/5);
  rotateY (a * 0.2);
  rotateX (b * 0.2);
  translate (-s1/2, -s1/2);
  rect (2, 2, s1, s1);
  popMatrix();
}

void keyPressed() {
  if (keyCode == UP) {
    x = x + 2;
  }
  if (keyCode == DOWN) {
    y = y + 2;
  }
  if (keyCode == 'a') {
    a = a +2 ;
  }
  if (keyCode == 'b') {
    b = b +2;
  }
}
