boolean drawT = false;

void setup () {
  size (100, 100);
  noStroke();
}

void keyPressed() {
if ((key == 'T') || (key == 't')) {
  drawT = true;
}
}

void draw () {
  background (104);
  if (drawT == true) {
  rect (20, 20, 60, 20);
  rect (39, 40, 22, 45);
  println (drawT);
}
}

void keyReleased () {
  drawT = false;
}


