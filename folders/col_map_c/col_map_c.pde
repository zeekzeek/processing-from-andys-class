void setup () {
  size (800, 600);
}

 int r = 0;
 int g = 0;
 int b = 0;

void draw () {
  background (r, g, b);
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
  r=255;
  g=255;
  b=255; 
}

void mouseDragged() {
  r= int(map(mouseX, 0, width, 0, 255));
  g= int(map(mouseY, 0, height, 0, 255));
  b=0;
}
//mouse x = red
//mouse y = green
//only if mouse is dragged
//released = 255

//ascii
//fast 

