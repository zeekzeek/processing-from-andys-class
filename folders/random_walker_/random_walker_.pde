Walker w;

void setup() {
  background(255);
  size (800,600);
  w = new Walker();
}

void draw() {
  w.step();
  w.render();
}



