// square assigned to different keypresses
// when key is pressed, certain parameters are changed

void setup () {
  size (800, 600);
}

int x = 200;
int y = 200;
void draw () {
  background (0);
  rect (100, 100, x, y);
  if (keyPressed) {
    if (key == 'b' || key == 'B') {
      x = int(random(0, 200));
    } else {
      x = 0;
    }
  }
}

