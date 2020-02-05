float a, b;

void setup () {
  size (800, 600, P3D); 
  //P3D = Render in 3D
}

void draw () {
  background (0);
  for (a = 100; a < 740; a = a+50) {
    for (b = 100; b < 500; b = b+50) {
      rect3D(a, b, 50, 0.04);
    }
  }
}

void rect3D (float x, float y, float s1, float speed) {
  pushMatrix();
  translate (x, y);
  rotateY (frameCount * speed);
  translate (-s1/2, -s1/2);
  rect (0, 0, s1, s1);
  popMatrix();
}

