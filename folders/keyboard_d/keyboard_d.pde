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
}

void keyReleased() {
  
}

void mousePressed() {
  
}

void mouseReleased() {
}

void mouseDragged() {
}
//mouse x = red
//mouse y = green
//only if mouse is dragged
//released = 255

//ascii
//fast 

