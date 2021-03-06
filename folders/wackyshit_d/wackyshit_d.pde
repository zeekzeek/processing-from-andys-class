float x;
float y;
float a;
float s;
float q;
float w;
float speed = 1;
float s1;
float c,d;

void setup () {
  size (800, 600, P3D);
  noStroke();
  smooth();
}

void draw () {
  background (0);
  float s1 = 200;
  
  pushMatrix();
  fill(255, 255, 0);
  translate (400, 400);
  rotateY (x = x + 0.01);
  rotateX (y = y + 0.1);
  translate (-s1/4, -s1/4);
  rect (0, 0, s1, s1);
  popMatrix ();
  
  pushMatrix();
  fill(255,0,255);
  translate (250, 250);
  rotateY (sin(a = a + 0.01));
  rotateX (sin(s = s + 0.01));
  translate (-s1/2, -s1/2);
  rect (0, 0, s1, s1);
  popMatrix();
  
  pushMatrix();
  fill(244);
  translate (q, w);
  rotateY (q = q + 0.2);
  rotateX (w = w + 0.2);
  translate (-s1/3, -s1/3);
  rect (0, 0, s1, s1);
  if (q > 600) {
    q = 0;
  }
  if (q < 0) {
    q = 0;
  }
  if (w > 800) {
    w = 0;
  }
  if (w < 0) {
    w = 0;
  }
  popMatrix();
  
  beginShape ();
  fill (0, 255, 255);
  vertex (a,s);
  vertex (q,w);
  vertex (x,y);
  vertex (a, y);
  vertex (s, x);
  translate (150, 0);
  endShape ();
  
  beginShape();
  fill (255,0,0);
  for (c = 100; c < 600; c = c+50){
    for (d = 100; d < 500l; d = d + 50) {
  ellipse (c, w, a, s);
  ellipse (a, d, x, y);
    }
  }
  endShape ();
  
  println(x);
}

void keyPressed() {
  if (keyCode == UP) {
    x = x + 0.4;
  }
  if (keyCode == DOWN) {
    y = y + 0.4;
  }
  if (key == 'a' | key == 'A') {
    a = a + 1 ;
  }
  if (key == 's' | key == 'S') {
    s = s + 1;
  }
    if (key == 'q' | key == 'Q') {
    q = q - 2 ;
  }
  if (key == 'w' | key == 'W') {
    w = w - 4;
  }
  if (keyCode == LEFT) {
    s1 = s1 + speed;
  }
}
