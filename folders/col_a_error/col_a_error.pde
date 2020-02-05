void setup () {
  size (800, 600);
}

int col = 0;
int r;
int g;
int b;

void draw () {
  background (col);
  println("mouse\t", mouseX, mouseY, mousePressed);
  println("key\t\t", char(key), keyCode, keyPressed);

}

void keyPressed() {
  col = int(random(255));
}

void keyReleased() {
  
}

void mousePressed() {
  
}

void mouseReleased() {
  col = 255;
}

void mouseDragged() {
  float r=mouseX;
  float g=mouseY;
  background(r, g, 0);
}
//mouse x = red
//mouse y = green
//only if mouse is dragged
//released = 255

//ascii
//fast 

