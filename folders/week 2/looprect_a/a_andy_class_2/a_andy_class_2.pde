int x; //float and int [java very picky]

void setup () {
  size (400, 400);
}

void draw () {
  background (200);
  x = x+2;
  rect (x, height/2, 100, 100);
  if (x>width) {
    x = -1;
  }
}

// processing book

