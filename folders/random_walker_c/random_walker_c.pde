Walker w;

void setup() {
  background(255);
  size (800,600);
  w = new Walker();
  //strokeWeight(10);
}

void draw() {
  w.update();
}



