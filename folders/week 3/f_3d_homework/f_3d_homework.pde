void setup () {
  size (800, 600, P3D); 
  //P3D = Render in 3D
}

void draw () {
  background (0);
rect3D (width*0.25, height/2, 200, 0.02);
rect3D (width*0.75, height/2, 200, 0.02);
}

void rect3D (float x, float y, float s1, float speed) {
  pushMatrix();
  translate (x, y);
  rotateY (frameCount * speed);
  float s = abs(sin(frameCount * 0.01));
  scale (s, s);
  translate (-s1/2, -s1/2);
  rect (0, 0, s1, s1);
  popMatrix();
}

// pushMatrix contains object
// homework, duplicate to 150
