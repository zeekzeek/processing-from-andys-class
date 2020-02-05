float a=500;
float t;

void setup() {
  size(800, 600);
}

void draw() {
  background(255);
  t = random(-0.001,0.001);
  a = a + sin((frameCount*10)*0.0002);
  drawCircle(mouseX, mouseY, a*t*100);
  println(a);

}

void drawCircle(float x, float y, float d) {
  noFill();
  ellipse(x, y, d, d); 
  d++;
  if (d > 20) {
    drawCircle (x+d/2, y, d/2);
    drawCircle (x-d/2, y, d/2);
    drawCircle (x, y+ d/2, d/2);
    drawCircle (x, y- d/2, d/2);
  }
}

