float a=500;
float t;
float counter;

void setup() {
  size(800, 600);
}

void draw() {
  counter++;
  if (counter > 400) {
   counter = 1; 
  }
  background(255);
  t = 0.001;
  a = a + sin((counter*10)*0.0000005);
  drawCircle(width/2, height/2, a*t*counter*2);
  println(counter);

}

void drawCircle(float x, float y, float d) {
  noFill();
  ellipse(x, y, d, d); 
  d++;
  if (d > 15) {
    drawCircle (x+counter, y, d/2);
    drawCircle (x-counter, y, d/2);
    drawCircle (x, y+ d/2, d/2);
    drawCircle (x, y- d/2, d/2);
  }
}

