Walker w;
int counter;

void setup() {
  background(255);
  size (800,600);
  w = new Walker();
  strokeWeight(10);
}

void draw() {
  counter++;
  if (counter > 100) {
   counter =0;
  background(255); 
  }
  w.update();
}



