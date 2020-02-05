void setup () {
  size (600, 600);
  smooth();
}

void draw () {
  background(0);
  drawEllipse(200, 200, 30);
  drawEllipse(400, 200, 50);
  drawEllipse(200, 400, 255);
}

void drawEllipse(float x, float y, float r) {
  fill (255, 0, 0);
  ellipse(x, y, 20, 20);
}

